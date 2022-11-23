import 'package:entube/components/Auth/state.dart';
import 'package:entube/components/LogoLoading.dart';
import 'package:entube/state.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nhost_sdk/nhost_sdk.dart';

class ByPass extends HookConsumerWidget {
  const ByPass({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // NhostAuthProvider.of will register this widget so that it rebuilds
    // whenever the user's authentication state changes.
    // final authenticationState = ref.watch(authenticationStateSP);

    final authenticationState = ref.watch(authSNP);
    final router = ref.watch(routerP);
    Future.delayed(Duration.zero, () {
      switch (authenticationState) {
        case AuthenticationState.signedIn:
          router.navigateTo(context, "/LoggedInUserDetails",
              transition: TransitionType.fadeIn);
          break;
        case AuthenticationState.inProgress:
          return const LogoLoading();
        case AuthenticationState.signedOut:
          router.navigateTo(context, "/SignIn",
              transition: TransitionType.fadeIn);
      }
    });
    return const LogoLoading();
  }
}
