// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GArticlesVars> _$gArticlesVarsSerializer =
    new _$GArticlesVarsSerializer();

class _$GArticlesVarsSerializer implements StructuredSerializer<GArticlesVars> {
  @override
  final Iterable<Type> types = const [GArticlesVars, _$GArticlesVars];
  @override
  final String wireName = 'GArticlesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GArticlesVars object,
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
  GArticlesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GArticlesVarsBuilder();

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

class _$GArticlesVars extends GArticlesVars {
  @override
  final int? offset;
  @override
  final int? limit;

  factory _$GArticlesVars([void Function(GArticlesVarsBuilder)? updates]) =>
      (new GArticlesVarsBuilder()..update(updates))._build();

  _$GArticlesVars._({this.offset, this.limit}) : super._();

  @override
  GArticlesVars rebuild(void Function(GArticlesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GArticlesVarsBuilder toBuilder() => new GArticlesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GArticlesVars &&
        offset == other.offset &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, offset.hashCode), limit.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GArticlesVars')
          ..add('offset', offset)
          ..add('limit', limit))
        .toString();
  }
}

class GArticlesVarsBuilder
    implements Builder<GArticlesVars, GArticlesVarsBuilder> {
  _$GArticlesVars? _$v;

  int? _offset;
  int? get offset => _$this._offset;
  set offset(int? offset) => _$this._offset = offset;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GArticlesVarsBuilder();

  GArticlesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _offset = $v.offset;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GArticlesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GArticlesVars;
  }

  @override
  void update(void Function(GArticlesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GArticlesVars build() => _build();

  _$GArticlesVars _build() {
    final _$result = _$v ?? new _$GArticlesVars._(offset: offset, limit: limit);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
