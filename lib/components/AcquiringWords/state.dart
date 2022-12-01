import 'package:entube/components/AcquiringWords/g/services.req.gql.dart';
import 'package:entube/state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final acquiringWordsStreamP = Provider((ref) {
  final articlesReq = GAcquiringWordsReq();
  final client = ref.watch(gqlClientP);
  return client.request(articlesReq);
});
