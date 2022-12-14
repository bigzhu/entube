// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:entube/components/ArticleItems/g/services.ast.gql.dart' as _i5;
import 'package:entube/components/ArticleItems/g/services.data.gql.dart' as _i2;
import 'package:entube/components/ArticleItems/g/services.var.gql.dart' as _i3;
import 'package:entube/graphql/g/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i7;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'services.req.gql.g.dart';

abstract class GArticleItemsReq
    implements
        Built<GArticleItemsReq, GArticleItemsReqBuilder>,
        _i1.OperationRequest<_i2.GArticleItemsData, _i3.GArticleItemsVars> {
  GArticleItemsReq._();

  factory GArticleItemsReq([Function(GArticleItemsReqBuilder b) updates]) =
      _$GArticleItemsReq;

  static void _initializeBuilder(GArticleItemsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'ArticleItems',
    )
    ..executeOnListen = true;
  @override
  _i3.GArticleItemsVars get vars;
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
  _i2.GArticleItemsData? Function(
    _i2.GArticleItemsData?,
    _i2.GArticleItemsData?,
  )? get updateResult;
  @override
  _i2.GArticleItemsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GArticleItemsData? parseData(Map<String, dynamic> json) =>
      _i2.GArticleItemsData.fromJson(json);
  static Serializer<GArticleItemsReq> get serializer =>
      _$gArticleItemsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GArticleItemsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GArticleItemsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GArticleItemsReq.serializer,
        json,
      );
}

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

abstract class GArticleFragmentReq
    implements
        Built<GArticleFragmentReq, GArticleFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GArticleFragmentData,
            _i3.GArticleFragmentVars> {
  GArticleFragmentReq._();

  factory GArticleFragmentReq(
      [Function(GArticleFragmentReqBuilder b) updates]) = _$GArticleFragmentReq;

  static void _initializeBuilder(GArticleFragmentReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'ArticleFragment';
  @override
  _i3.GArticleFragmentVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GArticleFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GArticleFragmentData.fromJson(json);
  static Serializer<GArticleFragmentReq> get serializer =>
      _$gArticleFragmentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GArticleFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GArticleFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GArticleFragmentReq.serializer,
        json,
      );
}
