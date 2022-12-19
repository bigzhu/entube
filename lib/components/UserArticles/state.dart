import 'package:entube/components/ArticleItems/g/services.req.gql.dart';
import 'package:entube/components/ArticleItems/index.dart';
import 'package:entube/graphql/g/schema.schema.gql.dart';
import 'package:entube/state.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

import 'g/services.data.gql.dart';
import 'g/services.req.gql.dart';

/*
final userArticlesSP = StateProvider((ref) {
  return <GUserArticlesData_user_articles>[];
});
*/

class UserArticlesSN
    extends StateNotifier<List<GUserArticlesData_user_articles>> {
  UserArticlesSN(this.ref) : super([]) {
    client = ref.watch(gqlClientP(FetchPolicy.NetworkOnly));
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
  late Client client;
  final Ref ref;
  // 查询 user_articles
  final req = GUserArticlesReq();

  void sharedNew(String url) async {
    final index = findInLocal(url);
    if (index != -1) return;
    addLoading(url);
    String? artilceId = await findInRemote(url);
    print('find article_id=$artilceId');
    if (artilceId != null) {
      //Map<String, dynamic> json = {"article_id": artilceId, "deleted_at": null};
      //final object = Guser_articles_insert_input.fromJson(json)?.toBuilder();
      final object = Guser_articles_insert_inputBuilder();
      object.article_id = Guuid(artilceId).toBuilder();
      final upsertReq = GupsertUserArticlesReq((b) => b..vars.object = object);
      final stream = client.request(upsertReq);
      await for (final value in stream) {
        final json = value.data?.insert_user_articles_one!.toJson();
        if (json != null) {
          final userArticle = GUserArticlesData_user_articles.fromJson(json);
          if (userArticle != null) replaceLoading(userArticle);
        }
        if (value.hasErrors) {
          debugPrint("${value.graphqlErrors}");
          debugPrint("${value.linkException}");
        }
      }
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

  int findInLocal(String uri) {
    final index = state.indexWhere((v) => v.article.url == uri);
    if (index != -1) {
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
      if (value.data?.user_articles != null) {
        state = value.data!.user_articles.toList();
      }
    }
  }

  void updateUserAritcle(GUserArticlesData_user_articles userArticle) {
    int index = state.indexWhere((element) => element.id == userArticle.id);
    if (index == -1) {
      throw Exception("updateUserAritcle failure, can't find userAritcle");
    }
    state[index] = userArticle;
    //state = [...state];
  }

  void add(GUserArticlesData_user_articles userArticle) {
    state = [userArticle, ...state];
    // Your update logic. You have access to the use with 'state' variable
  }

  void remove(GUserArticlesData_user_articles userArticle) {
    bool isOk = state.remove(userArticle);
    if (!isOk) {
      debugPrint('remove userArticle failure!!');
      return;
    }
    state = [...state];
  }

  void addLoading(String uri) {
    //UserArticleModel loadingUserArticle = ref.read(loadingUserArticleProvider);
    Map<String, dynamic> json = {
      "id": const Uuid().v4(),
      "play_at": 0,
      "article": {
        "id": const Uuid().v4(),
        "favicon": "",
        "thumbnail": "",
        "title": loadingTitle,
        "url": uri
      }
    };
    final loadingUserArticle = GUserArticlesData_user_articles.fromJson(json);
    if (loadingUserArticle != null) {
      state = [loadingUserArticle, ...state];
    }
  }

  void removeLoading(String uri) {
    final index = state.indexWhere((element) =>
        element.article.url == uri && element.article.title == loadingTitle);
    if (index != -1) {
      state.removeAt(index);
      state = [...state];
    }
  }

  void replaceLoading(GUserArticlesData_user_articles userArticle) {
    String uri = userArticle.article.url;
    final index = state.indexWhere((element) =>
        element.article.url == uri && element.article.title == loadingTitle);
    if (index != -1) {
      state[index] = userArticle;
      state = [...state];
    }
  }
}

final userArticlesSNP = StateNotifierProvider.autoDispose<UserArticlesSN,
    List<GUserArticlesData_user_articles>>((ref) {
  UserArticlesSN userArticlesSN = UserArticlesSN(ref);
  ref.keepAlive();
  return userArticlesSN;
});
