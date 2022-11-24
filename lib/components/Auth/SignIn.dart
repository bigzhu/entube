import 'package:entube/components/Auth/state.dart';
import 'package:entube/components/LogoLoading.dart';
import 'package:entube/state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nhost_sdk/nhost_sdk.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends HookConsumerWidget {
  const SignIn({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nhostGithubSignInUrl = ref.watch(nhostGithubSignInUrlP);
    final nhostGoogleSignInUrl = ref.watch(nhostGoogleSignInUrlP);
    final authenticationState = ref.watch(authSNP);
    if (authenticationState == AuthenticationState.inProgress) {
      return const LogoLoading();
    }
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      ElevatedButton.icon(
        onPressed: () async {
          try {
            await url_launcher.launchUrl(
              Uri(host: nhostGithubSignInUrl),
            );
          } on Exception {
            // Exceptions can occur due to weirdness with redirects
          }
        },
        icon: const Icon(FontAwesomeIcons.github),
        label: const Text('Sign in with GitHub'),
      ),
      SizedBox(height: 40),
      ElevatedButton.icon(
        onPressed: () async {
          try {
            await url_launcher.launchUrl(
              Uri(host: nhostGoogleSignInUrl),
            );
          } on Exception {
            // Exceptions can occur due to weirdness with redirects
          }
        },
        icon: const Icon(FontAwesomeIcons.google),
        label: const Text('Sign in with Google'),
      )
    ]);
  }
}
