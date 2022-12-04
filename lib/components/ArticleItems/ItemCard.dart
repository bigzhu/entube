import 'package:entube/components/ArticleItems/g/services.data.gql.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'ItemBar.dart';
import 'Thumbnail.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key, required this.article, this.percent, this.loading})
      : super(key: key);

  final GArticleItemsData_articles article;
  final double? percent;
  final bool? loading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('/Article/${article.id.value}');
        context.go('/Article/${article.id.value}');
      },
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Hero(
            tag: 'youtube_thumbnail_${article.id}',
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Thumbnail(thumbnail: article.thumbnail),
            ),
          ),
          Hero(
            tag: 'youtube_title_${article.id}',
            child: Material(
              color: Colors.black.withOpacity(0.5),
              child: ItemBar(
                title: article.title,
                avatar: article.favicon,
                percent: percent,
                onTap: () => context.go('/Article/${article.id.value}'),
                loading: loading,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
