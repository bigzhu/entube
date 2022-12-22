import 'dart:async';

import 'package:entube/components/AcquiringWords/g/services.req.gql.dart';
import 'package:entube/state.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'g/services.data.gql.dart';

class AcquiringWordsResult {
  AcquiringWordsResult();
  bool loading = true;
  List<GraphQLError>? error;
  //Map<String, GAcquiringWordsData_words> map = {};
  List<GAcquiringWordsData_words> words = [];
  Map<String, GAcquiringWordsData_words> mapWords = {};
}

//https://riverpod.dev/docs/concepts/modifiers/auto_dispose#refkeepalive
class AcquiringWordsNotifier extends StateNotifier<AcquiringWordsResult> {
  AcquiringWordsNotifier(this.ref) : super(AcquiringWordsResult()) {
    client = ref.watch(gqlClientP);
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

  AcquiringWordsResult result = AcquiringWordsResult();
  final Ref ref;
  late Box box;
  late Client client;
  fetch({bool force = false}) async {
    if (state.words.isNotEmpty) {
      return;
    }
    final stream = client.request(GAcquiringWordsReq());
    await for (final s in stream) {
      result = AcquiringWordsResult();
      result.loading = s.loading;
      result.error = s.graphqlErrors;
      if (s.data != null) {
        result.words = s.data!.words.toList();
        result.mapWords = toMap(result.words);
      }
      state = result;
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

  setDone(String word, bool isDone) async {
    word = word.toLowerCase();
    int times = 0;
    int i = state.words.indexWhere((element) => element.word == word);
    // 已经设置过, 取 times
    if (i != -1) {
      times = state.words[i].times;
    }
    final newWordObj = await upsert(word, times, isDone);
    if (i != -1) {
      state.words[i] = newWordObj;
    } else {
      state.words.add(newWordObj);
    }
    notifierMap();
  }

  notifierMap() {
    result = AcquiringWordsResult();
    result.loading = false;
    result.words = [...state.words];
    result.mapWords = toMap(result.words);
    state = result;
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
    GupsertAcquiringWordsData_insert_words_one? result;
    await for (final value in stream) {
      result = value.data?.insert_words_one;
      if (result != null) break;
      if (value.hasErrors) {
        debugPrint("${value.graphqlErrors}");
        debugPrint("${value.linkException}");
        break;
      }
    }

    final json = result?.toJson();
    return GAcquiringWordsData_words.fromJson(json!)!;
  }
}

final acquiringWordsSNP = StateNotifierProvider.autoDispose<
    AcquiringWordsNotifier, AcquiringWordsResult>((ref) {
  AcquiringWordsNotifier acquiringWordsNotifier = AcquiringWordsNotifier(ref);
  ref.keepAlive();
  return acquiringWordsNotifier;
});
