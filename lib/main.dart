import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:app_links/app_links.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

import 'package:entube/components/Home.dart';
//import './article_items_page.dart';
//import './acquiring_words_page.dart';
//import '../components/PageRoute/provider.dart';
//import './settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'English Tube',
      // The Mandy red, light theme.
      theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
      // The Mandy red, dark theme.
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
      // Use dark or light theme based on system setting.
      themeMode: ThemeMode.system,
      home: const HomeLayout(),
    );
  }
}

class HomeLayout extends HookConsumerWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AppLinks appLinks = AppLinks();
    useEffect(
      () {
        final linkSubscription = appLinks.uriLinkStream.listen((uri) {
          //if (uri.host == signInSuccessHost) {
          //  // ignore: unawaited_futures
          //  nhostClient.auth.completeOAuthProviderSignIn(uri);
          //}
          url_launcher.closeInAppWebView();
        });
        return () {
          linkSubscription.cancel();
        };
      },
      [appLinks],
    );

    return Scaffold(
        body: PageView(
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        Home(),
        //AcquiringWordsPage(),
        //SettingsPage(),
      ],
      //controller: ref.read(pageControllerProvider),
    ));
  }
}
