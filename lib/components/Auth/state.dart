import 'package:entube/state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nhost_sdk/nhost_sdk.dart';

final authP = Provider<AuthClient>((ref) {
  return ref.watch(nhostClientP).auth;
});

final authSNP =
    StateNotifierProvider<AuthStateNotifier, AuthenticationState>((ref) {
  return AuthStateNotifier(ref);
});

class AuthStateNotifier extends StateNotifier<AuthenticationState> {
  final Ref ref;
  late AuthClient auth;
  AuthStateNotifier(this.ref) : super(ref.watch(authP).authenticationState) {
    auth = ref.watch(authP);
  }

  Future<void> completeOAuth(Uri uri) async {
    state = AuthenticationState.inProgress;
    await auth.completeOAuthProviderSignIn(uri);
    state = auth.authenticationState;
  }

  Future<void> logout() async {
    state = AuthenticationState.inProgress;
    await auth.signOut();
    state = auth.authenticationState;
  }
}
