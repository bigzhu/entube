import 'dart:async';

import 'package:logging/logging.dart';

import 'package:app_links/app_links.dart';
import 'package:entube/components/Auth/index.dart';
import 'package:entube/components/LogoLoading.dart';
import 'package:entube/components/UserArticles/index.dart';
import 'package:entube/configs.dart';
import 'package:entube/routes.dart';
import 'package:entube/state.dart';
import 'package:entube/utils/index.dart';
import 'package:entube/utils/nhost/nhost_sdk/nhost_sdk.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

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
        // use this trigger iOS net promission
        http.get(Uri.parse(
            'https://entube-uzv2eu4hta-de.a.run.app/?what=info&uri=https://www.youtube.com/watch?v=QmOF0crdyRU'));
        // For sharing or opening urls/text coming from outside the app while the app is in the memory
        StreamSubscription intentDataStreamSubscription =
            ReceiveSharingIntent.getTextStream().listen((String url) {
          if (ref.watch(authSNP) != AuthenticationState.signedIn) return;
          ref.read(userArticlesSNP.notifier).sharedNew(url);
        }, onError: (err) {
          showError("getLinkStream error: $err");
        });

        // For sharing or opening urls/text coming from outside the app while the app is closed
        ReceiveSharingIntent.getInitialText().then((String? url) {
          if (url != null) {
            ref.read(userArticlesSNP.notifier).sharedNew(url);
          }
        });

        //register the app link handler
        final linkSubscription = appLinks.uriLinkStream.listen((uri) {
          if (uri.host == signInSuccessHost) {
            ref.read(authSNP.notifier).completeOAuth(uri);
          }
          closeInAppWebView();
        });
        // logging
        Logger.root.level = Level.ALL; // defaults to Level.INFO
        Logger.root.onRecord.listen((record) {
          debugPrint('${record.level.name}: ${record.time}: ${record.message}');
        });
        // set EasyLoading style
        EasyLoading.instance
          ..boxShadow = <
              BoxShadow>[] //see https://github.com/nslogx/flutter_easyloading/issues/135
          ..loadingStyle = EasyLoadingStyle.custom
          ..textColor = Colors.white
          ..indicatorColor = Colors.white
          ..backgroundColor = Colors.black.withOpacity(0.3);

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
    return MaterialApp.router(
      builder: EasyLoading.init(),
      title: configTitle,
      // The Mandy red, light theme.
      theme: FlexThemeData.light(scheme: FlexScheme.ebonyClay),
      // The Mandy red, dark theme.
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.ebonyClay),
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
