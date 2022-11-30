// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:entube/components/Article/services.ast.gql.dart' as _i5;
import 'package:entube/components/Article/services.data.gql.dart' as _i2;
import 'package:entube/components/Article/services.var.gql.dart' as _i3;
import 'package:entube/graphql/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'services.req.gql.g.dart';

abstract class GArticleSentencesReq
    implements
        Built<GArticleSentencesReq, GArticleSentencesReqBuilder>,
        _i1.OperationRequest<_i2.GArticleSentencesData,
            _i3.GArticleSentencesVars> {
  GArticleSentencesReq._();

  factory GArticleSentencesReq(
          [Function(GArticleSentencesReqBuilder b) updates]) =
      _$GArticleSentencesReq;

  static void _initializeBuilder(GArticleSentencesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ArticleSentences',
    )
    ..executeOnListen = true;
  @override
  _i3.GArticleSentencesVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
      );
  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GArticleSentencesData? Function(
    _i2.GArticleSentencesData?,
    _i2.GArticleSentencesData?,
  )? get updateResult;
  @override
  _i2.GArticleSentencesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GArticleSentencesData? parseData(Map<String, dynamic> json) =>
      _i2.GArticleSentencesData.fromJson(json);
  static Serializer<GArticleSentencesReq> get serializer =>
      _$gArticleSentencesReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GArticleSentencesReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GArticleSentencesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GArticleSentencesReq.serializer,
        json,
      );
}
