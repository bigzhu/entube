// ignore_for_file: library_prefixes

import 'package:entube/components/ArticleItems/index.dart' as ArticleItems;
import 'package:entube/graphql/g/schema.schema.gql.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'Article.dart';
import 'ItemBar.dart';
import 'BackButton.dart';

class Page extends HookConsumerWidget {
  const Page(this.articleId, {super.key});
  final String articleId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final article = ref.watch(ArticleItems.articleItemsSP.select((value) =>
        value.firstWhere((element) => element.id == Guuid(articleId))));

    return WillPopScope(
        onWillPop: () async {
          //禁止返回按钮
          return false;
        },
        child: Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: const BackBotton(),
            bottomNavigationBar: ItemBar(article: article),
            body: Article(articleId)));
  }
}
