import 'package:entube/components/LogoLoading.dart';
import 'package:go_router/go_router.dart';

import 'components/Auth/index.dart';

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
];
