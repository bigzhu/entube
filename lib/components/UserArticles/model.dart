import 'package:flutter/material.dart';
import 'package:leancloud_storage/leancloud.dart';
import 'package:AcquireEnglish/components/Article/index.dart';

class UserArticleModel extends LCObject {
  LCUser get owner => this['owner'];
  ArticleModel get article => this['article'];
  bool get isFollowing => this['isFollowing'];
  int? get playAt => this['playAt']; // 播放到哪一秒
  double? get percent => this['percent'];

  set owner(LCUser value) => this['owner'] = value;
  set article(ArticleModel value) => this['article'] = value;
  set isFollowing(bool value) => this['isFollowing'] = value;
  set playAt(int? value) => this['playAt'] = value;
  set percent(double? value) => this['percent'] = value;

  UserArticleModel() : super('UserArticle');
  static UserArticleModel parseObject(String str) {
    debugPrint(str);
    return LCObject.parseObject(str) as UserArticleModel;
  }
}
