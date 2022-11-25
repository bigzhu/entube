import 'package:entube/graphql/schema.schema.gql.dart' show possibleTypesMap;
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
import 'package:shared_preferences/shared_preferences.dart';

final backendUrlP = Provider<String>((ref) {
  return 'https://jysijxgffjwavdtqcuir.nhost.run';
});

final nhostClientP = Provider<NhostClient>((ref) {
  final backendUrl = ref.watch(backendUrlP);
  return NhostClient(
      backendUrl: backendUrl, authStore: SharedPreferencesAuthStore());
});

final nhostGithubSignInUrlP = Provider<String>((ref) {
  final backendUrl = ref.watch(backendUrlP);
  return "$backendUrl/v1/auth/signin/provider/github/";
});
final nhostGoogleSignInUrlP = Provider<String>((ref) {
  final backendUrl = ref.watch(backendUrlP);
  return "$backendUrl/v1/auth/signin/provider/google/";
});

final gqlClientP = Provider<Future<Client>>((ref) async {
  await Hive.initFlutter();

  final box = await Hive.openBox("graphql");

  final store = HiveStore(box);

  final cache = Cache(store: store, possibleTypes: possibleTypesMap);

  final nhostLink = combinedLinkForNhost(ref.watch(nhostClientP));
  final client = Client(
    link: nhostLink,
    cache: cache,
  );

  return client;
});

class SharedPreferencesAuthStore implements AuthStore {
  @override
  Future<String?> getString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  @override
  Future<void> setString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  @override
  Future<void> removeItem(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }
}
