import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nhost_graphql_adapter/nhost_graphql_adapter.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:nhost_sdk/nhost_sdk.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final nhostClientP = Provider<NhostClient>((ref) {
  return NhostClient(backendUrl: 'https://jysijxgffjwavdtqcuir.nhost.run');
});

final gqlClientP = Provider<GraphQLClient>((ref) {
  final nhostLink = combinedLinkForNhost(ref.watch(nhostClientP));
  return GraphQLClient(
    link: nhostLink,
    cache: GraphQLCache(),
  );
});
