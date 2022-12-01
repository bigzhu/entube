import 'package:entube/state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import './services.req.gql.dart';
import 'services.data.gql.dart';
import 'package:built_collection/built_collection.dart';

const String loadingTitle = '☕ 🍕   loading new YouTube ......';
final articleItemsScrollControllerProvider =
    Provider<ItemScrollController>((ref) => ItemScrollController());

final articleItemsStreamP = Provider((ref) {
  final articlesReq = GArticleItemsReq(
    (b) => b
      ..vars.limit = 10
      ..vars.offset = 0,
  );
  final client = ref.watch(gqlClientP);
  return client.request(articlesReq);
});

final articleItemsSP = StateProvider((ref) {
  return BuiltList(<GArticleItemsData_articles>[]);
});
