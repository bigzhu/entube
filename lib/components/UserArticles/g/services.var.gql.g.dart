// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserArticlesVars> _$gUserArticlesVarsSerializer =
    new _$GUserArticlesVarsSerializer();
Serializer<GupsertUserArticlesVars> _$gupsertUserArticlesVarsSerializer =
    new _$GupsertUserArticlesVarsSerializer();

class _$GUserArticlesVarsSerializer
    implements StructuredSerializer<GUserArticlesVars> {
  @override
  final Iterable<Type> types = const [GUserArticlesVars, _$GUserArticlesVars];
  @override
  final String wireName = 'GUserArticlesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserArticlesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GUserArticlesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GUserArticlesVarsBuilder().build();
  }
}

class _$GupsertUserArticlesVarsSerializer
    implements StructuredSerializer<GupsertUserArticlesVars> {
  @override
  final Iterable<Type> types = const [
    GupsertUserArticlesVars,
    _$GupsertUserArticlesVars
  ];
  @override
  final String wireName = 'GupsertUserArticlesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupsertUserArticlesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.object;
    if (value != null) {
      result
        ..add('object')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Guser_articles_insert_input)));
    }
    return result;
  }

  @override
  GupsertUserArticlesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupsertUserArticlesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'object':
          result.object.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i2.Guser_articles_insert_input))!
              as _i2.Guser_articles_insert_input);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserArticlesVars extends GUserArticlesVars {
  factory _$GUserArticlesVars(
          [void Function(GUserArticlesVarsBuilder)? updates]) =>
      (new GUserArticlesVarsBuilder()..update(updates))._build();

  _$GUserArticlesVars._() : super._();

  @override
  GUserArticlesVars rebuild(void Function(GUserArticlesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserArticlesVarsBuilder toBuilder() =>
      new GUserArticlesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserArticlesVars;
  }

  @override
  int get hashCode {
    return 525450252;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GUserArticlesVars').toString();
  }
}

class GUserArticlesVarsBuilder
    implements Builder<GUserArticlesVars, GUserArticlesVarsBuilder> {
  _$GUserArticlesVars? _$v;

  GUserArticlesVarsBuilder();

  @override
  void replace(GUserArticlesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserArticlesVars;
  }

  @override
  void update(void Function(GUserArticlesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserArticlesVars build() => _build();

  _$GUserArticlesVars _build() {
    final _$result = _$v ?? new _$GUserArticlesVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GupsertUserArticlesVars extends GupsertUserArticlesVars {
  @override
  final _i2.Guser_articles_insert_input? object;

  factory _$GupsertUserArticlesVars(
          [void Function(GupsertUserArticlesVarsBuilder)? updates]) =>
      (new GupsertUserArticlesVarsBuilder()..update(updates))._build();

  _$GupsertUserArticlesVars._({this.object}) : super._();

  @override
  GupsertUserArticlesVars rebuild(
          void Function(GupsertUserArticlesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupsertUserArticlesVarsBuilder toBuilder() =>
      new GupsertUserArticlesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupsertUserArticlesVars && object == other.object;
  }

  @override
  int get hashCode {
    return $jf($jc(0, object.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GupsertUserArticlesVars')
          ..add('object', object))
        .toString();
  }
}

class GupsertUserArticlesVarsBuilder
    implements
        Builder<GupsertUserArticlesVars, GupsertUserArticlesVarsBuilder> {
  _$GupsertUserArticlesVars? _$v;

  _i2.Guser_articles_insert_inputBuilder? _object;
  _i2.Guser_articles_insert_inputBuilder get object =>
      _$this._object ??= new _i2.Guser_articles_insert_inputBuilder();
  set object(_i2.Guser_articles_insert_inputBuilder? object) =>
      _$this._object = object;

  GupsertUserArticlesVarsBuilder();

  GupsertUserArticlesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _object = $v.object?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupsertUserArticlesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupsertUserArticlesVars;
  }

  @override
  void update(void Function(GupsertUserArticlesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupsertUserArticlesVars build() => _build();

  _$GupsertUserArticlesVars _build() {
    _$GupsertUserArticlesVars _$result;
    try {
      _$result =
          _$v ?? new _$GupsertUserArticlesVars._(object: _object?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'object';
        _object?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupsertUserArticlesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
