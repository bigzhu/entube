import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:entube/components/Auth/index.dart';
import 'package:entube/components/Error/index.dart';
import 'package:entube/components/Loading.dart';
import 'package:entube/components/LogoLoading.dart';
import 'package:entube/components/UserArticles/index.dart';
import 'package:entube/configs.dart';
import 'package:entube/routes.dart';
import 'package:entube/state.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:entube/utils/nhost/nhost_sdk/nhost_sdk.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:url_launcher/url_launcher.dart';

//import './article_items_page.dart';
//import './acquiring_words_page.dart';
//import '../components/PageRoute/provider.dart';
//import './settings.dart';
const signInSuccessHost = 'oauth.login.success';
const signInFailureHost = 'oauth.login.failure';
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AppLinks appLinks = AppLinks();
    useEffect(
      () {
        // For sharing or opening urls/text coming from outside the app while the app is in the memory
        StreamSubscription intentDataStreamSubscription =
            ReceiveSharingIntent.getTextStream().listen((String url) {
          ref.read(userArticlesSNP.notifier).sharedNew(url);
        }, onError: (err) {
          print("getLinkStream error: $err");
        });

        // For sharing or opening urls/text coming from outside the app while the app is closed
        ReceiveSharingIntent.getInitialText().then((String? value) {
          print(value);
        });

        //register the app link handler
        final linkSubscription = appLinks.uriLinkStream.listen((uri) {
          if (uri.host == signInSuccessHost) {
            ref.read(authSNP.notifier).completeOAuth(uri);
          }
          closeInAppWebView();
        });

        return () {
          intentDataStreamSubscription.cancel();
          linkSubscription.cancel();
        };
      },
      [],
    );
    final openHiveBox = ref.watch(openHiveBoxP);
    final snapshot = useFuture(openHiveBox, initialData: null);

    if (snapshot.data == null) return const LogoLoading();

    final authenticationState = ref.watch(authSNP);
    //监听显示错误消息
    ref.listen<String?>(errorMeesageSP, (String? previous, String? next) {
      if (next != null) {
        showErrorSnackbar(context, next);
        ref.read(errorMeesageSP.notifier).update((state) => null);
      }
    });
    return MaterialApp.router(
      title: configTitle,
      // The Mandy red, light theme.
      theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
      // The Mandy red, dark theme.
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
      // Use dark or light theme based on system setting.
      themeMode: ThemeMode.system,
      routerConfig: GoRouter(
          routes: routes,
          redirect: (BuildContext context, GoRouterState state) {
            switch (authenticationState) {
              //case AuthenticationState.signedIn:
              //return '/AcquiringWords';
              //  return '/ArticleItems';
              //return '/LoggedInUserDetails';
              case AuthenticationState.inProgress:
                return '/AuthLoading';
              case AuthenticationState.signedOut:
                return '/SignIn';
              default:
                return state.path;
            }
          }),
    );
  }
}
