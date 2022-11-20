import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:app_links/app_links.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:nhost_flutter_auth/nhost_flutter_auth.dart';

import 'package:entube/components/Home.dart';
import './state.dart';

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
    final nhostClient = ref.watch(nhostClientP);
    useEffect(
      () {
        final linkSubscription = appLinks.uriLinkStream.listen((uri) {
          if (uri.host == signInSuccessHost) {
            ref.read(refreshTokenUriSP.notifier).state = uri;
            //nhostClient.auth.completeOAuthProviderSignIn(uri).then((_) {
            //  ref.read(authenticationStateSP.notifier).state =
            //      nhostClient.auth.authenticationState;
            //});
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

    AsyncValue<void> oauthResult = ref.watch(completeOAuthFP);
    return oauthResult.when(
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
      data: (config) {
        final auth = ref.watch(authP);
        Widget widget;
        switch (auth.authenticationState) {
          case AuthenticationState.signedIn:
            widget = const LoggedInUserDetails();
            break;
          default:
            widget = const ProviderSignInForm();
            break;
        }

        return Padding(
          padding: EdgeInsets.all(32),
          child: widget,
        );
      },
    );
  }
}

class ProviderSignInForm extends HookConsumerWidget {
  const ProviderSignInForm({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nhostGithubSignInUrl = ref.watch(nhostGithubSignInUrlP);
    final nhostGoogleSignInUrl = ref.watch(nhostGoogleSignInUrlP);
    return Column(children: [
      TextButton(
        onPressed: () async {
          try {
            await url_launcher.launch(
              nhostGithubSignInUrl,
              forceSafariVC: true,
            );
          } on Exception {
            // Exceptions can occur due to weirdness with redirects
          }
        },
        child: const Text('Authenticate with GitHub'),
      ),
      TextButton(
        onPressed: () async {
          try {
            await url_launcher.launch(
              nhostGoogleSignInUrl,
              forceSafariVC: true,
            );
          } on Exception {
            // Exceptions can occur due to weirdness with redirects
          }
        },
        child: const Text('Authenticate with Google'),
      )
    ]);
  }
}

class LoggedInUserDetails extends HookConsumerWidget {
  const LoggedInUserDetails({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authP);
    final currentUser = auth.currentUser!;

    final textTheme = Theme.of(context).textTheme;
    const cellPadding = EdgeInsets.all(4);

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome ${currentUser.email}!',
            style: textTheme.headline5,
          ),
          rowSpacing,
          Text('User details:', style: textTheme.caption),
          rowSpacing,
          Table(
            defaultColumnWidth: IntrinsicColumnWidth(),
            children: [
              for (final row in currentUser.toJson().entries)
                TableRow(
                  children: [
                    Padding(
                      padding: cellPadding.copyWith(right: 12),
                      child: Text(row.key),
                    ),
                    Padding(
                      padding: cellPadding,
                      child: Text('${row.value}'),
                    ),
                  ],
                )
            ],
          ),
          rowSpacing,
          ElevatedButton(
            onPressed: () {
              auth.signOut();
            },
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}

const rowSpacing = SizedBox(height: 12);
