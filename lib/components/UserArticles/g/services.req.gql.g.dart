// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserArticlesReq> _$gUserArticlesReqSerializer =
    new _$GUserArticlesReqSerializer();
Serializer<GupsertUserArticlesReq> _$gupsertUserArticlesReqSerializer =
    new _$GupsertUserArticlesReqSerializer();
Serializer<GdeleteUserArticleReq> _$gdeleteUserArticleReqSerializer =
    new _$GdeleteUserArticleReqSerializer();
Serializer<GupdatePlayAtReq> _$gupdatePlayAtReqSerializer =
    new _$GupdatePlayAtReqSerializer();
Serializer<GUserArticleFragmentReq> _$gUserArticleFragmentReqSerializer =
    new _$GUserArticleFragmentReqSerializer();

class _$GUserArticlesReqSerializer
    implements StructuredSerializer<GUserArticlesReq> {
  @override
  final Iterable<Type> types = const [GUserArticlesReq, _$GUserArticlesReq];
  @override
  final String wireName = 'GUserArticlesReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserArticlesReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GUserArticlesVars)),
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
            specifiedType: const FullType(_i2.GUserArticlesData)));
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
  GUserArticlesReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserArticlesReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GUserArticlesVars))!
              as _i3.GUserArticlesVars);
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
                  specifiedType: const FullType(_i2.GUserArticlesData))!
              as _i2.GUserArticlesData);
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

class _$GupsertUserArticlesReqSerializer
    implements StructuredSerializer<GupsertUserArticlesReq> {
  @override
  final Iterable<Type> types = const [
    GupsertUserArticlesReq,
    _$GupsertUserArticlesReq
  ];
  @override
  final String wireName = 'GupsertUserArticlesReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupsertUserArticlesReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GupsertUserArticlesVars)),
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
            specifiedType: const FullType(_i2.GupsertUserArticlesData)));
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
  GupsertUserArticlesReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupsertUserArticlesReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GupsertUserArticlesVars))!
              as _i3.GupsertUserArticlesVars);
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
                  specifiedType: const FullType(_i2.GupsertUserArticlesData))!
              as _i2.GupsertUserArticlesData);
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

class _$GdeleteUserArticleReqSerializer
    implements StructuredSerializer<GdeleteUserArticleReq> {
  @override
  final Iterable<Type> types = const [
    GdeleteUserArticleReq,
    _$GdeleteUserArticleReq
  ];
  @override
  final String wireName = 'GdeleteUserArticleReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdeleteUserArticleReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GdeleteUserArticleVars)),
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
            specifiedType: const FullType(_i2.GdeleteUserArticleData)));
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
  GdeleteUserArticleReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeleteUserArticleReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GdeleteUserArticleVars))!
              as _i3.GdeleteUserArticleVars);
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
                  specifiedType: const FullType(_i2.GdeleteUserArticleData))!
              as _i2.GdeleteUserArticleData);
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

class _$GupdatePlayAtReqSerializer
    implements StructuredSerializer<GupdatePlayAtReq> {
  @override
  final Iterable<Type> types = const [GupdatePlayAtReq, _$GupdatePlayAtReq];
  @override
  final String wireName = 'GupdatePlayAtReq';

  @override
  Iterable<Object?> serialize(Serializers serializers, GupdatePlayAtReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GupdatePlayAtVars)),
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
            specifiedType: const FullType(_i2.GupdatePlayAtData)));
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
  GupdatePlayAtReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdatePlayAtReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GupdatePlayAtVars))!
              as _i3.GupdatePlayAtVars);
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
                  specifiedType: const FullType(_i2.GupdatePlayAtData))!
              as _i2.GupdatePlayAtData);
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

class _$GUserArticleFragmentReqSerializer
    implements StructuredSerializer<GUserArticleFragmentReq> {
  @override
  final Iterable<Type> types = const [
    GUserArticleFragmentReq,
    _$GUserArticleFragmentReq
  ];
  @override
  final String wireName = 'GUserArticleFragmentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserArticleFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GUserArticleFragmentVars)),
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
  GUserArticleFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserArticleFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GUserArticleFragmentVars))!
              as _i3.GUserArticleFragmentVars);
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

