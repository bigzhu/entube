import 'package:app_links/app_links.dart';
import 'package:entube/components/Auth/index.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nhost_flutter_auth/nhost_flutter_auth.dart';
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          if (uri.host == signInSuccessHost) {
            ref.read(authSNP.notifier).completeOAuth(uri);
          }
          url_launcher.closeInAppWebView();
        });
        return () {
          linkSubscription.cancel();
        };
      },
      [appLinks],
    );

    return const MaterialApp(
      title: 'Nhost.io OAuth Example',
      home: Scaffold(
        body: SafeArea(
          child: ExampleProtectedScreen(),
        ),
      ),
    );

/*
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
    */
  }
}

class ExampleProtectedScreen extends HookConsumerWidget {
  const ExampleProtectedScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // NhostAuthProvider.of will register this widget so that it rebuilds
    // whenever the user's authentication state changes.
    // final authenticationState = ref.watch(authenticationStateSP);

    final authenticationState = ref.watch(authSNP);
    Widget widget;
    switch (authenticationState) {
      case AuthenticationState.signedIn:
        widget = const LoggedInUserDetails();
        break;
      case AuthenticationState.inProgress:
        widget = const CircularProgressIndicator();
        break;
      default:
        widget = const ProviderSignInForm();
        break;
    }

    return Padding(
      padding: EdgeInsets.all(32),
      child: widget,
    );
  }
}
