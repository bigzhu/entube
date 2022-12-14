// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:entube/components/UserArticles/g/services.ast.gql.dart' as _i5;
import 'package:entube/components/UserArticles/g/services.data.gql.dart' as _i2;
import 'package:entube/components/UserArticles/g/services.var.gql.dart' as _i3;
import 'package:entube/graphql/g/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'services.req.gql.g.dart';

abstract class GUserArticleItemsReq
    implements
        Built<GUserArticleItemsReq, GUserArticleItemsReqBuilder>,
        _i1.OperationRequest<_i2.GUserArticleItemsData,
            _i3.GUserArticleItemsVars> {
  GUserArticleItemsReq._();

  factory GUserArticleItemsReq(
          [Function(GUserArticleItemsReqBuilder b) updates]) =
      _$GUserArticleItemsReq;

  static void _initializeBuilder(GUserArticleItemsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UserArticleItems',
    )
    ..executeOnListen = true;
  @override
  _i3.GUserArticleItemsVars get vars;
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
  _i2.GUserArticleItemsData? Function(
    _i2.GUserArticleItemsData?,
    _i2.GUserArticleItemsData?,
  )? get updateResult;
  @override
  _i2.GUserArticleItemsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GUserArticleItemsData? parseData(Map<String, dynamic> json) =>
      _i2.GUserArticleItemsData.fromJson(json);
  static Serializer<GUserArticleItemsReq> get serializer =>
      _$gUserArticleItemsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserArticleItemsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserArticleItemsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserArticleItemsReq.serializer,
        json,
      );
}
