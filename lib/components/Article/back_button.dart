import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import './Sentence.dart';
import './model.dart';
import './sentence_model.dart';
import './provider.dart';
import './ArticleLoading.dart';

class BackBotton extends HookConsumerWidget {
  const BackBotton({Key? key, required this.articleId}) : super(key: key);
  final String articleId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isToBottom =
        ref.watch(isToArticleBottomStateNotifierProvider(articleId));
    return Visibility(
        visible: isToBottom,
        child: FloatingActionButton(
            child: const Icon(Icons.navigation),
            onPressed: () {
              ref.watch(sentencesScrollControllerProvider).scrollTo(
                  index: 0,
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.linear);
            }));
  }
}
