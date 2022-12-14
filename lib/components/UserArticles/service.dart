import 'package:flutter/material.dart';
import 'package:leancloud_storage/leancloud.dart';
import './model.dart';
import 'package:AcquireEnglish/components/Article/index.dart';
import 'package:AcquireEnglish/components/Auth/index.dart';

class UserArticleService {
  Future<UserArticleModel?> deleteArticle(UserArticleModel userArticle) async {
    userArticle.isFollowing = false;
    await userArticle.save();
    return userArticle;
  }

  Future<List<UserArticleModel>?> fetch(int limit, int skip) async {
    LCQuery<UserArticleModel> query = LCQuery('UserArticle');
    query.whereEqualTo('owner', await getUser());
    query.whereEqualTo('isFollowing', true);
    query.limit(limit);
    query.orderByDescending('createdAt');

    query.skip(skip);
    query.include('article').select('-sentences');

    try {
      List<UserArticleModel> userArticles = await query.find() ?? [];
      return userArticles;
    } on LCException catch (e) {
      debugPrint(e.message);
      rethrow;
    }
  }

  Future<List<UserArticleModel>> fetchAll() async {
    int limit = 1000;
    List<UserArticleModel> all = [];
    List<UserArticleModel>? userArticles = await fetch(limit, 0);

    while (userArticles != null && userArticles.length == 1000) {
      all = [...all, ...userArticles];
      userArticles = await fetch(limit, all.length);
    }
    if (userArticles != null) {
      all = [...all, ...userArticles];
    }
    /*
    all.sort((a, b) {
      return b.createdAt!.compareTo(a.createdAt!);
    });
    */
    return all;
  }

  Future<UserArticleModel> bind(ArticleModel article) async {
    // check if binded
    UserArticleModel? userArticle = await getByArticle(article);
    if (userArticle == null) {
      userArticle = UserArticleModel();
      userArticle.article = article;
      userArticle.owner = await getUser();
      userArticle.isFollowing = true;
      await userArticle.save();
    }
    // 有 bind 记录, 但是取消了
    if (userArticle.isFollowing == false) {
      userArticle.isFollowing = true;
      await userArticle.save();
    }

    return userArticle;
  }

  Future<UserArticleModel?> getByUserArticleID(String userArticleId) async {
    LCQuery<UserArticleModel> query = LCQuery('UserArticle');
    query.include('article').select('-sentences');
    UserArticleModel? userArticle = await query.get(userArticleId);
    return userArticle;
  }

// get userArticle by aritcleId include aritcle info
  Future<UserArticleModel?> getByArticleId(String articleId) async {
    ArticleModel article =
        LCObject.createWithoutData('Article', articleId) as ArticleModel;
    return await getByArticle(article);
  }

  Future<UserArticleModel?> getByArticle(ArticleModel article) async {
    LCUser user = await getUser();

    LCQuery<UserArticleModel> query = LCQuery('UserArticle');
    query.include('article').select('-sentences');
    query.whereEqualTo('owner', user);
    query.whereEqualTo('article', article);

    return await query.first();
  }
}
