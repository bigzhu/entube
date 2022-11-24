import 'package:app_links/app_links.dart';
import 'package:entube/components/Auth/index.dart';
import 'package:entube/configs.dart';
import 'package:entube/routes.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nhost_sdk/nhost_sdk.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

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
        // register router
        //register the app link handler
        final linkSubscription = appLinks.uriLinkStream.listen((uri) {
          if (uri.host == signInSuccessHost) {
            ref.read(authSNP.notifier).completeOAuth(uri);
          }
          url_launcher.closeInAppWebView();
        });
        return () {
          linkSubscription.cancel();
        };
      },
      [],
    );

    final authenticationState = ref.watch(authSNP);
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
              case AuthenticationState.signedIn:
                return '/LoggedInUserDetails';
              case AuthenticationState.inProgress:
                return '/AuthLoading';
              case AuthenticationState.signedOut:
                return '/SignIn';
              default:
                return null;
            }
          }),
    );
  }
}
