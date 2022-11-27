// ignore_for_file: file_names

import 'package:entube/components/Avatar.dart';
import 'package:flutter/material.dart';

// 文章对应的 youtube 图标或者头像
// 删除时候显示 loading 动画
class ArticleAvatar extends StatelessWidget {
  final String? avatar;
  final bool? loading;
  const ArticleAvatar({
    Key? key,
    this.avatar,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Avatar(avatar: avatar, loading: loading);
  }
}
