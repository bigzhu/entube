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

    Future.delayed(Duration.zero, () {
      ref.read(youtubePlayerControllerSP.notifier).state = _controller;
    });

    return YoutubePlayerIFrame(
      controller: _controller,
      aspectRatio: 16 / 9,
    );
  }
}
