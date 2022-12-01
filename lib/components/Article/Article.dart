import 'package:entube/components/ArticleItems/index.dart';
import 'package:entube/components/Sentence/index.dart';
import 'package:entube/graphql/g/schema.schema.gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import './ArticleLoading.dart';
import './provider.dart';
import './state.dart';

class Article extends HookConsumerWidget {
  const Article(this.articleId, {super.key});
  final String articleId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sentencesStream = ref.watch(sentencesP(articleId));
    final sentencesRsp = useStream(sentencesStream);
    if (sentencesRsp.hasError) {
      return AlertDialog(
          title: const Text('Error'),
          content: Text(sentencesRsp.error.toString()));
    }
    if (sentencesRsp.data == null) return const ArticleLoading();
    final articles = sentencesRsp.data?.data?.articles;
    if (articles == null) {
      return const AlertDialog(
          title: Text('No Data'), content: Text("Can't find this article"));
    }
    List<SentenceModel> sentences =
        articles[0].sentences.asList as List<SentenceModel>;
    final article = ref.watch(articleItemsSP.select((value) =>
        value.firstWhere((element) => element.id == Guuid(articleId))));

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
  }
}
