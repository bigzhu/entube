import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'g/services.data.gql.dart';

final userArticlesSP = StateProvider((ref) {
  return <GUserArticlesData_user_articles>[];
});
