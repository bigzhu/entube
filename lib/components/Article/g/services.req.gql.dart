// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:entube/components/Article/g/services.ast.gql.dart' as _i5;
import 'package:entube/components/Article/g/services.data.gql.dart' as _i2;
import 'package:entube/components/Article/g/services.var.gql.dart' as _i3;
import 'package:entube/graphql/g/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'services.req.gql.g.dart';

abstract class GSentencesReq
    implements
        Built<GSentencesReq, GSentencesReqBuilder>,
        _i1.OperationRequest<_i2.GSentencesData, _i3.GSentencesVars> {
  GSentencesReq._();

  factory GSentencesReq([Function(GSentencesReqBuilder b) updates]) =
      _$GSentencesReq;

  static void _initializeBuilder(GSentencesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Sentences',
    )
    ..executeOnListen = true;
  @override
  _i3.GSentencesVars get vars;
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
  _i2.GSentencesData? Function(
    _i2.GSentencesData?,
    _i2.GSentencesData?,
  )? get updateResult;
  @override
  _i2.GSentencesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GSentencesData? parseData(Map<String, dynamic> json) =>
      _i2.GSentencesData.fromJson(json);
  static Serializer<GSentencesReq> get serializer => _$gSentencesReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GSentencesReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSentencesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GSentencesReq.serializer,
        json,
      );
}

abstract class GinsertArticlesReq
    implements
        Built<GinsertArticlesReq, GinsertArticlesReqBuilder>,
        _i1.OperationRequest<_i2.GinsertArticlesData, _i3.GinsertArticlesVars> {
  GinsertArticlesReq._();

  factory GinsertArticlesReq([Function(GinsertArticlesReqBuilder b) updates]) =
      _$GinsertArticlesReq;

  static void _initializeBuilder(GinsertArticlesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'insertArticles',
    )
    ..executeOnListen = true;
  @override
  _i3.GinsertArticlesVars get vars;
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
  _i2.GinsertArticlesData? Function(
    _i2.GinsertArticlesData?,
    _i2.GinsertArticlesData?,
  )? get updateResult;
  @override
  _i2.GinsertArticlesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GinsertArticlesData? parseData(Map<String, dynamic> json) =>
      _i2.GinsertArticlesData.fromJson(json);
  static Serializer<GinsertArticlesReq> get serializer =>
      _$ginsertArticlesReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GinsertArticlesReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GinsertArticlesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GinsertArticlesReq.serializer,
        json,
      );
}

abstract class GupdateSentencesReq
    implements
        Built<GupdateSentencesReq, GupdateSentencesReqBuilder>,
        _i1.OperationRequest<_i2.GupdateSentencesData,
            _i3.GupdateSentencesVars> {
  GupdateSentencesReq._();

  factory GupdateSentencesReq(
      [Function(GupdateSentencesReqBuilder b) updates]) = _$GupdateSentencesReq;

  static void _initializeBuilder(GupdateSentencesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'updateSentences',
    )
    ..executeOnListen = true;
  @override
  _i3.GupdateSentencesVars get vars;
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
  _i2.GupdateSentencesData? Function(
    _i2.GupdateSentencesData?,
    _i2.GupdateSentencesData?,
  )? get updateResult;
  @override
  _i2.GupdateSentencesData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GupdateSentencesData? parseData(Map<String, dynamic> json) =>
      _i2.GupdateSentencesData.fromJson(json);
  static Serializer<GupdateSentencesReq> get serializer =>
      _$gupdateSentencesReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GupdateSentencesReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GupdateSentencesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GupdateSentencesReq.serializer,
        json,
      );
}
