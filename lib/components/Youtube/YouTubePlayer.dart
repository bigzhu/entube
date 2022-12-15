import 'package:collection/collection.dart';
import 'package:entube/components/Sentence/index.dart';
/*
import 'package:entube/components/AcquiringWords/index.dart';
import 'package:entube/components/UserArticles/index.dart';
import 'package:entube/components/Error/index.dart';
import 'package:entube/components/ArticleItems/index.dart';
import 'package:entube/graphql/g/schema.schema.gql.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import './state.dart';

class YoutubePlayer extends HookConsumerWidget {
  const YoutubePlayer(this.articleId, {super.key});
  final String articleId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final article = ref.watch(articleItemsSP.select((value) =>
        value.firstWhere((element) => element.id == Guuid(articleId))));

    String initialVideoId =
        YoutubePlayerController.convertUrlToId(article.url) ?? '';

    final _controller = YoutubePlayerController(
      params: const YoutubePlayerParams(
        enableCaption: false,
        //startAt: Duration(seconds: userArticle.playAt ?? 0),
        //startAt: Duration(seconds: 0),
        showControls: true,
        showFullscreenButton: true,
      ),
    );
    _controller.onInit = () {
      _controller.cueVideoById(
          videoId: initialVideoId,
          //startSeconds: userArticle.playAt?.toDouble());
          startSeconds: 0);
    };

    _controller.listen((event) {
      //必须要把对Stream的监听放在 listen 里才能有用
      _controller.getCurrentPositionStream().listen((Duration currentTime) {
        int seconds = currentTime.inSeconds;
        //开始播放有那么一下会是 0, 会把 文章又滚回去
        if (seconds != 0) {
          //userArticle.playAt = seconds;
          //definePlaydingSentence();
        }
      });
    });

    Future(() {
      ref.read(youtubePlayerControllerSP.notifier).state = _controller;
    });

    return YoutubePlayerIFrame(
      controller: _controller,
      aspectRatio: 16 / 9,
    );
  }
}
*/

import 'package:entube/components/UserArticles/g/services.data.gql.dart';
import 'package:entube/utils/compute.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:entube/components/AcquiringWords/index.dart';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import './state.dart';

import 'package:entube/components/UserArticles/index.dart';
import 'package:entube/components/Error/index.dart';
import 'package:entube/components/Article/index.dart';

class YoutubePlayer extends StatefulHookConsumerWidget {
  const YoutubePlayer(this.articleId, {super.key});
  final String articleId;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _YouTubePlayerState();
}

class _YouTubePlayerState extends ConsumerState<YoutubePlayer>
    with WidgetsBindingObserver {
  late String articleId;
  late GUserArticlesData_user_articles userArticle;
  late YoutubePlayerController _controller;
  List<int> playingSentencesIndex = [];
  List<SentenceModel>? sentences;
  // is paused by suspending
  bool isSuspendingPaused = false;
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
          _controller.playVideo();
          isSuspendingPaused = false;
        } else {
          _controller.pauseVideo();
        }
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      //case AppLifecycleState.suspending:
      case AppLifecycleState.detached:
        if (_controller.value.playerState == PlayerState.playing) {
          _controller.pauseVideo();
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
      ref.watch(sentencesScrollControllerProvider).scrollTo(
          //alignment: .1,
          alignment: 0,
          index: playingSentencesIndex[0],
          duration: const Duration(milliseconds: 800),
          curve: Curves.linear);
    }
  }

  initYouTubeControler() {
    String initialVideoId =
        YoutubePlayerController.convertUrlToId(userArticle.article.url) ?? '';

    final controller = YoutubePlayerController(
      params: const YoutubePlayerParams(
        enableCaption: false,
        //startAt: Duration(seconds: userArticle.play_at ?? 0),
        showControls: true,
        showFullscreenButton: true,
      ),
    );
    controller.onInit = () {
      controller.cueVideoById(
          videoId: initialVideoId,
          startSeconds: userArticle.play_at?.toDouble());
    };

    controller.listen((event) {
      //必须要把对Stream的监听放在 listen 里才能有用
      controller.getCurrentPositionStream().listen((Duration currentTime) {
        int seconds = currentTime.inSeconds;
        //开始播放有那么一下会是 0, 会把 文章又滚回去
        if (seconds != 0) {
          userArticle.play_at = seconds;
          definePlaydingSentence();
        }
      });
    });

    Future(() {
      ref.read(youtubePlayerControllerSP.notifier).state = controller;
    });
  }

  findUserArticle() {
    final userArticleFind = ref.read(userArticlesSP.select((values) {
      return values
          .firstWhereOrNull((value) => value.article.id.value == articleId);
    }));

    if (userArticleFind == null) {
      String errorInfo =
          "can't found correct user article user article id: $articleId";
      ref.read(errorMeesageSP.notifier).state = errorInfo;
      throw errorInfo;
    }
    userArticle = userArticleFind;
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build NewYouTubePlayer");
    //make sure PlayAt not null
    debugPrint("userArticle.playAt=${userArticle.play_at}");
    //获取 sentences
    ArticleModel? article = ref.watch(articleStateNotifierProvider(articleId));
    if (article != null) {
      sentences = article.sentences;
      //延迟下运行, 确保 article 渲染完毕
      Future.delayed(Duration.zero, () {
        definePlaydingSentence();
      });
    }

    Widget gestureDetector = GestureDetector(
        onVerticalDragUpdate: (details) {
          if (details.primaryDelta! > 3.0) {
            ref
                .read(acquiringWordsStateNotifierProvider.notifier)
                .saveToLocal();
            Navigator.popUntil(context, ModalRoute.withName('/'));
            //Navigator.of(context).pop();
          }
        },
        child: YoutubePlayerIFrame(
          controller: ref.watch(youtubePlayerControllerStateProvider),
          aspectRatio: 16 / 9,
        ));
    ref.watch(listenSeekProvider);
    return Hero(
      tag: "youtube_thumbnail_$articleId",
      child: gestureDetector,
    );
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
    try {
      ref
          .watch(userArticlesStateNotifierProvider.notifier)
          .updateUserAritcle(userArticle);
      userArticle.save();
    } catch (e) {
      ref.read(errorMeesageSP.notifier).state = "$e";
    } finally {}
  }
}
