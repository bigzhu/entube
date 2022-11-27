import 'package:entube/state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import './services.req.gql.dart';

const String loadingTitle = '☕ 🍕   loading new YouTube ......';
final articleItemsScrollControllerProvider =
    Provider<ItemScrollController>((ref) => ItemScrollController());

final articleItemsSP = StreamProvider((ref) {
  final articlesReq = GArticlesReq(
    (b) => b
      ..vars.limit = 10
      ..vars.offset = 0,
  );
  final client = ref.watch(gqlClientP);
  return client.request(articlesReq);
});
