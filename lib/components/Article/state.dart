import 'package:entube/components/Article/services.data.gql.dart';
import 'package:entube/components/Article/services.var.gql.dart';
import 'package:entube/graphql/schema.schema.gql.dart';
import 'package:entube/state.dart';
import 'package:ferry/ferry.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import './services.req.gql.dart';

final sentencesP = Provider.family<
    Stream<OperationResponse<GSentencesData, GSentencesVars>>,
    Guuid>((ref, id) {
  final articlesReq = GSentencesReq((b) => b..vars.id = id.toBuilder());
  final client = ref.watch(gqlClientP);
  return client.request(articlesReq);
});

// 因为多个句子有可能在一个播放高亮区间里, 所以这里是一个 list
final playingSentencesIndexStateProvider =
    StateProvider.family<List<int>, Guuid>((ref, articleId) {
  return <int>[];
});
