import 'package:entube/components/ArticleItems/index.dart';
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
  final Ref ref;
  final req = GUserArticlesReq();

  void fetch() async {
    final client = ref.watch(gqlClientP(FetchPolicy.CacheAndNetwork));
    final stream = client.request(req);
    stream.listen((event) {
      if (event.data?.user_articles != null) {
        state = event.data!.user_articles.toList();
      }
    });
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
