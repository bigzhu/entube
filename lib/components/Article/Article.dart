import 'package:entube/components/Sentence/index.dart';
import 'package:entube/components_old/Article/ArticleLoading.dart';
import 'package:entube/graphql/g/schema.schema.gql.dart';
import 'package:entube/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

//import './provider.dart';
import 'g/services.req.gql.dart';
import 'state.dart';

class Article extends HookConsumerWidget {
  const Article(this.articleId, {super.key});
  final String articleId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ItemPositionsListener itemPositionsListener =
        ItemPositionsListener.create();
    listener() {
      int showedIndex = itemPositionsListener.itemPositions.value
          .toList()[itemPositionsListener.itemPositions.value.length - 1]
          .index;
      ref.read(indexSP.notifier).state = showedIndex;
    }

    useEffect(() {
      //监听是否已经显示到最后一个句子
      itemPositionsListener.itemPositions.addListener(listener);
      return () => itemPositionsListener.itemPositions.removeListener(listener);
    }, []);

    final sentencesReq =
        GSentencesReq((b) => b..vars.id = Guuid(articleId).toBuilder());
    return DataWaiter(
      req: sentencesReq,
      loading: const ArticleLoading(),
      builder: (rsp) {
        final articles = rsp.data?.articles;
        if (articles == null) {
          return const AlertDialog(
              title: Text('No Data'), content: Text("Can't find this article"));
        }
        List<SentenceModel> sentences = articles[0].sentences.asList.map((e) {
          return SentenceModel.fromJson(Map<String, dynamic>.from(e));
        }).toList();
        // 保存句子
        Future(() {
          ref.read(sentencesSP.notifier).state = sentences;
        });

        return Container(
            color: Colors.blueGrey[50],
            child: Padding(
                padding: const EdgeInsets.only(left: 4, right: 4),
                child: ScrollablePositionedList.builder(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.5),
                  //itemScrollController: ref.read(sentencesScrollControllerProvider),
                  itemCount: sentences.length,
                  itemBuilder: (context, index) {
                    return Sentence(
                      sentence: sentences[index],
                      index: index,
                      articleId: articleId,
                    );
                  },
                  itemScrollController: ref.watch(scrollControllerP),
                  itemPositionsListener: itemPositionsListener,
                )));
      },
    );
  }
}
