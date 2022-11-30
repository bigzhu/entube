import 'package:entube/graphql/schema.schema.gql.dart';
import 'package:entube/state.dart';
import 'package:ferry/ferry.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import './services.req.gql.dart';
import 'services.data.gql.dart';
import 'services.var.gql.dart';

final articleSP = StreamProvider.family<
    OperationResponse<GArticleSentencesData, GArticleSentencesVars>,
    Guuid>((ref, id) {
  final articlesReq = GArticleSentencesReq((b) => b..vars.id = id.toBuilder());
  final client = ref.watch(gqlClientP);
  return client.request(articlesReq);
});

// 因为多个句子有可能在一个播放高亮区间里, 所以这里是一个 list
final playingSentencesIndexStateProvider =
    StateProvider.family<List<int>, Guuid>((ref, articleId) {
  return <int>[];
});
