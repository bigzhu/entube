import 'package:entube/components/Auth/index.dart';
import 'package:entube/components/LogoLoading.dart';
import 'package:entube/components/ArticleItems/index.dart';
import 'package:go_router/go_router.dart';

final routes = [
  GoRoute(
    path: '/',
    builder: (context, state) => const LoggedInUserDetails(),
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
    builder: (context, state) => const LogoLoading(),
  ),
  GoRoute(
    path: '/ArticleItems',
    builder: (context, state) => const ArticleItems(),
  ),
];
