import 'package:entube/components/ArticleItems/index.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'state.dart';

class Items extends HookConsumerWidget {
  const Items({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userArticles = ref.watch(userArticlesSNP);
    return ScrollablePositionedList.builder(
      itemScrollController: ref.read(articleItemsScrollControllerProvider),
      itemCount: userArticles.length,
      itemBuilder: (context, index) {
        final article = GArticlesData_articles.fromJson(
            userArticles[index].article.toJson());
        if (article == null) {}
        return Item(
            article: article!,
            loading: userArticles[index].article.title == loadingTitle);
      },
    );

/*
    final req = GUserArticlesReq();
    return DataWaiter(
      req: req,
      builder: (rsp) {
        if (rsp.hasErrors) {
          debugPrint('${rsp.linkException}');
        }
        final userArticles = rsp.data?.user_articles.toList();
        if (userArticles == null) {
          return const AlertDialog(
              title: Text('No Data'),
              content: Text(
                  'Please share some video from YouTube or add from Explore'));
        }
        // Add articles to state
        Future(() {
          ref.read(userArticlesSP.notifier).state = userArticles;
        });

        return ScrollablePositionedList.builder(
          itemScrollController: ref.read(articleItemsScrollControllerProvider),
          itemCount: userArticles.length,
          itemBuilder: (context, index) {
            final article = GArticlesData_articles.fromJson(
                userArticles[index].article.toJson());
            if (article == null) {}
            return Item(
                article: article!,
                loading: userArticles[index].article.title == loadingTitle);
          },
        );
      },
    );

*/
  }
}
