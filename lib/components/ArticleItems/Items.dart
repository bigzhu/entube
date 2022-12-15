import 'package:entube/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

//import 'package:AcquireEnglish/components/UserArticles/index.dart';
import './Item.dart';
import './state.dart';
import 'g/services.req.gql.dart';

class Items extends HookConsumerWidget {
  const Items({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final req = GArticlesReq(
      (b) => b
        ..vars.limit = 10
        ..vars.offset = 0,
    );

    return DataWaiter(
      req: req,
      builder: (rsp) {
        final articles = rsp.data?.articles.toList();
        if (articles == null) {
          return const AlertDialog(
              title: Text('No Data'),
              content: Text(
                  'Please share some video from YouTube or add from Explore'));
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
      },
    );
  }
}
