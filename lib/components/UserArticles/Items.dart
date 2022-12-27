import 'package:entube/components/ArticleItems/index.dart';
import 'package:entube/components/Loading.dart';
import 'package:entube/components/LogoLoading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'state.dart';

class Items extends HookConsumerWidget {
  const Items({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userArticles = ref.watch(userArticlesSNP);
    if (userArticles == null) return const Loading('Loading user articles ...');
    if (userArticles.isEmpty) {
      EasyLoading.showInfo(
          'Please share some video from YouTube or add from Explore');
      return const LogoLoading();
    }
    EasyLoading.dismiss();
    return ScrollablePositionedList.builder(
      itemScrollController: ref.read(articleItemsScrollCP),
      itemCount: userArticles.length,
      itemBuilder: (context, index) {
        final article = GArticlesData_articles.fromJson(
            userArticles[index].article.toJson());
        if (article == null) {}
        return Item(
            article: article!,
            loading: userArticles[index].article.title!.contains('ing') &&
                userArticles[index].article.title!.contains(' ...'));
      },
    );
  }
}