class _$GUserArticlesReq extends GUserArticlesReq {
  @override
  final _i3.GUserArticlesVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GUserArticlesData? Function(
      _i2.GUserArticlesData?, _i2.GUserArticlesData?)? updateResult;
  @override
  final _i2.GUserArticlesData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GUserArticlesReq(
          [void Function(GUserArticlesReqBuilder)? updates]) =>
      (new GUserArticlesReqBuilder()..update(updates))._build();

  _$GUserArticlesReq._(
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
    BuiltValueNullFieldError.checkNotNull(vars, r'GUserArticlesReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GUserArticlesReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GUserArticlesReq', 'executeOnListen');
  }

  @override
  GUserArticlesReq rebuild(void Function(GUserArticlesReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserArticlesReqBuilder toBuilder() =>
      new GUserArticlesReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GUserArticlesReq &&
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
    return (newBuiltValueToStringHelper(r'GUserArticlesReq')
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

class GUserArticlesReqBuilder
    implements Builder<GUserArticlesReq, GUserArticlesReqBuilder> {
  _$GUserArticlesReq? _$v;

  _i3.GUserArticlesVarsBuilder? _vars;
  _i3.GUserArticlesVarsBuilder get vars =>
      _$this._vars ??= new _i3.GUserArticlesVarsBuilder();
  set vars(_i3.GUserArticlesVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GUserArticlesData? Function(
      _i2.GUserArticlesData?, _i2.GUserArticlesData?)? _updateResult;
  _i2.GUserArticlesData? Function(
          _i2.GUserArticlesData?, _i2.GUserArticlesData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GUserArticlesData? Function(
                  _i2.GUserArticlesData?, _i2.GUserArticlesData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GUserArticlesDataBuilder? _optimisticResponse;
  _i2.GUserArticlesDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GUserArticlesDataBuilder();
  set optimisticResponse(_i2.GUserArticlesDataBuilder? optimisticResponse) =>
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

  GUserArticlesReqBuilder() {
    GUserArticlesReq._initializeBuilder(this);
  }

  GUserArticlesReqBuilder get _$this {
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
  void replace(GUserArticlesReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserArticlesReq;
  }

  @override
  void update(void Function(GUserArticlesReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserArticlesReq build() => _build();

  _$GUserArticlesReq _build() {
    _$GUserArticlesReq _$result;
    try {
      _$result = _$v ??
          new _$GUserArticlesReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GUserArticlesReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GUserArticlesReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserArticlesReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupsertUserArticlesReq extends GupsertUserArticlesReq {
  @override
  final _i3.GupsertUserArticlesVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GupsertUserArticlesData? Function(
      _i2.GupsertUserArticlesData?, _i2.GupsertUserArticlesData?)? updateResult;
  @override
  final _i2.GupsertUserArticlesData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GupsertUserArticlesReq(
          [void Function(GupsertUserArticlesReqBuilder)? updates]) =>
      (new GupsertUserArticlesReqBuilder()..update(updates))._build();

  _$GupsertUserArticlesReq._(
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
        vars, r'GupsertUserArticlesReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GupsertUserArticlesReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GupsertUserArticlesReq', 'executeOnListen');
  }

  @override
  GupsertUserArticlesReq rebuild(
          void Function(GupsertUserArticlesReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupsertUserArticlesReqBuilder toBuilder() =>
      new GupsertUserArticlesReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GupsertUserArticlesReq &&
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
    return (newBuiltValueToStringHelper(r'GupsertUserArticlesReq')
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

class GupsertUserArticlesReqBuilder
    implements Builder<GupsertUserArticlesReq, GupsertUserArticlesReqBuilder> {
  _$GupsertUserArticlesReq? _$v;

  _i3.GupsertUserArticlesVarsBuilder? _vars;
  _i3.GupsertUserArticlesVarsBuilder get vars =>
      _$this._vars ??= new _i3.GupsertUserArticlesVarsBuilder();
  set vars(_i3.GupsertUserArticlesVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GupsertUserArticlesData? Function(
          _i2.GupsertUserArticlesData?, _i2.GupsertUserArticlesData?)?
      _updateResult;
  _i2.GupsertUserArticlesData? Function(
          _i2.GupsertUserArticlesData?, _i2.GupsertUserArticlesData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GupsertUserArticlesData? Function(
                  _i2.GupsertUserArticlesData?, _i2.GupsertUserArticlesData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GupsertUserArticlesDataBuilder? _optimisticResponse;
  _i2.GupsertUserArticlesDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GupsertUserArticlesDataBuilder();
  set optimisticResponse(
          _i2.GupsertUserArticlesDataBuilder? optimisticResponse) =>
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

  GupsertUserArticlesReqBuilder() {
    GupsertUserArticlesReq._initializeBuilder(this);
  }

  GupsertUserArticlesReqBuilder get _$this {
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
  void replace(GupsertUserArticlesReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupsertUserArticlesReq;
  }

  @override
  void update(void Function(GupsertUserArticlesReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupsertUserArticlesReq build() => _build();

  _$GupsertUserArticlesReq _build() {
    _$GupsertUserArticlesReq _$result;
    try {
      _$result = _$v ??
          new _$GupsertUserArticlesReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GupsertUserArticlesReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GupsertUserArticlesReq',
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
            r'GupsertUserArticlesReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GdeleteUserArticleReq extends GdeleteUserArticleReq {
  @override
  final _i3.GdeleteUserArticleVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GdeleteUserArticleData? Function(
      _i2.GdeleteUserArticleData?, _i2.GdeleteUserArticleData?)? updateResult;
  @override
  final _i2.GdeleteUserArticleData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GdeleteUserArticleReq(
          [void Function(GdeleteUserArticleReqBuilder)? updates]) =>
      (new GdeleteUserArticleReqBuilder()..update(updates))._build();

  _$GdeleteUserArticleReq._(
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
        vars, r'GdeleteUserArticleReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GdeleteUserArticleReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GdeleteUserArticleReq', 'executeOnListen');
  }

  @override
  GdeleteUserArticleReq rebuild(
          void Function(GdeleteUserArticleReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteUserArticleReqBuilder toBuilder() =>
      new GdeleteUserArticleReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GdeleteUserArticleReq &&
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
    return (newBuiltValueToStringHelper(r'GdeleteUserArticleReq')
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

class GdeleteUserArticleReqBuilder
    implements Builder<GdeleteUserArticleReq, GdeleteUserArticleReqBuilder> {
  _$GdeleteUserArticleReq? _$v;

  _i3.GdeleteUserArticleVarsBuilder? _vars;
  _i3.GdeleteUserArticleVarsBuilder get vars =>
      _$this._vars ??= new _i3.GdeleteUserArticleVarsBuilder();
  set vars(_i3.GdeleteUserArticleVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GdeleteUserArticleData? Function(
      _i2.GdeleteUserArticleData?, _i2.GdeleteUserArticleData?)? _updateResult;
  _i2.GdeleteUserArticleData? Function(
          _i2.GdeleteUserArticleData?, _i2.GdeleteUserArticleData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GdeleteUserArticleData? Function(
                  _i2.GdeleteUserArticleData?, _i2.GdeleteUserArticleData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GdeleteUserArticleDataBuilder? _optimisticResponse;
  _i2.GdeleteUserArticleDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GdeleteUserArticleDataBuilder();
  set optimisticResponse(
          _i2.GdeleteUserArticleDataBuilder? optimisticResponse) =>
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

  GdeleteUserArticleReqBuilder() {
    GdeleteUserArticleReq._initializeBuilder(this);
  }

  GdeleteUserArticleReqBuilder get _$this {
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
  void replace(GdeleteUserArticleReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteUserArticleReq;
  }

  @override
  void update(void Function(GdeleteUserArticleReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdeleteUserArticleReq build() => _build();

  _$GdeleteUserArticleReq _build() {
    _$GdeleteUserArticleReq _$result;
    try {
      _$result = _$v ??
          new _$GdeleteUserArticleReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GdeleteUserArticleReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  r'GdeleteUserArticleReq',
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
            r'GdeleteUserArticleReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupdatePlayAtReq extends GupdatePlayAtReq {
  @override
  final _i3.GupdatePlayAtVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GupdatePlayAtData? Function(
      _i2.GupdatePlayAtData?, _i2.GupdatePlayAtData?)? updateResult;
  @override
  final _i2.GupdatePlayAtData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GupdatePlayAtReq(
          [void Function(GupdatePlayAtReqBuilder)? updates]) =>
      (new GupdatePlayAtReqBuilder()..update(updates))._build();

  _$GupdatePlayAtReq._(
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
    BuiltValueNullFieldError.checkNotNull(vars, r'GupdatePlayAtReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, r'GupdatePlayAtReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, r'GupdatePlayAtReq', 'executeOnListen');
  }

  @override
  GupdatePlayAtReq rebuild(void Function(GupdatePlayAtReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdatePlayAtReqBuilder toBuilder() =>
      new GupdatePlayAtReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GupdatePlayAtReq &&
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
    return (newBuiltValueToStringHelper(r'GupdatePlayAtReq')
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

class GupdatePlayAtReqBuilder
    implements Builder<GupdatePlayAtReq, GupdatePlayAtReqBuilder> {
  _$GupdatePlayAtReq? _$v;

  _i3.GupdatePlayAtVarsBuilder? _vars;
  _i3.GupdatePlayAtVarsBuilder get vars =>
      _$this._vars ??= new _i3.GupdatePlayAtVarsBuilder();
  set vars(_i3.GupdatePlayAtVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GupdatePlayAtData? Function(
      _i2.GupdatePlayAtData?, _i2.GupdatePlayAtData?)? _updateResult;
  _i2.GupdatePlayAtData? Function(
          _i2.GupdatePlayAtData?, _i2.GupdatePlayAtData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GupdatePlayAtData? Function(
                  _i2.GupdatePlayAtData?, _i2.GupdatePlayAtData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GupdatePlayAtDataBuilder? _optimisticResponse;
  _i2.GupdatePlayAtDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GupdatePlayAtDataBuilder();
  set optimisticResponse(_i2.GupdatePlayAtDataBuilder? optimisticResponse) =>
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

  GupdatePlayAtReqBuilder() {
    GupdatePlayAtReq._initializeBuilder(this);
  }

  GupdatePlayAtReqBuilder get _$this {
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
  void replace(GupdatePlayAtReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdatePlayAtReq;
  }

  @override
  void update(void Function(GupdatePlayAtReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdatePlayAtReq build() => _build();

  _$GupdatePlayAtReq _build() {
    _$GupdatePlayAtReq _$result;
    try {
      _$result = _$v ??
          new _$GupdatePlayAtReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, r'GupdatePlayAtReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen, r'GupdatePlayAtReq', 'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupdatePlayAtReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserArticleFragmentReq extends GUserArticleFragmentReq {
  @override
  final _i3.GUserArticleFragmentVars vars;
  @override
  final _i7.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GUserArticleFragmentReq(
          [void Function(GUserArticleFragmentReqBuilder)? updates]) =>
      (new GUserArticleFragmentReqBuilder()..update(updates))._build();

  _$GUserArticleFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GUserArticleFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GUserArticleFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GUserArticleFragmentReq', 'idFields');
  }

  @override
  GUserArticleFragmentReq rebuild(
          void Function(GUserArticleFragmentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserArticleFragmentReqBuilder toBuilder() =>
      new GUserArticleFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserArticleFragmentReq &&
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
    return (newBuiltValueToStringHelper(r'GUserArticleFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GUserArticleFragmentReqBuilder
    implements
        Builder<GUserArticleFragmentReq, GUserArticleFragmentReqBuilder> {
  _$GUserArticleFragmentReq? _$v;

  _i3.GUserArticleFragmentVarsBuilder? _vars;
  _i3.GUserArticleFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GUserArticleFragmentVarsBuilder();
  set vars(_i3.GUserArticleFragmentVarsBuilder? vars) => _$this._vars = vars;

  _i7.DocumentNode? _document;
  _i7.DocumentNode? get document => _$this._document;
  set document(_i7.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GUserArticleFragmentReqBuilder() {
    GUserArticleFragmentReq._initializeBuilder(this);
  }

  GUserArticleFragmentReqBuilder get _$this {
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
  void replace(GUserArticleFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserArticleFragmentReq;
  }

  @override
  void update(void Function(GUserArticleFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserArticleFragmentReq build() => _build();

  _$GUserArticleFragmentReq _build() {
    _$GUserArticleFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GUserArticleFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GUserArticleFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GUserArticleFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserArticleFragmentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
