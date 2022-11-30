import 'package:entube/components/Sentence/index.dart';
import 'package:entube/graphql/schema.schema.gql.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import './ArticleLoading.dart';
import './provider.dart';
import './state.dart';

class Article extends HookConsumerWidget {
  const Article(this.articleIdIn, {super.key});
  final String articleIdIn;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Guuid articleId = Guuid(articleIdIn);
    final articles = ref.watch(articleSP(articleId));

    return articles.when(
      loading: () => const ArticleLoading(),
      error: (err, stack) => Text('Error: $err'),
      data: (resp) {
        if (resp.data?.articles == null) {
          return const AlertDialog(
              title: Text('No Data'),
              content: Text(
                  'Please share some video from YouTube or add from Explore'));
        }
        //final sentences = resp.data?.articles[0].sentences.asList;
        List<SentenceModel> sentences =
            resp.data?.articles[0].sentences.asList as List<SentenceModel>;

        //ItemPositionsListener itemPositionsListener = ref
        //    .read(isToArticleBottomStateNotifierProvider(articleId).notifier)
        //    .itemPositionsListener;

        ScrollablePositionedList scrollableSentences =
            ScrollablePositionedList.builder(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.5),
          itemScrollController: ref.read(sentencesScrollControllerProvider),
          itemCount: sentences.length,
          itemBuilder: (context, index) {
            return Sentence(
              sentence: sentences[index],
              index: index,
              articleId: articleId,
            );
          },
          //itemPositionsListener: itemPositionsListener,
        );

        return Container(
            color: Colors.blueGrey[50],
            child: Padding(
                padding: const EdgeInsets.only(left: 4, right: 4),
                child: scrollableSentences));
      },
    );
  }
}
