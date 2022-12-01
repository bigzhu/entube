import 'package:entube/graphql/g/schema.schema.gql.dart';
import 'package:entube/state.dart';
import 'package:ferry/ferry.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'g/services.data.gql.dart';
import 'g/services.req.gql.dart';
import 'g/services.var.gql.dart';

final sentencesP = Provider.family<
    Stream<OperationResponse<GSentencesData, GSentencesVars>>,
    String>((ref, id) {
  final articlesReq = GSentencesReq((b) => b..vars.id = Guuid(id).toBuilder());
  final client = ref.watch(gqlClientP);
  return client.request(articlesReq);
});
