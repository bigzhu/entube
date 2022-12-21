import 'dart:convert';

import 'package:entube/components/Article/g/services.req.gql.dart';
import 'package:entube/components/ArticleItems/g/services.req.gql.dart';
import 'package:entube/components/ArticleItems/index.dart';
import 'package:entube/graphql/g/schema.schema.gql.dart';
import 'package:entube/state.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

import 'g/services.data.gql.dart';
import 'g/services.req.gql.dart';
/*
final userArticlesSP = StateProvider((ref) {
  return <GUserArticlesData_user_articles>[];
});
*/

class UserArticlesSN
    extends StateNotifier<List<GUserArticlesData_user_articles>?> {
  UserArticlesSN(this.ref) : super(null) {
    client = ref.watch(gqlClientP(FetchPolicy.CacheFirst));
    fetch();
    //监听登录用户变化, 来决定重取数据
    /*
    ref.listen<LCUser?>(userStateNotifierProvider,
        (LCUser? previous, LCUser? next) {
      if (next != null) {
        fetch();
      }
    });
    */
  }
  bool loading = false;
  late Client client;
  final Ref ref;
  // 查询 user_articles
  final req = GUserArticlesReq();

  void sharedNew(String url) async {
    final index = findInLocal(url);
    if (index != -1) {
      return;
    }
    setLoadingTitle(url, 'Finding in server ...');
    String? articleId = await findInRemote(url);
    // exists in remote
    if (articleId != null) {
      setLoadingTitle(url, 'Binding to my article ...');
      await bindUserArticles(articleId);
      setLoadingTitle(url, '');
      return;
    }
    setLoadingTitle(url, 'Fetching YouTube Info ...');
    final articleJson = await fetchYouTubeInfo(url);
    setLoadingTitle(url, 'Saving to server ...');
    articleId = await insertArticles(articleJson);
    if (articleId != null) {
      setLoadingTitle(url, 'Binding to my article ...');
      await bindUserArticles(articleId);
      loading = false;
    }
  }

  void setLoadingTitle(String url, String title) {
    if (title == '') {
      loading = false;
      removeLoading(url);
      return;
    }
    final loadingUserArticle = createLoadingUserArticle(url, title);
    if (loading) {
      replaceLoading(loadingUserArticle);
    } else {
      state = [loadingUserArticle, ...?state];
      loading = true;
    }
  }

  Future<void> bindUserArticles(String articleId) async {
    //Map<String, dynamic> json = {"article_id": artilceId, "deleted_at": null};
    //final object = Guser_articles_insert_input.fromJson(json)?.toBuilder();
    final object = Guser_articles_insert_inputBuilder();
    object.article_id = Guuid(articleId).toBuilder();
    final upsertReq = GupsertUserArticlesReq((b) => b..vars.object = object);
    final stream = client.request(upsertReq);
    await for (final value in stream) {
      final json = value.data?.insert_user_articles_one!.toJson();
      if (json != null) {
        final userArticle = GUserArticlesData_user_articles.fromJson(json);
        if (userArticle != null) {
          replaceLoading(userArticle);
          return;
        }
      }
      if (value.hasErrors) {
        debugPrint("${value.graphqlErrors}");
        debugPrint("${value.linkException}");
      }
    }
  }

  Future<String?> insertArticles(Map<String, dynamic> articleJson) async {
    final object = Garticles_insert_input.fromJson(articleJson);
    if (object == null) {
      throw Exception('Build from json failed: $articleJson');
    }
    final req = GinsertArticlesReq((b) => b..vars.object = object.toBuilder());
    final stream = client.request(req);
    await for (final value in stream) {
      if (value.data?.insert_articles_one != null) {
        return value.data!.insert_articles_one!.id.value;
      }
      if (value.hasErrors) {
        debugPrint("${value.graphqlErrors}");
        debugPrint("${value.linkException}");
        return null;
      }
    }
    return null;
  }

  Future<Map<String, dynamic>> fetchYouTubeInfo(String url) async {
    final response = await http.get(Uri.parse(
        'https://entube-uzv2eu4hta-de.a.run.app/?what=info&uri=$url'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      var json = jsonDecode(response.body);
      //makesure url don't change
      json['url'] = url;
      // check is get sentences
      /*
      if ((json['sentences'] as List).isEmpty) {
        ref.watch(errorMeesageSP.notifier).state =
            "The article ${json['title']} don't have Captions";
        removeLoading(url);

        throw Exception("The article ${json['title']} don't have Captions");
      }
      */
      return json;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      print(response.statusCode);
      print(response.body);
      throw Exception('Failed to load album');
    }
  }

  Future<String?> findInRemote(String url) async {
    // 查询 articles
    final articlesReq = GArticleByUrlReq((b) => b..vars.url = url);
    final stream = client.request(articlesReq);
    await for (final value in stream) {
      if (value.data?.articles != null) {
        if (value.data!.articles.isNotEmpty) {
          return value.data!.articles[0].id.value;
        } else {
          return null;
        }
      }
    }
    return null;
  }

  int? findInLocal(String uri) {
    final index = state?.indexWhere((v) => v.article.url == uri);
    if (index != -1 && index != null) {
      //滚动到那一条记录
      ref.watch(articleItemsScrollCP).scrollTo(
          index: index,
          duration: const Duration(milliseconds: 1400),
          curve: Curves.linear);
    }
    return index;
  }

  void fetch() async {
    final stream = client.request(req);
    await for (final value in stream) {
      // print( "client.cache.identify(value.data): ${client.cache.identify(value.data?.user_articles[0])}");
      if (value.data?.user_articles != null) {
        state = value.data!.user_articles.toList();
        return;
      }
    }
  }

  void updateUserAritcle(GUserArticlesData_user_articles userArticle) {
    int? index = state?.indexWhere((element) => element.id == userArticle.id);
    if (index == -1) {
      throw Exception("updateUserAritcle failure, can't find userAritcle");
    }
    if (index != null && state != null) state![index] = userArticle;
    //state = [...state];
  }

  void add(GUserArticlesData_user_articles userArticle) {
    state = [userArticle, ...?state];
    // Your update logic. You have access to the use with 'state' variable
  }

  void remove(GUserArticlesData_user_articles userArticle) {
    bool? isOk = state?.remove(userArticle);
    if (!isOk!) {
      debugPrint('remove userArticle failure!!');
      return;
    }
    state = [...?state];
  }

  GUserArticlesData_user_articles createLoadingUserArticle(
      String url, String title) {
    Map<String, dynamic> json = {
      "id": const Uuid().v4(),
      "play_at": 0,
      "article": {
        "id": const Uuid().v4(),
        "favicon": "",
        "thumbnail": "",
        "title": title,
        "url": url
      }
    };
    return GUserArticlesData_user_articles.fromJson(json)!;
  }

  void removeLoading(String uri) {
    final index = state?.indexWhere((element) =>
        element.article.url == uri && element.article.title == loadingTitle);
    if (index != -1 && index != null) {
      state?.removeAt(index);
      state = [...?state];
    }
  }

  void replaceLoading(GUserArticlesData_user_articles userArticle) {
    String url = userArticle.article.url;
    final index = state?.indexWhere((element) => element.article.url == url);
    if (index != -1 && index != null && state != null) {
      state![index] = userArticle;
      state = [...?state];
    }
  }
}

final userArticlesSNP = StateNotifierProvider.autoDispose<UserArticlesSN,
    List<GUserArticlesData_user_articles>?>((ref) {
  UserArticlesSN userArticlesSN = UserArticlesSN(ref);
  ref.keepAlive();
  return userArticlesSN;
});
