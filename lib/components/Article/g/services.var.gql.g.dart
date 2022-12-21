// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSentencesVars> _$gSentencesVarsSerializer =
    new _$GSentencesVarsSerializer();
Serializer<GinsertArticlesVars> _$ginsertArticlesVarsSerializer =
    new _$GinsertArticlesVarsSerializer();
Serializer<GupdateSentencesVars> _$gupdateSentencesVarsSerializer =
    new _$GupdateSentencesVarsSerializer();

class _$GSentencesVarsSerializer
    implements StructuredSerializer<GSentencesVars> {
  @override
  final Iterable<Type> types = const [GSentencesVars, _$GSentencesVars];
  @override
  final String wireName = 'GSentencesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSentencesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i1.Guuid)),
    ];

    return result;
  }

  @override
  GSentencesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSentencesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i1.Guuid))! as _i1.Guuid);
          break;
      }
    }

    return result.build();
  }
}

class _$GinsertArticlesVarsSerializer
    implements StructuredSerializer<GinsertArticlesVars> {
  @override
  final Iterable<Type> types = const [
    GinsertArticlesVars,
    _$GinsertArticlesVars
  ];
  @override
  final String wireName = 'GinsertArticlesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GinsertArticlesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.object;
    if (value != null) {
      result
        ..add('object')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.Garticles_insert_input)));
    }
    return result;
  }

  @override
  GinsertArticlesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GinsertArticlesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'object':
          result.object.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.Garticles_insert_input))!
              as _i1.Garticles_insert_input);
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateSentencesVarsSerializer
    implements StructuredSerializer<GupdateSentencesVars> {
  @override
  final Iterable<Type> types = const [
    GupdateSentencesVars,
    _$GupdateSentencesVars
  ];
  @override
  final String wireName = 'GupdateSentencesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdateSentencesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.Guuid)));
    }
    value = object.sentences;
    if (value != null) {
      result
        ..add('sentences')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.JsonObject)));
    }
    return result;
  }

  @override
  GupdateSentencesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateSentencesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i1.Guuid))! as _i1.Guuid);
          break;
        case 'sentences':
          result.sentences = serializers.deserialize(value,
              specifiedType: const FullType(_i3.JsonObject)) as _i3.JsonObject?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSentencesVars extends GSentencesVars {
  @override
  final _i1.Guuid id;

  factory _$GSentencesVars([void Function(GSentencesVarsBuilder)? updates]) =>
      (new GSentencesVarsBuilder()..update(updates))._build();

  _$GSentencesVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GSentencesVars', 'id');
  }

  @override
  GSentencesVars rebuild(void Function(GSentencesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSentencesVarsBuilder toBuilder() =>
      new GSentencesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSentencesVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSentencesVars')..add('id', id))
        .toString();
  }
}

class GSentencesVarsBuilder
    implements Builder<GSentencesVars, GSentencesVarsBuilder> {
  _$GSentencesVars? _$v;

  _i1.GuuidBuilder? _id;
  _i1.GuuidBuilder get id => _$this._id ??= new _i1.GuuidBuilder();
  set id(_i1.GuuidBuilder? id) => _$this._id = id;

  GSentencesVarsBuilder();

  GSentencesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSentencesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSentencesVars;
  }

  @override
  void update(void Function(GSentencesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSentencesVars build() => _build();

  _$GSentencesVars _build() {
    _$GSentencesVars _$result;
    try {
      _$result = _$v ?? new _$GSentencesVars._(id: id.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSentencesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GinsertArticlesVars extends GinsertArticlesVars {
  @override
  final _i1.Garticles_insert_input? object;

  factory _$GinsertArticlesVars(
          [void Function(GinsertArticlesVarsBuilder)? updates]) =>
      (new GinsertArticlesVarsBuilder()..update(updates))._build();

  _$GinsertArticlesVars._({this.object}) : super._();

  @override
  GinsertArticlesVars rebuild(
          void Function(GinsertArticlesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GinsertArticlesVarsBuilder toBuilder() =>
      new GinsertArticlesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GinsertArticlesVars && object == other.object;
  }

  @override
  int get hashCode {
    return $jf($jc(0, object.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GinsertArticlesVars')
          ..add('object', object))
        .toString();
  }
}

class GinsertArticlesVarsBuilder
    implements Builder<GinsertArticlesVars, GinsertArticlesVarsBuilder> {
  _$GinsertArticlesVars? _$v;

  _i1.Garticles_insert_inputBuilder? _object;
  _i1.Garticles_insert_inputBuilder get object =>
      _$this._object ??= new _i1.Garticles_insert_inputBuilder();
  set object(_i1.Garticles_insert_inputBuilder? object) =>
      _$this._object = object;

  GinsertArticlesVarsBuilder();

  GinsertArticlesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _object = $v.object?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GinsertArticlesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GinsertArticlesVars;
  }

  @override
  void update(void Function(GinsertArticlesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GinsertArticlesVars build() => _build();

  _$GinsertArticlesVars _build() {
    _$GinsertArticlesVars _$result;
    try {
      _$result = _$v ?? new _$GinsertArticlesVars._(object: _object?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'object';
        _object?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GinsertArticlesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupdateSentencesVars extends GupdateSentencesVars {
  @override
  final _i1.Guuid? id;
  @override
  final _i3.JsonObject? sentences;

  factory _$GupdateSentencesVars(
          [void Function(GupdateSentencesVarsBuilder)? updates]) =>
      (new GupdateSentencesVarsBuilder()..update(updates))._build();

  _$GupdateSentencesVars._({this.id, this.sentences}) : super._();

  @override
  GupdateSentencesVars rebuild(
          void Function(GupdateSentencesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateSentencesVarsBuilder toBuilder() =>
      new GupdateSentencesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateSentencesVars &&
        id == other.id &&
        sentences == other.sentences;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), sentences.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GupdateSentencesVars')
          ..add('id', id)
          ..add('sentences', sentences))
        .toString();
  }
}

class GupdateSentencesVarsBuilder
    implements Builder<GupdateSentencesVars, GupdateSentencesVarsBuilder> {
  _$GupdateSentencesVars? _$v;

  _i1.GuuidBuilder? _id;
  _i1.GuuidBuilder get id => _$this._id ??= new _i1.GuuidBuilder();
  set id(_i1.GuuidBuilder? id) => _$this._id = id;

  _i3.JsonObject? _sentences;
  _i3.JsonObject? get sentences => _$this._sentences;
  set sentences(_i3.JsonObject? sentences) => _$this._sentences = sentences;

  GupdateSentencesVarsBuilder();

  GupdateSentencesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _sentences = $v.sentences;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateSentencesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateSentencesVars;
  }

  @override
  void update(void Function(GupdateSentencesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdateSentencesVars build() => _build();

  _$GupdateSentencesVars _build() {
    _$GupdateSentencesVars _$result;
    try {
      _$result = _$v ??
          new _$GupdateSentencesVars._(id: _id?.build(), sentences: sentences);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupdateSentencesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
