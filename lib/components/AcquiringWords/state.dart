import 'package:entube/components/AcquiringWords/g/services.req.gql.dart';
import 'package:entube/state.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:built_collection/built_collection.dart';

import 'g/services.data.gql.dart';

final acquiringWordsStreamP = Provider((ref) {
  final articlesReq = GAcquiringWordsReq();
  final client = ref.watch(gqlClientP);
  return client.request(articlesReq);
});

//https://riverpod.dev/docs/concepts/modifiers/auto_dispose#refkeepalive
class AcquiringWordsNotifier
    extends StateNotifier<BuiltList<GAcquiringWordsData_words>> {
  AcquiringWordsNotifier(this.ref)
      : super(BuiltList(<GAcquiringWordsData_words>[])) {
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
        BuiltList<GAcquiringWordsData_words> words = s.data!.words;
        state = words;
        saveToLocal();
      }
    }
  }

  BuiltList<GAcquiringWordsData_words> fromJson() {
    final acquiringWordJSON = box.get('data');
    if (acquiringWordJSON == null) {
      return BuiltList(<GAcquiringWordsData_words>[]);
    }

// json 转回 words
    return (acquiringWordJSON as List).map((e) {
      return GAcquiringWordsData_words.fromJson(e) ??
          GAcquiringWordsData_words();
    }).toBuiltList();
  }

  add(String word) async {
    word = word.toLowerCase();
    int i = state.indexWhere((e) => e.word == word);
    if (i != -1) {
      state[i]['done'] = false; // 某种情况下会没有 done 属性
      state[i].increment('count', 1);
      state[i].save();
      state[i] = clone(state[i]);
      state = [...state];
    } else {
      AcquiringWordModel acquiringWord = await AcquiringWordService().add(word);
      state = [acquiringWord, ...state];
    }
  }

  saveToLocal() {
    box.put('data', state.map((e) => e.toJson()).toList());
  }

  remove(String word) {
    word = word.toLowerCase();
    int i = state.indexWhere((e) => e.word == word);
    if (i != -1) {
      state[i].done = true;
      state[i].save();
      state[i] = clone(state[i]);
      //不要真的移除, 只是打标记
      //state.removeAt(i);
      state = [...state];
    }
  }

  AcquiringWordModel clone(AcquiringWordModel acquiringWord) {
    return LCObject.parseObject(acquiringWord.toString()) as AcquiringWordModel;
  }
}

final acquiringWordsStateNotifierProvider = StateNotifierProvider.autoDispose<
    AcquiringWordsNotifier, List<AcquiringWordModel>>((ref) {
  AcquiringWordsNotifier acquiringWordsNotifier = AcquiringWordsNotifier(ref);
  ref.keepAlive();
  return acquiringWordsNotifier;
});
