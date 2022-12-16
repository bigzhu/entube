import 'package:entube/components/Youtube/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
//import 'package:entube/utils/compute.dart';
//import 'package:entube/components/Youtube/index.dart';
import 'package:entube/themes.dart';
//import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Seek extends HookConsumerWidget {
  const Seek({Key? key, required this.time, required this.isPlaying})
      : super(key: key);
  final String time;
  final bool isPlaying;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isTapping = useState(false);
    double seekTime = double.parse(time);
    MultiTapGestureRecognizer recognizer = MultiTapGestureRecognizer()
      ..longTapDelay = const Duration(milliseconds: 400)
      ..onLongTapDown = (i, detail) async {}
      ..onTap = (i) {
        isTapping.value = true;
        debugPrint('click $seekTime');
        ref.read(seekSP.notifier).state = seekTime;

        Future.delayed(const Duration(milliseconds: 800), () {
          isTapping.value = false;
        });
        //如果当前没有播放, 点击后播放

/*
        YoutubePlayerController? youtubePlayerController =
            ref.watch(youtubePlayerControllerStateProvider);

        if (youtubePlayerController != null &&
            youtubePlayerController.value.playerState != PlayerState.playing) {
          youtubePlayerController.playVideo();
        }
        */
      };
    //TextStyle playTextStyle = bodyTextStyle.copyWith(color: mainColor[700]);
    return Text.rich(TextSpan(
        text: " ▷ ",
        style: isTapping.value || isPlaying
            ? articleTextStyle.merge(playingTextStyle)
            : articleTextStyle,
        //style: seekTextSpanTapStatus[time] || s.highlight ? playTextStyle.copyWith(fontWeight: FontWeight.bold) : playTextStyle,
        recognizer: recognizer));
  }
}
