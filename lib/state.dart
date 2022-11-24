import 'package:ferry/ferry.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
// ignore: depend_on_referenced_packages
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

final gqlClientFP = FutureProvider<Client>((ref) async {
  Hive.init('hive_data');
  // OR, if using flutter
  // await Hive.initFlutter();

  final box = await Hive.openBox("graphql");

  final store = HiveStore(box);

  final cache = Cache(store: store, possibleTypes: possibleTypesMap);

  final link = HttpLink('[path/to/endpoint]');

  final client = Client(
    link: link,
    cache: cache,
  );

  return client;
});
