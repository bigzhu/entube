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

abstract class GArticlesReq
    implements
        Built<GArticlesReq, GArticlesReqBuilder>,
        _i1.OperationRequest<_i2.GArticlesData, _i3.GArticlesVars> {
  GArticlesReq._();

  factory GArticlesReq([Function(GArticlesReqBuilder b) updates]) =
      _$GArticlesReq;

  static void _initializeBuilder(GArticlesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Articles',
    )
    ..executeOnListen = true;
  @override
  _i3.GArticlesVars get vars;
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
  _i2.GArticlesData? Function(
    _i2.GArticlesData?,
    _i2.GArticlesData?,
  )? get updateResult;
  @override
  _i2.GArticlesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GArticlesData? parseData(Map<String, dynamic> json) =>
      _i2.GArticlesData.fromJson(json);
  static Serializer<GArticlesReq> get serializer => _$gArticlesReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GArticlesReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GArticlesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GArticlesReq.serializer,
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
