// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAcquiringWordsReq> _$gAcquiringWordsReqSerializer =
    new _$GAcquiringWordsReqSerializer();
Serializer<GupsertAcquiringWordsReq> _$gupsertAcquiringWordsReqSerializer =
    new _$GupsertAcquiringWordsReqSerializer();
Serializer<GWordFragmentReq> _$gWordFragmentReqSerializer =
    new _$GWordFragmentReqSerializer();

class _$GAcquiringWordsReqSerializer
    implements StructuredSerializer<GAcquiringWordsReq> {
  @override
  final Iterable<Type> types = const [GAcquiringWordsReq, _$GAcquiringWordsReq];
  @override
  final String wireName = 'GAcquiringWordsReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAcquiringWordsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GAcquiringWordsVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GAcquiringWordsData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GAcquiringWordsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAcquiringWordsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GAcquiringWordsVars))!
              as _i3.GAcquiringWordsVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GAcquiringWordsData))!
              as _i2.GAcquiringWordsData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GupsertAcquiringWordsReqSerializer
    implements StructuredSerializer<GupsertAcquiringWordsReq> {
  @override
  final Iterable<Type> types = const [
    GupsertAcquiringWordsReq,
    _$GupsertAcquiringWordsReq
  ];
  @override
  final String wireName = 'GupsertAcquiringWordsReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupsertAcquiringWordsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GupsertAcquiringWordsVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GupsertAcquiringWordsData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GupsertAcquiringWordsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupsertAcquiringWordsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GupsertAcquiringWordsVars))!
              as _i3.GupsertAcquiringWordsVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation))! as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GupsertAcquiringWordsData))!
              as _i2.GupsertAcquiringWordsData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GWordFragmentReqSerializer
    implements StructuredSerializer<GWordFragmentReq> {
  @override
  final Iterable<Type> types = const [GWordFragmentReq, _$GWordFragmentReq];
  @override
  final String wireName = 'GWordFragmentReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GWordFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GWordFragmentVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i7.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GWordFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GWordFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GWordFragmentVars))!
              as _i3.GWordFragmentVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i7.DocumentNode))!
              as _i7.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GAcquiringWordsReq extends GAcquiringWordsReq {
  @override
  final _i3.GAcquiringWordsVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GAcquiringWordsData? Function(
      _i2.GAcquiringWordsData?, _i2.GAcquiringWordsData?)? updateResult;
  @override
  final _i2.GAcquiringWordsData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GAcquiringWordsReq(
          [void Function(GAcquiringWordsReqBuilder)? updates]) =>
      (new GAcquiringWordsReqBuilder()..update(updates))._build();

  _$GAcquiringWordsReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GAcquiringWordsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GAcquiringWordsReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GAcquiringWordsReq', 'executeOnListen');
  }

  @override
  GAcquiringWordsReq rebuild(
          void Function(GAcquiringWordsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAcquiringWordsReqBuilder toBuilder() =>
      new GAcquiringWordsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GAcquiringWordsReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, vars.hashCode), operation.hashCode),
                                requestId.hashCode),
                            updateResult.hashCode),
                        optimisticResponse.hashCode),
                    updateCacheHandlerKey.hashCode),
                updateCacheHandlerContext.hashCode),
            fetchPolicy.hashCode),
        executeOnListen.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAcquiringWordsReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GAcquiringWordsReqBuilder
    implements Builder<GAcquiringWordsReq, GAcquiringWordsReqBuilder> {
  _$GAcquiringWordsReq? _$v;

  _i3.GAcquiringWordsVarsBuilder? _vars;
  _i3.GAcquiringWordsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GAcquiringWordsVarsBuilder();
  set vars(_i3.GAcquiringWordsVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GAcquiringWordsData? Function(
      _i2.GAcquiringWordsData?, _i2.GAcquiringWordsData?)? _updateResult;
  _i2.GAcquiringWordsData? Function(
          _i2.GAcquiringWordsData?, _i2.GAcquiringWordsData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GAcquiringWordsData? Function(
                  _i2.GAcquiringWordsData?, _i2.GAcquiringWordsData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GAcquiringWordsDataBuilder? _optimisticResponse;
  _i2.GAcquiringWordsDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GAcquiringWordsDataBuilder();
  set optimisticResponse(_i2.GAcquiringWordsDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GAcquiringWordsReqBuilder() {
    GAcquiringWordsReq._initializeBuilder(this);
  }

  GAcquiringWordsReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAcquiringWordsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAcquiringWordsReq;
  }

  @override
  void update(void Function(GAcquiringWordsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAcquiringWordsReq build() => _build();

  _$GAcquiringWordsReq _build() {
    _$GAcquiringWordsReq _$result;
    try {
      _$result = _$v ??
          new _$GAcquiringWordsReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GAcquiringWordsReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GAcquiringWordsReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAcquiringWordsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupsertAcquiringWordsReq extends GupsertAcquiringWordsReq {
  @override
  final _i3.GupsertAcquiringWordsVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GupsertAcquiringWordsData? Function(
          _i2.GupsertAcquiringWordsData?, _i2.GupsertAcquiringWordsData?)?
      updateResult;
  @override
  final _i2.GupsertAcquiringWordsData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GupsertAcquiringWordsReq(
          [void Function(GupsertAcquiringWordsReqBuilder)? updates]) =>
      (new GupsertAcquiringWordsReqBuilder()..update(updates))._build();

  _$GupsertAcquiringWordsReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GupsertAcquiringWordsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GupsertAcquiringWordsReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GupsertAcquiringWordsReq', 'executeOnListen');
  }

  @override
  GupsertAcquiringWordsReq rebuild(
          void Function(GupsertAcquiringWordsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupsertAcquiringWordsReqBuilder toBuilder() =>
      new GupsertAcquiringWordsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GupsertAcquiringWordsReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, vars.hashCode), operation.hashCode),
                                requestId.hashCode),
                            updateResult.hashCode),
                        optimisticResponse.hashCode),
                    updateCacheHandlerKey.hashCode),
                updateCacheHandlerContext.hashCode),
            fetchPolicy.hashCode),
        executeOnListen.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GupsertAcquiringWordsReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GupsertAcquiringWordsReqBuilder
    implements
        Builder<GupsertAcquiringWordsReq, GupsertAcquiringWordsReqBuilder> {
  _$GupsertAcquiringWordsReq? _$v;

  _i3.GupsertAcquiringWordsVarsBuilder? _vars;
  _i3.GupsertAcquiringWordsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GupsertAcquiringWordsVarsBuilder();
  set vars(_i3.GupsertAcquiringWordsVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GupsertAcquiringWordsData? Function(
          _i2.GupsertAcquiringWordsData?, _i2.GupsertAcquiringWordsData?)?
      _updateResult;
  _i2.GupsertAcquiringWordsData? Function(
          _i2.GupsertAcquiringWordsData?, _i2.GupsertAcquiringWordsData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GupsertAcquiringWordsData? Function(
                  _i2.GupsertAcquiringWordsData?,
                  _i2.GupsertAcquiringWordsData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GupsertAcquiringWordsDataBuilder? _optimisticResponse;
  _i2.GupsertAcquiringWordsDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GupsertAcquiringWordsDataBuilder();
  set optimisticResponse(
          _i2.GupsertAcquiringWordsDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GupsertAcquiringWordsReqBuilder() {
    GupsertAcquiringWordsReq._initializeBuilder(this);
  }

  GupsertAcquiringWordsReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupsertAcquiringWordsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupsertAcquiringWordsReq;
  }

  @override
  void update(void Function(GupsertAcquiringWordsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupsertAcquiringWordsReq build() => _build();

  _$GupsertAcquiringWordsReq _build() {
    _$GupsertAcquiringWordsReq _$result;
    try {
      _$result = _$v ??
          new _$GupsertAcquiringWordsReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GupsertAcquiringWordsReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GupsertAcquiringWordsReq',
                  'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupsertAcquiringWordsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GWordFragmentReq extends GWordFragmentReq {
  @override
  final _i3.GWordFragmentVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GWordFragmentReq(
          [void Function(GWordFragmentReqBuilder)? updates]) =>
      (new GWordFragmentReqBuilder()..update(updates))._build();

  _$GWordFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GWordFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GWordFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GWordFragmentReq', 'idFields');
  }

  @override
  GWordFragmentReq rebuild(void Function(GWordFragmentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GWordFragmentReqBuilder toBuilder() =>
      new GWordFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GWordFragmentReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, vars.hashCode), document.hashCode),
            fragmentName.hashCode),
        idFields.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GWordFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GWordFragmentReqBuilder
    implements Builder<GWordFragmentReq, GWordFragmentReqBuilder> {
  _$GWordFragmentReq? _$v;

  _i3.GWordFragmentVarsBuilder? _vars;
  _i3.GWordFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GWordFragmentVarsBuilder();
  set vars(_i3.GWordFragmentVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GWordFragmentReqBuilder() {
    GWordFragmentReq._initializeBuilder(this);
  }

  GWordFragmentReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GWordFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GWordFragmentReq;
  }

  @override
  void update(void Function(GWordFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GWordFragmentReq build() => _build();

  _$GWordFragmentReq _build() {
    _$GWordFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GWordFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GWordFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GWordFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GWordFragmentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
