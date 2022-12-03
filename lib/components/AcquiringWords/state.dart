import 'package:entube/components/AcquiringWords/g/services.req.gql.dart';
import 'package:entube/graphql/g/schema.schema.gql.dart';
import 'package:entube/state.dart';
import 'package:ferry/ferry.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'g/services.data.gql.dart';

//https://riverpod.dev/docs/concepts/modifiers/auto_dispose#refkeepalive
class AcquiringWordsNotifier
    extends StateNotifier<Map<String, GAcquiringWordsData_words>> {
  AcquiringWordsNotifier(this.ref) : super({}) {
    client = ref.watch(gqlClientP(FetchPolicy.CacheAndNetwork));
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
  late Client client;
  fetch({bool force = false}) async {
    final stream = client.request(GAcquiringWordsReq());
    await for (final s in stream) {
      if (s.data != null) {
        final words = s.data!.words.toList();
        state = toMap(words);
      }
    }
  }

  Map<String, GAcquiringWordsData_words> toMap(
      List<GAcquiringWordsData_words> words) {
    Map<String, GAcquiringWordsData_words> map = {};
    for (var e in words) {
      map[e.word.toLowerCase()] = e;
    }
    return map;
  }

  add(String word) async {
    word = word.toLowerCase();
    int times = 0;
    GAcquiringWordsData_words? wordExist = state[word];
    // 已经设置过, 取 times 并删除
    if (wordExist != null) {
      times = wordExist.times;
    }
    GAcquiringWordsData_words wordObj = await upsert(word, times, false);
    state[word] = wordObj;
    state = {...state};
  }

  remove(String word) {
    word = word.toLowerCase();
    GAcquiringWordsData_words? wordExist = state[word];
    if (wordExist != null) {
      int times = wordExist.times;
      upsert(word, times, true);
      state.remove(word);
    }
  }

  Future<GAcquiringWordsData_words> upsert(
      String word, int times, bool isDone) async {
    // https://github.com/hasura/graphql-engine/issues/1749
    // 无法在 upsert 中使用 _inc
    final req = GupsertAcquiringWordsReq(
      (b) => b
        ..vars.word = word
        ..vars.times = times + 1
        ..vars.is_done = isDone,
    );
    final stream = client.request(req);
    int newTimes = 0;
    await for (final s in stream) {
      if (s.hasErrors) {
        throw s.graphqlErrors!;
      }
      //newTimes = s.data!.insert_words_one!.times;
    }
    GAcquiringWordsData_words wordObj = GAcquiringWordsData_words(
      (b) => b
        ..id = GuuidBuilder()
        ..word = word
        ..times = newTimes
        ..is_done = isDone,
    );
    return wordObj;
  }
}

final acquiringWordsSNP = StateNotifierProvider.autoDispose<
    AcquiringWordsNotifier, Map<String, GAcquiringWordsData_words>>((ref) {
  AcquiringWordsNotifier acquiringWordsNotifier = AcquiringWordsNotifier(ref);
  ref.keepAlive();
  return acquiringWordsNotifier;
});
