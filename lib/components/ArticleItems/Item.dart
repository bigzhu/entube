// ignore_for_file: file_names

import 'package:flutter/material.dart';
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
    Slidable slidable = Slidable(
        key: ValueKey(article.id),
        endActionPane: ActionPane(motion: const ScrollMotion(), children: [
          SlidableAction(
            // An action can be bigger than the others.
            //flex: 2,
            onPressed: (context) => print("delete ${article.id}"),
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          )
        ]),
        child: ItemCard(
          article: article,
          loading: loading,
          percent: 0,
        ));
    return slidable;
  }
}
