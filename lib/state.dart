import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:nhost_graphql_adapter/nhost_graphql_adapter.dart';
import 'package:nhost_sdk/nhost_sdk.dart';

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
