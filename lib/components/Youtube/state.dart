import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

final youtubePlayerControllerSP =
    StateProvider<YoutubePlayerController?>((ref) {
  return null;
});

final seekSP = StateProvider<double>((ref) {
  return 0;
});
final listenSeekProvider = Provider((ref) {
  YoutubePlayerController? youtubePlayerController =
      ref.watch(youtubePlayerControllerSP);
  ref.listen<double>(seekSP, (double? previous, double next) {
    debugPrint('listenSeekProvider work to $next');
    if (youtubePlayerController != null) {
      youtubePlayerController.seekTo(seconds: next, allowSeekAhead: true);
    }
  });
  return;
});
