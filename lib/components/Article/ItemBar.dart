// ignore_for_file: library_prefixes

import 'package:entube/components/ArticleItems/ItemAvatar.dart';
import 'package:entube/components/ArticleItems/index.dart';
import 'package:flutter/material.dart';
import 'package:entube/components/ArticleItems/index.dart' as ArticleItems;
import 'package:go_router/go_router.dart';
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
          child: ListTile(
            dense: false,
            leading: Row(mainAxisSize: MainAxisSize.min, children: [
              BackButton(
                  color: Colors.white,
                  onPressed: () {
                    if (context.canPop()) context.pop();
                  }),
              InkWell(
                onTap: () => launchUniversalLinkIos(Uri.parse(article.url)),
                child: ItemAvatar(avatar: article.favicon),
              )
            ]),
            title: InkWell(
                onTap: () => launchUniversalLinkIos(Uri.parse(article.url)),
                child: Text(article.title ?? '',
                    style: const TextStyle(color: Colors.white))),
          ),
        ),
      ),
    );
  }
}
