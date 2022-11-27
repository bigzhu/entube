import 'package:flutter/material.dart';
import './ArticleAvatar.dart';
import './IncreasePercentNumber.dart';

// if percent is 0, hide itself
class ArticleItemBar extends StatelessWidget {
  const ArticleItemBar(
      {Key? key,
      this.title,
      this.percent,
      this.onTap,
      this.avatar,
      this.highLight = false,
      this.loading = false})
      : super(key: key);
  final String? title;
  final String? avatar;
  final bool highLight;
  final bool? loading;
  final double? percent;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        trailing:
            percent != null ? IncreasePercentNumber(percent: percent!) : null,
        dense: false,
        onTap: onTap,
        leading: ArticleAvatar(
          avatar: avatar ?? '',
          loading: loading,
        ),
        title: Text(title ?? '',
            style: TextStyle(
              color: Colors.white,
              fontWeight: highLight ? FontWeight.bold : null,
            )));
  }
}
