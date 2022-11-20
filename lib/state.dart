import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nhost_graphql_adapter/nhost_graphql_adapter.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:nhost_sdk/nhost_sdk.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final backendUrlP = Provider<String>((ref) {
  return 'https://jysijxgffjwavdtqcuir.nhost.run';
});

final nhostClientP = Provider<NhostClient>((ref) {
  final backendUrl = ref.watch(backendUrlP);
  return NhostClient(backendUrl: backendUrl);
});

final nhostGithubSignInUrlP = Provider<String>((ref) {
  final backendUrl = ref.watch(backendUrlP);
  return "$backendUrl/v1/auth/signin/provider/github/";
});
final nhostGoogleSignInUrlP = Provider<String>((ref) {
  final backendUrl = ref.watch(backendUrlP);
  return "$backendUrl/v1/auth/signin/provider/google/";
});

final gqlClientP = Provider<GraphQLClient>((ref) {
  final nhostLink = combinedLinkForNhost(ref.watch(nhostClientP));
  return GraphQLClient(
    link: nhostLink,
    cache: GraphQLCache(),
  );
});

final authP = Provider<AuthClient>((ref) {
  return ref.watch(nhostClientP).auth;
});

class AuthStateNotifier extends StateNotifier<AuthenticationState> {
  AuthStateNotifier(this.ref) : super(ref.watch(authP).authenticationState) {
    auth = ref.watch(authP);
  }
  final Ref ref;
  late AuthClient auth;

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

final authSNP =
    StateNotifierProvider<AuthStateNotifier, AuthenticationState>((ref) {
  return AuthStateNotifier(ref);
});
