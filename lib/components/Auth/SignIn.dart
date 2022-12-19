import 'package:entube/components/Auth/state.dart';
import 'package:entube/components/Loading.dart';
import 'package:entube/state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:entube/utils/nhost/nhost_sdk/nhost_sdk.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends HookConsumerWidget {
  const SignIn({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nhostGithubSignInUrl = ref.watch(nhostGithubSignInUrlP);
    final nhostGoogleSignInUrl = ref.watch(nhostGoogleSignInUrlP);
    final authenticationState = ref.watch(authSNP);
    if (authenticationState == AuthenticationState.inProgress) {
      return const Loading("User login in progress ...");
    }
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      ElevatedButton.icon(
        onPressed: () async {
          await launchUrl(Uri.parse(nhostGithubSignInUrl),
              mode: LaunchMode.externalApplication);
        },
        icon: const Icon(FontAwesomeIcons.github),
        label: const Text('Sign in with GitHub'),
      ),
      const SizedBox(height: 40),
      ElevatedButton.icon(
        onPressed: () async {
          await launchUrl(Uri.parse(nhostGoogleSignInUrl),
              mode: LaunchMode.externalApplication);
        },
        icon: const Icon(FontAwesomeIcons.google),
        label: const Text('Sign in with Google'),
      )
    ]);
  }
}
