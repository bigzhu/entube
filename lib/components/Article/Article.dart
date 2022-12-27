import 'package:entube/components/Article/ArticleLoading.dart';
import 'package:entube/components/Loading.dart';
import 'package:entube/components/Sentence/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'state.dart';

class Article extends HookConsumerWidget {
  const Article(this.articleId, {super.key});
  final String articleId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ItemPositionsListener itemPositionsListener =
        ItemPositionsListener.create();
    useEffect(() {
      listener() {
        int showedIndex = itemPositionsListener.itemPositions.value
            .toList()[itemPositionsListener.itemPositions.value.length - 1]
            .index;
        ref.read(indexSP.notifier).state = showedIndex;
      }

      //监听是否已经显示到最后一个句子
      itemPositionsListener.itemPositions.addListener(listener);
      return () => itemPositionsListener.itemPositions.removeListener(listener);
    }, [itemPositionsListener]);

    final article = ref.watch(sentencesSNP(articleId));
    if (article.info == 'main loading') return const ArticleLoading();
    if (article.info != '' && article.loading!) return Loading(article.info!);
    if (article.info != '' && article.loading == false) {
      return AlertDialog(
          title: const Text('Info'), content: Text(article.info!));
    }

    final sentences = article.sentences;
    if (sentences != null) {
      return Container(
          color: Colors.blueGrey[50],
          child: Padding(
              padding: const EdgeInsets.only(left: 4, right: 4),
              child: ScrollablePositionedList.builder(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.5),
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
    }
    return const Loading("sentences is null");
  }
}
