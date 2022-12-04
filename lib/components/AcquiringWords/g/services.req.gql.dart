// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:entube/components/AcquiringWords/g/services.ast.gql.dart'
    as _i5;
import 'package:entube/components/AcquiringWords/g/services.data.gql.dart'
    as _i2;
import 'package:entube/components/AcquiringWords/g/services.var.gql.dart'
    as _i3;
import 'package:entube/graphql/g/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i7;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'services.req.gql.g.dart';

abstract class GAcquiringWordsReq
    implements
        Built<GAcquiringWordsReq, GAcquiringWordsReqBuilder>,
        _i1.OperationRequest<_i2.GAcquiringWordsData, _i3.GAcquiringWordsVars> {
  GAcquiringWordsReq._();

  factory GAcquiringWordsReq([Function(GAcquiringWordsReqBuilder b) updates]) =
      _$GAcquiringWordsReq;

  static void _initializeBuilder(GAcquiringWordsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'AcquiringWords',
    )
    ..executeOnListen = true;
  @override
  _i3.GAcquiringWordsVars get vars;
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
  _i2.GAcquiringWordsData? Function(
    _i2.GAcquiringWordsData?,
    _i2.GAcquiringWordsData?,
  )? get updateResult;
  @override
  _i2.GAcquiringWordsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GAcquiringWordsData? parseData(Map<String, dynamic> json) =>
      _i2.GAcquiringWordsData.fromJson(json);
  static Serializer<GAcquiringWordsReq> get serializer =>
      _$gAcquiringWordsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GAcquiringWordsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAcquiringWordsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GAcquiringWordsReq.serializer,
        json,
      );
}

abstract class GupsertAcquiringWordsReq
    implements
        Built<GupsertAcquiringWordsReq, GupsertAcquiringWordsReqBuilder>,
        _i1.OperationRequest<_i2.GupsertAcquiringWordsData,
            _i3.GupsertAcquiringWordsVars> {
  GupsertAcquiringWordsReq._();

  factory GupsertAcquiringWordsReq(
          [Function(GupsertAcquiringWordsReqBuilder b) updates]) =
      _$GupsertAcquiringWordsReq;

  static void _initializeBuilder(GupsertAcquiringWordsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'upsertAcquiringWords',
    )
    ..executeOnListen = true;
  @override
  _i3.GupsertAcquiringWordsVars get vars;
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
  _i2.GupsertAcquiringWordsData? Function(
    _i2.GupsertAcquiringWordsData?,
    _i2.GupsertAcquiringWordsData?,
  )? get updateResult;
  @override
  _i2.GupsertAcquiringWordsData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  _i2.GupsertAcquiringWordsData? parseData(Map<String, dynamic> json) =>
      _i2.GupsertAcquiringWordsData.fromJson(json);
  static Serializer<GupsertAcquiringWordsReq> get serializer =>
      _$gupsertAcquiringWordsReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GupsertAcquiringWordsReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GupsertAcquiringWordsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GupsertAcquiringWordsReq.serializer,
        json,
      );
}

abstract class GWordFragmentReq
    implements
        Built<GWordFragmentReq, GWordFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GWordFragmentData, _i3.GWordFragmentVars> {
  GWordFragmentReq._();

  factory GWordFragmentReq([Function(GWordFragmentReqBuilder b) updates]) =
      _$GWordFragmentReq;

  static void _initializeBuilder(GWordFragmentReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'WordFragment';
  @override
  _i3.GWordFragmentVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GWordFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GWordFragmentData.fromJson(json);
  static Serializer<GWordFragmentReq> get serializer =>
      _$gWordFragmentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GWordFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);
  static GWordFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GWordFragmentReq.serializer,
        json,
      );
}
