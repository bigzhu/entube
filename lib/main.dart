import 'package:app_links/app_links.dart';
import 'package:entube/components/Auth/index.dart';
import 'package:entube/components_old/logo_loading.dart';
import 'package:entube/configs.dart';
import 'package:entube/router.dart';
import 'package:entube/state.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
    final router = ref.watch(routerP);
    useEffect(
      () {
        // register router
        defineRoutes(router);
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

    return MaterialApp(
      title: configTitle,
      // The Mandy red, light theme.
      theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
      // The Mandy red, dark theme.
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
      // Use dark or light theme based on system setting.
      themeMode: ThemeMode.system,
      onGenerateRoute: router.generator,
    );
  }
}
