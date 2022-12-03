import 'package:entube/components/Sentence/index.dart';
import 'package:entube/graphql/g/schema.schema.gql.dart';
import 'package:entube/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import './provider.dart';
import 'g/services.req.gql.dart';

class Article extends HookConsumerWidget {
  const Article(this.articleId, {super.key});
  final String articleId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sentencesReq =
        GSentencesReq((b) => b..vars.id = Guuid(articleId).toBuilder());

    return DataWaiter(
      req: sentencesReq,
      builder: (rsp) {
        final articles = rsp.data?.articles;
        if (articles == null) {
          return const AlertDialog(
              title: Text('No Data'), content: Text("Can't find this article"));
        }
        List<SentenceModel> sentences =
            articles[0].sentences.asList as List<SentenceModel>;
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

    // final article = ref.watch(articleItemsSP.select((value) =>
    //    value.firstWhere((element) => element.id == Guuid(articleId))));
  }
}
