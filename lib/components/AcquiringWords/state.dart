import 'package:entube/components/AcquiringWords/g/services.req.gql.dart';
import 'package:entube/state.dart';
import 'package:ferry/ferry.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'g/services.data.gql.dart';
import 'g/services.var.gql.dart';

// select acquiringWords
final acquiringWordsStreamP = Provider((ref) {
  final articlesReq = GAcquiringWordsReq();
  final client = ref.watch(gqlClientP);
  return client.request(articlesReq);
});

// https://github.com/hasura/graphql-engine/issues/1749
// 无法在 upsert 中使用 _inc
final upsertAcquiringWordsStreamP = Provider.family<
    Stream<
        OperationResponse<GupsertAcquiringWordsData,
            GupsertAcquiringWordsVars>>,
    GAcquiringWordsData_words>((ref, word) {
  final req = GupsertAcquiringWordsReq(
    (b) => b
      ..vars.word = word.word
      ..vars.times = word.times + 1
      ..vars.is_done = word.is_done,
  );
  final client = ref.watch(gqlClientP);
  return client.request(req);
});

//https://riverpod.dev/docs/concepts/modifiers/auto_dispose#refkeepalive
class AcquiringWordsNotifier
    extends StateNotifier<List<GAcquiringWordsData_words>> {
  AcquiringWordsNotifier(this.ref) : super(<GAcquiringWordsData_words>[]) {
    fetch();
    //监听登录用户变化, 来决定重取数据
    /*
    ref.listen<LCUser?>(userStateNotifierProvider,
        (LCUser? previous, LCUser? next) {
      if (previous != next && next != null) {
        box.clear();
        fetch(force: true);
      }
    });
    */
  }

  final Ref ref;
  late Box box;
  fetch({bool force = false}) async {
    box = await Hive.openBox('acquiringWords');
    if (!force) state = fromJson();
    if (state.isEmpty || force) {
      final acquiringWordsStream = ref.watch(acquiringWordsStreamP);
      await for (final s in acquiringWordsStream) {
        if (s.data == null) return;
        final words = s.data!.words.toList();
        state = words;
        saveToLocal();
      }
    }
  }

  List<GAcquiringWordsData_words> fromJson() {
    final acquiringWordJSON = box.get('data');
    if (acquiringWordJSON == null) {
      return <GAcquiringWordsData_words>[];
    }

// json 转回 words
    return (acquiringWordJSON as List).map((e) {
      return GAcquiringWordsData_words.fromJson(e) ??
          GAcquiringWordsData_words();
    }).toList();
  }

  add(String word) async {
    word = word.toLowerCase();
    int i = state.indexWhere((e) => e.word == word);
    int times = 0;
    // 已经设置过, 取值 times 并删除
    if (i != -1) {
      times = state[i].times;
      state.removeAt(i);
    }
    GAcquiringWordsData_words wordObj = await upsert(word, times, false);
    state = [...state, wordObj];
  }

  saveToLocal() {
    box.put('data', state.map((e) => e.toJson()).toList());
  }

  remove(String word) {
    word = word.toLowerCase();
    int i = state.indexWhere((e) => e.word == word);
    if (i != -1) {
      state.removeAt(i);
      int times = state[i].times;
      upsert(word, times, false);
    }
  }

  Future<GAcquiringWordsData_words> upsert(
      String word, int times, bool isDone) async {
    GAcquiringWordsData_words wordObj = GAcquiringWordsData_words(
      (b) => b
        ..word = word
        ..times = times
        ..is_done = isDone,
    );

    final stream = ref.watch(upsertAcquiringWordsStreamP(wordObj));
    await for (final s in stream) {
      wordObj.rebuild((b) => b..times = s.data!.insert_words_one!.times);
    }
    return wordObj;
  }
}

final acquiringWordsSNP = StateNotifierProvider.autoDispose<
    AcquiringWordsNotifier, List<GAcquiringWordsData_words>>((ref) {
  AcquiringWordsNotifier acquiringWordsNotifier = AcquiringWordsNotifier(ref);
  ref.keepAlive();
  return acquiringWordsNotifier;
});
