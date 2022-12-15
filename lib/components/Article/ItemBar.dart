// ignore_for_file: library_prefixes

import 'package:entube/components/ArticleItems/index.dart';
import 'package:flutter/material.dart';
import 'package:entube/components/ArticleItems/index.dart' as ArticleItems;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import 'state.dart';

//import 'provider.dart';

class ItemBar extends HookConsumerWidget {
  const ItemBar({Key? key, required this.article}) : super(key: key);

  final GArticlesData_articles article;
  Future<void> launchUniversalLinkIos(Uri url) async {
    final bool nativeAppLaunchSucceeded = await launchUrl(
      url,
      mode: LaunchMode.externalNonBrowserApplication,
    );
    if (!nativeAppLaunchSucceeded) {
      await launchUrl(
        url,
        mode: LaunchMode.inAppWebView,
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isBottom = ref.watch(isBottomP);

    return BottomAppBar(
        color: Theme.of(context).primaryColorDark,
        shape: isBottom ? const CircularNotchedRectangle() : null,
        child: Hero(
            tag: "youtube_title_${article.id}",
            child: Material(
                //这里必须用 ,不然会报错
                color: Colors
                    .transparent, //透明色, 以利用父组件的颜色实现 CircularNotchedRectangle 否则是白色
                child: ArticleItems.ItemBar(
                  title: article.title,
                  avatar: article.favicon,
                  //onTap: () => launch(article.youtube),
                  onTap: () => launchUniversalLinkIos(Uri.parse(article.url)),
                ))));
  }
}
