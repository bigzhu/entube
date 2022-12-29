// ignore_for_file: file_names

import 'package:entube/components/UserArticles/g/services.req.gql.dart';
import 'package:entube/state.dart';
import 'package:entube/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'ItemCard.dart';
import 'g/services.data.gql.dart';

class Item extends HookConsumerWidget {
  const Item({Key? key, required this.article, this.loading}) : super(key: key);

  final GArticlesData_articles article;
  final bool? loading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(gqlClientP);
    final req = GdeleteUserArticleReq(
        (b) => b..vars.article_id = article.id.toBuilder());

    Slidable slidable = Slidable(
        key: ValueKey(article.id),
        endActionPane: ActionPane(motion: const ScrollMotion(), children: [
          SlidableAction(
            // An action can be bigger than the others.
            //flex: 2,
            onPressed: (context) async {
              final stream = client.request(req);

              EasyLoading.show(
                  status: 'deleting article: ${article.title} ....');
              await for (final value in stream) {
                if (value.hasErrors) {
                  showError("${value.graphqlErrors ?? value.linkException}");
                }
                if (value.data?.update_user_articles?.affected_rows == 1) {
                  return;
                }
              }
            },
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          )
        ]),
        child: ItemCard(
          article: article,
          loading: loading,
          percent: null,
        ));
    return slidable;
  }
}
