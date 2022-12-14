import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'g/services.data.gql.dart';

const String loadingTitle = '☕ 🍕 loading new YouTube ......';
final articleItemsScrollCP =
    Provider<ItemScrollController>((ref) => ItemScrollController());

final articleItemsSP = StateProvider((ref) {
  return <GArticlesData_articles>[];
});
