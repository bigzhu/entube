import 'package:entube/components/Auth/state.dart';
import 'package:entube/components/LogoLoading.dart';
import 'package:entube/state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nhost_sdk/nhost_sdk.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

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
