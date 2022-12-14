// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GArticleItemsVars> _$gArticleItemsVarsSerializer =
    new _$GArticleItemsVarsSerializer();
Serializer<GUserArticleItemsVars> _$gUserArticleItemsVarsSerializer =
    new _$GUserArticleItemsVarsSerializer();
Serializer<GArticleFragmentVars> _$gArticleFragmentVarsSerializer =
    new _$GArticleFragmentVarsSerializer();

class _$GArticleItemsVarsSerializer
    implements StructuredSerializer<GArticleItemsVars> {
  @override
  final Iterable<Type> types = const [GArticleItemsVars, _$GArticleItemsVars];
  @override
  final String wireName = 'GArticleItemsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GArticleItemsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.offset;
    if (value != null) {
      result
        ..add('offset')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.limit;
    if (value != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GArticleItemsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GArticleItemsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserArticleItemsVarsSerializer
    implements StructuredSerializer<GUserArticleItemsVars> {
  @override
  final Iterable<Type> types = const [
    GUserArticleItemsVars,
    _$GUserArticleItemsVars
  ];
  @override
  final String wireName = 'GUserArticleItemsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserArticleItemsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.offset;
    if (value != null) {
      result
        ..add('offset')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.limit;
    if (value != null) {
      result
        ..add('limit')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GUserArticleItemsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserArticleItemsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GArticleFragmentVarsSerializer
    implements StructuredSerializer<GArticleFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GArticleFragmentVars,
    _$GArticleFragmentVars
  ];
  @override
  final String wireName = 'GArticleFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GArticleFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GArticleFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GArticleFragmentVarsBuilder().build();
  }
}

class _$GArticleItemsVars extends GArticleItemsVars {
  @override
  final int? offset;
  @override
  final int? limit;

  factory _$GArticleItemsVars(
          [void Function(GArticleItemsVarsBuilder)? updates]) =>
      (new GArticleItemsVarsBuilder()..update(updates))._build();

  _$GArticleItemsVars._({this.offset, this.limit}) : super._();

  @override
  GArticleItemsVars rebuild(void Function(GArticleItemsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GArticleItemsVarsBuilder toBuilder() =>
      new GArticleItemsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GArticleItemsVars &&
        offset == other.offset &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, offset.hashCode), limit.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GArticleItemsVars')
          ..add('offset', offset)
          ..add('limit', limit))
        .toString();
  }
}

class GArticleItemsVarsBuilder
    implements Builder<GArticleItemsVars, GArticleItemsVarsBuilder> {
  _$GArticleItemsVars? _$v;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GArticleItemsVarsBuilder();

  GArticleItemsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _offset = $v.offset;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GArticleItemsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GArticleItemsVars;
  }

  @override
  void update(void Function(GArticleItemsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GArticleItemsVars build() => _build();

  _$GArticleItemsVars _build() {
    final _$result =
        _$v ?? new _$GArticleItemsVars._(offset: offset, limit: limit);
    replace(_$result);
    return _$result;
  }
}

class _$GUserArticleItemsVars extends GUserArticleItemsVars {
  @override
  final int? offset;
  @override
  final int? limit;

  factory _$GUserArticleItemsVars(
          [void Function(GUserArticleItemsVarsBuilder)? updates]) =>
      (new GUserArticleItemsVarsBuilder()..update(updates))._build();

  _$GUserArticleItemsVars._({this.offset, this.limit}) : super._();

  @override
  GUserArticleItemsVars rebuild(
          void Function(GUserArticleItemsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserArticleItemsVarsBuilder toBuilder() =>
      new GUserArticleItemsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserArticleItemsVars &&
        offset == other.offset &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, offset.hashCode), limit.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserArticleItemsVars')
          ..add('offset', offset)
          ..add('limit', limit))
        .toString();
  }
}

class GUserArticleItemsVarsBuilder
    implements Builder<GUserArticleItemsVars, GUserArticleItemsVarsBuilder> {
  _$GUserArticleItemsVars? _$v;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GUserArticleItemsVarsBuilder();

  GUserArticleItemsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _offset = $v.offset;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserArticleItemsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserArticleItemsVars;
  }

  @override
  void update(void Function(GUserArticleItemsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserArticleItemsVars build() => _build();

  _$GUserArticleItemsVars _build() {
    final _$result =
        _$v ?? new _$GUserArticleItemsVars._(offset: offset, limit: limit);
    replace(_$result);
    return _$result;
  }
}

class _$GArticleFragmentVars extends GArticleFragmentVars {
  factory _$GArticleFragmentVars(
          [void Function(GArticleFragmentVarsBuilder)? updates]) =>
      (new GArticleFragmentVarsBuilder()..update(updates))._build();

  _$GArticleFragmentVars._() : super._();

  @override
  GArticleFragmentVars rebuild(
          void Function(GArticleFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GArticleFragmentVarsBuilder toBuilder() =>
      new GArticleFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GArticleFragmentVars;
  }

  @override
  int get hashCode {
    return 435213633;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GArticleFragmentVars').toString();
  }
}

class GArticleFragmentVarsBuilder
    implements Builder<GArticleFragmentVars, GArticleFragmentVarsBuilder> {
  _$GArticleFragmentVars? _$v;

  GArticleFragmentVarsBuilder();

  @override
  void replace(GArticleFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GArticleFragmentVars;
  }

  @override
  void update(void Function(GArticleFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GArticleFragmentVars build() => _build();

  _$GArticleFragmentVars _build() {
    final _$result = _$v ?? new _$GArticleFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
