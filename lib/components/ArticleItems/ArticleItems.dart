import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

//import 'package:AcquireEnglish/components/UserArticles/index.dart';
import './ArticleItem.dart';
//import './Loading.dart';
import './state.dart';

class ArticleItems extends HookConsumerWidget {
  const ArticleItems({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articleItems = ref.watch(articleItemsSP);

    return articleItems.when(
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
      data: (items) {
        if (items.data?.articles == null) {
          return const AlertDialog(
              title: Text('No Data'),
              content: Text(
                  'Please share some video from YouTube or add from Explore'));
        }
        final articles = items.data!.articles;

        return ScrollablePositionedList.builder(
          itemScrollController: ref.read(articleItemsScrollControllerProvider),
          itemCount: articles.length,
          itemBuilder: (context, index) {
            return ArticleItem(
                article: articles[index],
                loading: articles[index].title == loadingTitle);
          },
        );
      },
    );
  }
}
