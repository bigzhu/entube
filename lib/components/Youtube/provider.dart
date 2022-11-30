import 'package:flutter/material.dart';
import 'dart:io';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leancloud_storage/leancloud.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'dart:async';

import '../../utils/compute.dart';

import 'package:AcquireEnglish/components/UserArticles/index.dart';
import 'package:AcquireEnglish/components/Error/index.dart';
import 'package:AcquireEnglish/components/ArticleItems/index.dart';
import 'package:AcquireEnglish/components/Article/index.dart';
import './service.dart';

// 监听分享
final receiveSharingIntentProvider = Provider<StreamSubscription?>((ref) {
  //if (!Platform.isAndroid) return null;
  // For sharing or opening urls/text coming from outside the app while the app is closed
  ReceiveSharingIntent.getInitialText().then((String? value) {
    if (value != null && value.isNotEmpty) {
      ref.read(youtubeSharedStateProvider.notifier).state = value;
    }
  });

  // For sharing or opening urls/text coming from outside the app while the app is in the memory

  return ReceiveSharingIntent.getTextStream().listen((String value) {
    if (value.isNotEmpty) {
      ref.read(youtubeSharedStateProvider.notifier).state = value;
    }
  }, onError: (err) {
    debugPrint("getLinkStream error: $err");
  });
});

final newYouTubeFutureProvider =
    FutureProvider.autoDispose<UserArticleModel?>((ref) async {
  UserArticleModel userArticle;
  String? uri = ref.watch(youtubeSharedStateProvider);
  if (uri == null || uri.isEmpty) return null;
  //need check if in the article list
  List<UserArticleModel> userArticles =
      await ref.read(userArticlesStateNotifierProvider);
  final index =
      userArticles.indexWhere((element) => element.article.youtube == uri);
  //已经存在
  if (index != -1) {
    //滚动到那一条记录
    ref.watch(articleItemsScrollControllerProvider).scrollTo(
        index: index,
        duration: const Duration(milliseconds: 1400),
        curve: Curves.linear);
    return null;
  }
  ref.read(userArticlesStateNotifierProvider.notifier).addLoading(uri);
  //scroll to article items top
  ref.watch(articleItemsScrollControllerProvider).scrollTo(
      index: 0,
      duration: const Duration(milliseconds: 1400),
      curve: Curves.linear);
  try {
    ArticleModel article = await YouTubeService().addNew(uri);
    userArticle = await UserArticleService().bind(article);
  } on LCException catch (e) {
    ref.read(userArticlesStateNotifierProvider.notifier).removeLoading(uri);
    ref.read(errorMeesageStateProvider.notifier).state = e.message;
    rethrow;
  } finally {}
  ref.keepAlive();
  ref
      .read(userArticlesStateNotifierProvider.notifier)
      .replaceLoading(userArticle);
  return userArticle;
});

// 存储分享过来的 youtube url
final youtubeSharedStateProvider = StateProvider<String?>((ref) {
  return null;
});

final youtubePlayerControllerStateProvider =
    StateProvider<YoutubePlayerController?>((ref) {
  return null;
});

final seekStateProvider = StateProvider<double>((ref) {
  return 0;
});

final listenSeekProvider = Provider((ref) {
  YoutubePlayerController? youtubePlayerController =
      ref.watch(youtubePlayerControllerStateProvider);

  ref.listen<double>(seekStateProvider, (double? previous, double next) {
    debugPrint('listenSeekProvider work to $next');
    if (youtubePlayerController != null) {
      youtubePlayerController.seekTo(seconds: next, allowSeekAhead: true);
    }
  });
  return;
});

final playingSentencesIndexStateProvider =
    StateProvider.family<List<int>, String>((ref, articleId) {
  return <int>[];
});

// 算出哪些句子需要高亮, 返回句子的 index 列表
List<int> findCurrentPlaying(
    List<SentenceModel> sentences, int currentSeconds) {
  List<int> playingSentencesIndex = <int>[];
  for (int i = 0; i < sentences.length; i++) {
    if (sentences[i].seekTo == '') {
      playingSentencesIndex.add(i);
      continue;
    }
    int starTime = toDuration(sentences[i].seekTo).inSeconds;
    if (starTime <= currentSeconds) {
      playingSentencesIndex = <int>[i];
    }
    if (starTime > currentSeconds) {
      break;
    }
  }
  return playingSentencesIndex;
}
