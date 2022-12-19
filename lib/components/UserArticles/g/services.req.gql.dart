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

abstract class GUserArticlesReq
    implements
        Built<GUserArticlesReq, GUserArticlesReqBuilder>,
        _i1.OperationRequest<_i2.GUserArticlesData, _i3.GUserArticlesVars> {
  GUserArticlesReq._();

  factory GUserArticlesReq([Function(GUserArticlesReqBuilder b) updates]) =
      _$GUserArticlesReq;

  static void _initializeBuilder(GUserArticlesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UserArticles',
    )
    ..executeOnListen = true;
  @override
  _i3.GUserArticlesVars get vars;
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
  _i2.GUserArticlesData? Function(
    _i2.GUserArticlesData?,
    _i2.GUserArticlesData?,
  )? get updateResult;
  @override
  _i2.GUserArticlesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GUserArticlesData? parseData(Map<String, dynamic> json) =>
      _i2.GUserArticlesData.fromJson(json);
  static Serializer<GUserArticlesReq> get serializer =>
      _$gUserArticlesReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserArticlesReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserArticlesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserArticlesReq.serializer,
        json,
      );
}

abstract class GupsertUserArticlesReq
    implements
        Built<GupsertUserArticlesReq, GupsertUserArticlesReqBuilder>,
        _i1.OperationRequest<_i2.GupsertUserArticlesData,
            _i3.GupsertUserArticlesVars> {
  GupsertUserArticlesReq._();

  factory GupsertUserArticlesReq(
          [Function(GupsertUserArticlesReqBuilder b) updates]) =
      _$GupsertUserArticlesReq;

  static void _initializeBuilder(GupsertUserArticlesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'upsertUserArticles',
    )
    ..executeOnListen = true;
  @override
  _i3.GupsertUserArticlesVars get vars;
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
  _i2.GupsertUserArticlesData? Function(
    _i2.GupsertUserArticlesData?,
    _i2.GupsertUserArticlesData?,
  )? get updateResult;
  @override
  _i2.GupsertUserArticlesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GupsertUserArticlesData? parseData(Map<String, dynamic> json) =>
      _i2.GupsertUserArticlesData.fromJson(json);
  static Serializer<GupsertUserArticlesReq> get serializer =>
      _$gupsertUserArticlesReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GupsertUserArticlesReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GupsertUserArticlesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GupsertUserArticlesReq.serializer,
        json,
      );
}
