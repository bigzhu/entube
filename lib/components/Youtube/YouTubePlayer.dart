import 'dart:async';

import 'package:collection/collection.dart';
import 'package:entube/components/Article/index.dart';
import 'package:entube/components/Sentence/index.dart';
import 'package:entube/components/UserArticles/g/services.data.gql.dart';
import 'package:entube/components/UserArticles/g/services.req.gql.dart';
import 'package:entube/components/UserArticles/index.dart';
import 'package:entube/state.dart';
import 'package:entube/utils/compute.dart';
import 'package:entube/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import './state.dart';

class MyYoutubePlayer extends StatefulHookConsumerWidget {
  const MyYoutubePlayer(this.articleId, {super.key});
  final String articleId;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _YouTubePlayerState();
}

class _YouTubePlayerState extends ConsumerState<MyYoutubePlayer>
    with WidgetsBindingObserver {
  late String articleId;
  late GUserArticlesData_user_articles userArticle;
  late YoutubePlayerController controller;
  List<int> playingSentencesIndex = [];
  List<SentenceModel>? sentences;
  // is paused by suspending
  bool isSuspendingPaused = false;
  //late StreamSubscription streamSubscription;
  bool isListening = false;
  @override
  void initState() {
    super.initState();
    articleId = widget.articleId;
    WidgetsBinding.instance.addObserver(this);
    findUserArticle();
    initYouTubeControler();
  }

  //离开/回来 app 时决定是否暂停
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        if (isSuspendingPaused) {
          controller.play();
          isSuspendingPaused = false;
        } else {
          controller.pause();
        }
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      //case AppLifecycleState.suspending:
      case AppLifecycleState.detached:
        if (controller.value.playerState == PlayerState.playing) {
          controller.pause();
          isSuspendingPaused = true;
        }
        break;
    }
  }

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

  //找到正在播放的句子
  definePlaydingSentence() {
    List<int> tmp = findCurrentPlaying(sentences!, userArticle.play_at);
    if (tmp.isNotEmpty &&
        (playingSentencesIndex.isEmpty || playingSentencesIndex[0] != tmp[0])) {
      playingSentencesIndex = tmp;
      ref.read(playingSentencesIndexSP(articleId).notifier).state =
          playingSentencesIndex;
      // scroll sentences
      debugPrint("scroll to ${playingSentencesIndex[0]}");
      ref.watch(scrollControllerP).scrollTo(
          //alignment: .1,
          alignment: 0,
          index: playingSentencesIndex[0],
          duration: const Duration(milliseconds: 800),
          curve: Curves.linear);
    }
  }

  initYouTubeControler() {
    String initialVideoId =
        YoutubePlayer.convertUrlToId(userArticle.article.url) ?? '';

    controller = YoutubePlayerController(
      initialVideoId: initialVideoId,
      flags: YoutubePlayerFlags(
        enableCaption: false,
        autoPlay: true,
        startAt: userArticle.play_at,
      ),
    );

    Future(() {
      ref.read(youtubePlayerControllerSP.notifier).state = controller;
    });
  }

  findUserArticle() {
    final userArticleFind = ref.read(userArticlesSNP.select((values) {
      return values
          ?.firstWhereOrNull((value) => value.article.id.value == articleId);
    }));

    if (userArticleFind == null) {
      String errorInfo =
          "can't found correct user article user article id: $articleId";
      showError(errorInfo);
      throw errorInfo;
    }
    userArticle = userArticleFind;
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build YouTubePlayer");
    //获取 sentences
    sentences = ref.watch(sentencesSP);
    Future(() {
      definePlaydingSentence();
    });
    ref.watch(listenSeekProvider);

    return Hero(
      tag: "youtube_thumbnail_$articleId",
      child: YoutubePlayer(
        progressIndicatorColor: Theme.of(context).primaryColor,
        //progressColors:
        controller: controller,
        onReady: () {
          controller.addListener(() {
            int seconds = controller.value.position.inSeconds;
            if (seconds != 0) {
              if (seconds == userArticle.play_at) return;
              if (seconds != userArticle.play_at) {
                userArticle = userArticle.rebuild((b) => b..play_at = seconds);
                //updatePlayAt();
              }
              definePlaydingSentence();
            }
          });
        },
      ),
    );
  }

  Future<void> updatePlayAt() async {
    debugPrint("userArticle.play_at: ${userArticle.play_at}");
    // 这里要更新 userArticle.play_at
    final req = GupdatePlayAtReq(
      (b) => b
        ..vars.article_id = userArticle.article.id.toBuilder()
        ..vars.play_at = userArticle.play_at,
    );
    final client = ref.watch(gqlClientP);
    final stream = client.request(req);
    await for (final value in stream) {
      if (value.data?.update_user_articles?.affected_rows == 1) return;
      if (value.hasErrors) {
        showError("${value.graphqlErrors ?? value.linkException}");
        return;
      }
    }
  }

  @override
  void dispose() {
    // 更新阅读位置
    updatePlayAt();
    //取消监听
    //streamSubscription.cancel();
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }
}
