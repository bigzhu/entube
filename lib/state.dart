import 'package:entube/graphql/g/schema.schema.gql.dart' show possibleTypesMap;
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
//import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
//import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
//// ignore: depend_on_referenced_packages
//import 'package:nhost_graphql_adapter/nhost_graphql_adapter.dart';
import 'package:entube/utils/nhost/links.dart';
import 'package:entube/utils/nhost/nhost_sdk/nhost_sdk.dart';

final backendUrlP = Provider<String>((ref) {
  return 'https://jysijxgffjwavdtqcuir.nhost.run';
});

final nhostClientP = Provider<NhostClient>((ref) {
  final backendUrl = ref.watch(backendUrlP);
  return NhostClient(
      backendUrl: backendUrl, authStore: HiveAuthStore(ref.watch(authBoxSP)!));
});

final nhostGithubSignInUrlP = Provider<String>((ref) {
  final backendUrl = ref.watch(backendUrlP);
  return "$backendUrl/v1/auth/signin/provider/github/";
});

final nhostGoogleSignInUrlP = Provider<String>((ref) {
  final backendUrl = ref.watch(backendUrlP);
  return "$backendUrl/v1/auth/signin/provider/google/";
});

final gqlClientP = Provider<Client>((ref) {
  final box = ref.watch(graphqlBoxSP);

  final store = HiveStore(box!);

  final cache = Cache(store: store, possibleTypes: possibleTypesMap);

  final nhostLink = combinedLinkForNhost(ref.watch(nhostClientP));
  final client = Client(
    link: nhostLink,
    cache: cache,
  );

  return client;
});

final graphqlBoxSP = StateProvider<Box?>(
  // We return the default sort type, here name.
  (ref) => null,
);

final authBoxSP = StateProvider<Box?>(
  // We return the default sort type, here name.
  (ref) => null,
);

final openHiveBoxP = Provider<Future<String>>((ref) async {
  await Hive.initFlutter();
  final graphqlBox = await Hive.openBox("graphql");
  ref.read(graphqlBoxSP.notifier).state = graphqlBox;
  final authBox = await Hive.openBox("graphql");
  ref.read(authBoxSP.notifier).state = authBox;
  return 'done';
});

class HiveAuthStore implements AuthStore {
  HiveAuthStore(this.authBox);
  late Box authBox;
  @override
  String? getString(String key) {
    return authBox.get(key);
  }

  @override
  Future<void> setString(String key, String value) async {
    await authBox.put(key, value);
  }

  @override
  Future<void> removeItem(String key) async {
    await authBox.delete(key);
  }
}
