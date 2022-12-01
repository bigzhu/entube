
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:entube/components/AcquiringWords/index.dart';
import 'package:entube/components/articleItems/index.dart';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import './provider.dart';

//import 'package:entube/components/UserArticles/index.dart';
import 'package:entube/components/Error/index.dart';
import 'package:entube/components/Article/index.dart';

class NewYouTubePlayer extends StatefulHookConsumerWidget {
  const NewYouTubePlayer({Key? key, required this.article}) : super(key: key);
  final GArticleItemsData_articles article;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NewYouTubePlayerState();
}

class _NewYouTubePlayerState extends ConsumerState<NewYouTubePlayer>
    with WidgetsBindingObserver {
  late GArticleItemsData_articles articleNoSe;
  late String articleId;
  late UserArticleModel userArticle;
  late YoutubePlayerController _controller;
  List<int> playingSentencesIndex = [];
  List<SentenceModel>? sentences;
  // is paused by suspending
  bool isSuspendingPaused = false;
  @override
  void initState() {
    super.initState();
    articleNoSe = widget.article;
    articleId = widget.article.objectId!;
    WidgetsBinding.instance.addObserver(this);
    getUserArticle();
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

  //找到正在播放的句子
  definePlaydingSentence() {
    List<int> tmp = findCurrentPlaying(sentences!, userArticle.playAt!);
    if (tmp.isNotEmpty &&
        (playingSentencesIndex.isEmpty || playingSentencesIndex[0] != tmp[0])) {
      playingSentencesIndex = tmp;
      ref
          .read(playingSentencesIndexStateProvider(articleId).notifier)
          .update((state) => playingSentencesIndex);
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
        YoutubePlayerController.convertUrlToId(articleNoSe.youtube) ?? '';

    final _controller = YoutubePlayerController(
      params: YoutubePlayerParams(
        enableCaption: false,
        startAt: Duration(seconds: userArticle.playAt ?? 0),
        showControls: true,
        showFullscreenButton: true,
      ),
    );
    _controller
      ..onInit = () {
        _controller.cueVideoById(
            videoId: initialVideoId,
            startSeconds: userArticle.playAt?.toDouble());
      };

    _controller.listen((event) {
      //必须要把对Stream的监听放在 listen 里才能有用
      _controller.getCurrentPositionStream().listen((Duration currentTime) {
        int seconds = currentTime.inSeconds;
        //开始播放有那么一下会是 0, 会把 文章又滚回去
        if (seconds != 0) {
          userArticle.playAt = seconds;
          definePlaydingSentence();
        }
      });
    });

    Future.delayed(Duration.zero, () {
      ref.read(youtubePlayerControllerStateProvider.notifier).state =
          _controller;
    });
  }

  getUserArticle() {
    List<UserArticleModel> userArticles =
        ref.read(userArticlesStateNotifierProvider);
    int index = userArticles
        .indexWhere((element) => element.article.objectId == articleId);

    if (index == -1) {
      String errorInfo =
          "can't found correct user article user article id: $articleId";
      ref.read(errorMeesageStateProvider.notifier).state = errorInfo;
      throw errorInfo;
    }
    userArticle = userArticles[index];
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build NewYouTubePlayer");
    //make sure PlayAt not null
    userArticle.playAt ??= 0;
    debugPrint("userArticle.playAt=${userArticle.playAt}");
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
      ref.read(errorMeesageStateProvider.notifier).update((state) => "$e");
    } finally {}
  }
}
