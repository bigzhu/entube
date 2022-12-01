import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:built_collection/built_collection.dart';

//import 'package:AcquireEnglish/components/UserArticles/index.dart';
import './Item.dart';
//import './Loading.dart';
import './state.dart';
import 'g/services.data.gql.dart';

class Items extends HookConsumerWidget {
  const Items({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articleItemsStream = ref.watch(articleItemsStreamP);
    final articleItemsRsp = useStream(articleItemsStream);
    if (articleItemsRsp.hasError) {
      return AlertDialog(
          title: const Text('Error'),
          content: Text(articleItemsRsp.error.toString()));
    }
    if (articleItemsRsp.data == null) return const CircularProgressIndicator();

    BuiltList<GArticleItemsData_articles>? articles =
        articleItemsRsp.data?.data?.articles;
    if (articles == null) {
      return const AlertDialog(
          title: Text('No Data'),
          content:
              Text('Please share some video from YouTube or add from Explore'));
    }
// Add articles to state
    Future(() {
      ref.read(articleItemsSP.notifier).state = articles;
    });

    return ScrollablePositionedList.builder(
      itemScrollController: ref.read(articleItemsScrollControllerProvider),
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return Item(
            article: articles[index],
            loading: articles[index].title == loadingTitle);
      },
    );
  }
}
