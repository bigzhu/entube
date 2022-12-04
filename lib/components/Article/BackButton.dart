import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'state.dart';

class BackBotton extends HookConsumerWidget {
  const BackBotton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sentences = ref.watch(sentencesSP);
    final index = ref.watch(indexSP);
    bool isBottom = (sentences.length - 1 == index);

    return Visibility(
        visible: isBottom,
        child: FloatingActionButton(
            child: const Icon(Icons.navigation),
            onPressed: () {
              ref.watch(scrollControllerP).scrollTo(
                  index: 0,
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.linear);
            }));
  }
}
