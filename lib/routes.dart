//import 'package:entube/components/Article/index.dart';
// ignore_for_file: library_prefixes

import 'package:entube/components/AcquiringWords/index.dart' as AcquiringWords;
import 'package:entube/components/Article/index.dart' as Article;
import 'package:entube/components/ArticleItems/index.dart';
import 'package:entube/components/Auth/index.dart';
import 'package:entube/components/Loading.dart';
import 'package:entube/components/UserArticles/index.dart' as UserArticles;
import 'package:go_router/go_router.dart';

final routes = [
  GoRoute(
    path: '/',
    builder: (context, state) => const UserArticles.Page(),
  ),
  GoRoute(
    path: '/SignIn',
    builder: (context, state) => const SignIn(),
  ),
  GoRoute(
    path: '/LoggedInUserDetails',
    builder: (context, state) => const LoggedInUserDetails(),
  ),
  GoRoute(
      path: '/AuthLoading',
      builder: (context, state) => const Loading("login in progress ...")),
  GoRoute(
    path: '/ArticleItems',
    builder: (context, state) => const Items(),
  ),
  GoRoute(
    path: '/Article/:articleId',
    builder: (context, state) => Article.Page(state.params['articleId']!),
  ),
  GoRoute(
    path: '/AcquiringWords',
    builder: (context, state) => const AcquiringWords.Page(),
  ),
];
