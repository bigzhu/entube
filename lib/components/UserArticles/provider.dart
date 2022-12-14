import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leancloud_storage/leancloud.dart';

import 'package:AcquireEnglish/components/UserArticles/index.dart';
import 'package:AcquireEnglish/components/Article/index.dart';

import 'package:AcquireEnglish/components/Auth/index.dart';

const String loadingTitle = '☕ 🍕   loading new YouTube ......';

final loadingUserArticlesStateProvider = StateProvider<bool>((ref) {
  return true;
});

class UserArticlesStateNotifier extends StateNotifier<List<UserArticleModel>> {
  UserArticlesStateNotifier(this.ref) : super([]) {
    fetch();
    //监听登录用户变化, 来决定重取数据
    ref.listen<LCUser?>(userStateNotifierProvider,
        (LCUser? previous, LCUser? next) {
      if (next != null) {
        fetch();
      }
    });
  }
  final Ref ref;

  void fetch() async {
    //state = await ref.watch(userArticlesFutureProvider.future);
    state = await UserArticleService().fetch(4, 0) ?? [];
    ref
        .watch(loadingUserArticlesStateProvider.notifier)
        .update((state) => false);
    state = await UserArticleService().fetchAll();
  }

  void updateUserAritcle(UserArticleModel userArticle) {
    int index =
        state.indexWhere((element) => element.objectId == userArticle.objectId);
    if (index == -1) {
      throw Exception("updateUserAritcle failure, can't find userAritcle");
    }
    state[index] = userArticle;
    //state = [...state];
  }

  void add(UserArticleModel userArticle) {
    state = [userArticle, ...state];
    // Your update logic. You have access to the use with 'state' variable
  }

  void remove(UserArticleModel userArticle) {
    bool isOk = state.remove(userArticle);
    if (!isOk) {
      debugPrint('remove userArticle failure!!');
      return;
    }
    state = [...state];
  }

  void addLoading(String uri) {
    //UserArticleModel loadingUserArticle = ref.read(loadingUserArticleProvider);
    UserArticleModel loadingUserArticle = UserArticleModel();
    ArticleModel loadingArticle = ArticleModel();
    loadingArticle.title = loadingTitle;
    loadingArticle.thumbnail = '';
    loadingArticle.avatar = '';
    loadingArticle.youtube = uri;
    loadingUserArticle.article = loadingArticle;
    state = [loadingUserArticle, ...state];
  }

  void removeLoading(String uri) {
    final index = state.indexWhere((element) =>
        element.article.youtube == uri &&
        element.article.title == loadingTitle);
    if (index != -1) {
      state.removeAt(index);
      state = [...state];
    }
  }

  void replaceLoading(UserArticleModel userArticle) {
    String uri = userArticle.article.youtube;
    final index = state.indexWhere((element) =>
        element.article.youtube == uri &&
        element.article.title == loadingTitle);
    if (index != -1) {
      state[index] = userArticle;
      state = [...state];
    }
  }
}

final userArticlesStateNotifierProvider = StateNotifierProvider.autoDispose<
    UserArticlesStateNotifier, List<UserArticleModel>>((ref) {
  UserArticlesStateNotifier userArticlesStateNotifier =
      UserArticlesStateNotifier(ref);
  ref.keepAlive();
  return userArticlesStateNotifier;
});

// 保存播放时间
final playAtUserArticlesStateProvider =
    StateProvider<Map<String, UserArticleModel>>((ref) {
  Map<String, UserArticleModel> data = {};
  return data;
});

final loadingUserArticleProvider = Provider<UserArticleModel>((ref) {
  UserArticleModel loadingUserArticle = UserArticleModel();
  ArticleModel loadingArticle = ArticleModel();
  loadingArticle.title = loadingTitle;
  loadingArticle.thumbnail = '';
  loadingArticle.avatar = '';
  loadingArticle.youtube = '';
  loadingUserArticle.article = loadingArticle;
  return loadingUserArticle;
});
