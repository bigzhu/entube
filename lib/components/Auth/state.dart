import 'package:entube/state.dart';
import 'package:entube/utils/index.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:entube/utils/nhost/nhost_sdk/nhost_sdk.dart';

final authP = Provider<AuthClient>((ref) {
  return ref.watch(nhostClientP).auth;
});

class AuthStateNotifier extends StateNotifier<AuthenticationState> {
  final Ref ref;
  late AuthClient auth;
  AuthStateNotifier(this.ref) : super(AuthenticationState.inProgress) {
    auth = ref.watch(authP);
    autoSignIn();
  }
  Future<void> autoSignIn() async {
    try {
      await auth.signInWithStoredCredentials();
      state = auth.authenticationState;
      return;
    } on Exception catch (e) {
      showError('$e');
    }
    state = AuthenticationState.signedOut;
  }

  Future<void> completeOAuth(Uri uri) async {
    state = AuthenticationState.inProgress;
    await auth.completeOAuthProviderSignIn(uri);
    state = auth.authenticationState;
    // use close to save the token
    ref.watch(nhostClientP).close();
  }

  Future<void> logout() async {
    state = AuthenticationState.inProgress;
    await auth.signOut();
    state = auth.authenticationState;
    ref.watch(nhostClientP).close();
  }
}

final authSNP =
    StateNotifierProvider<AuthStateNotifier, AuthenticationState>((ref) {
  return AuthStateNotifier(ref);
});
