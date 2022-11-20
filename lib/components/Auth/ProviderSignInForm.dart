import 'package:entube/state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

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
