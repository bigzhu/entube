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
import 'package:gql/ast.dart' as _i7;
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

abstract class GdeleteUserArticleReq
    implements
        Built<GdeleteUserArticleReq, GdeleteUserArticleReqBuilder>,
        _i1.OperationRequest<_i2.GdeleteUserArticleData,
            _i3.GdeleteUserArticleVars> {
  GdeleteUserArticleReq._();

  factory GdeleteUserArticleReq(
          [Function(GdeleteUserArticleReqBuilder b) updates]) =
      _$GdeleteUserArticleReq;

  static void _initializeBuilder(GdeleteUserArticleReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'deleteUserArticle',
    )
    ..executeOnListen = true;
  @override
  _i3.GdeleteUserArticleVars get vars;
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
  _i2.GdeleteUserArticleData? Function(
    _i2.GdeleteUserArticleData?,
    _i2.GdeleteUserArticleData?,
  )? get updateResult;
  @override
  _i2.GdeleteUserArticleData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GdeleteUserArticleData? parseData(Map<String, dynamic> json) =>
      _i2.GdeleteUserArticleData.fromJson(json);
  static Serializer<GdeleteUserArticleReq> get serializer =>
      _$gdeleteUserArticleReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GdeleteUserArticleReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GdeleteUserArticleReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GdeleteUserArticleReq.serializer,
        json,
      );
}

abstract class GUserArticleFragmentReq
    implements
        Built<GUserArticleFragmentReq, GUserArticleFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GUserArticleFragmentData,
            _i3.GUserArticleFragmentVars> {
  GUserArticleFragmentReq._();

  factory GUserArticleFragmentReq(
          [Function(GUserArticleFragmentReqBuilder b) updates]) =
      _$GUserArticleFragmentReq;

  static void _initializeBuilder(GUserArticleFragmentReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'UserArticleFragment';
  @override
  _i3.GUserArticleFragmentVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GUserArticleFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GUserArticleFragmentData.fromJson(json);
  static Serializer<GUserArticleFragmentReq> get serializer =>
      _$gUserArticleFragmentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUserArticleFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserArticleFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUserArticleFragmentReq.serializer,
        json,
      );
}
