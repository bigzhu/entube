import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leancloud_storage/leancloud.dart';
import 'package:hive_flutter/hive_flutter.dart';

import './model.dart';
import './service.dart';

import 'package:AcquireEnglish/components/Auth/index.dart';

//https://riverpod.dev/docs/concepts/modifiers/auto_dispose#refkeepalive
class AcquiringWordsNotifier extends StateNotifier<List<AcquiringWordModel>> {
  AcquiringWordsNotifier(this.ref) : super([]) {
    fetch();
    //监听登录用户变化, 来决定重取数据
    ref.listen<LCUser?>(userStateNotifierProvider,
        (LCUser? previous, LCUser? next) {
      if (previous != next && next != null) {
        box.clear();
        fetch(force: true);
      }
    });
  }

  final Ref ref;
  late Box box;
  fetch({bool force = false}) async {
    box = await Hive.openBox('acquiringWords');
    if (!force) state = fromJson();
    if (state.isEmpty || force) {
      List<AcquiringWordModel>? acquiringWords =
          await AcquiringWordService().fetchAllAcquiringWords();
      state = acquiringWords ?? [];
      box.put('data', toJsonList());
    }
  }

  List<String> toJsonList() {
    return state.map((e) => e.toString()).toList();
  }

  List<AcquiringWordModel> fromJson() {
    final acquiringWordJSON = box.get('data');
    if (acquiringWordJSON == null) return [];

    return (acquiringWordJSON as List).map((e) {
      return LCObject.parseObject(e) as AcquiringWordModel;
    }).toList();
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
    box.put('data', toJsonList());
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

final acquiringWordsSetProvider = Provider.autoDispose<Set<String>>((ref) {
  List<AcquiringWordModel> acquiringWords =
      ref.watch(acquiringWordsStateNotifierProvider);
  if (acquiringWords.isEmpty) {
    return {};
  }
  return acquiringWords.map((e) => e.word).toSet();
});

final acquiringWordsMapStateProvider =
    StateProvider.autoDispose<Map<String, AcquiringWordModel>>((ref) {
  List<AcquiringWordModel> acquiringWords =
      ref.watch(acquiringWordsStateNotifierProvider);
  if (acquiringWords.isEmpty) {
    return {};
  }
  Map<String, AcquiringWordModel> acquiringWordsMap = {
    for (var item in acquiringWords) item.word: item
  };
  ref.keepAlive();
  return acquiringWordsMap;
});

// 只是为了排重
final duplicateAcquiringWordsProvider =
    Provider.autoDispose<List<AcquiringWordModel>>((ref) {
  List<AcquiringWordModel> acquiringWords =
      ref.watch(acquiringWordsStateNotifierProvider);
  List<AcquiringWordModel> duplicateAcquiringWords = acquiringWords.where((e) {
    return acquiringWords.where((e2) => e2.word == e.word).toList().length > 1;
  }).toList();
  ref.keepAlive();
  return duplicateAcquiringWords;
});

// 只是为了排重
final acquiringWordsProvider =
    Provider.autoDispose<List<AcquiringWordModel>>((ref) {
  List<AcquiringWordModel> acquiringWords =
      ref.watch(acquiringWordsStateNotifierProvider);
  ref.keepAlive();
  return acquiringWords.where((e) => e.done != true).toList();
  //排重
  /*
  return acquiringWords.where((e) {
    int i = acquiringWords.indexWhere((v) => v.word == e.word);
    int lastIndex = acquiringWords.lastIndexWhere((v) => v.word == e.word);
    if (i != lastIndex) {
      acquiringWords[i].delete();
    }
    return i != lastIndex;
  }).toList();
    */
});
