// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAcquiringWordsVars> _$gAcquiringWordsVarsSerializer =
    new _$GAcquiringWordsVarsSerializer();

class _$GAcquiringWordsVarsSerializer
    implements StructuredSerializer<GAcquiringWordsVars> {
  @override
  final Iterable<Type> types = const [
    GAcquiringWordsVars,
    _$GAcquiringWordsVars
  ];
  @override
  final String wireName = 'GAcquiringWordsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAcquiringWordsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GAcquiringWordsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GAcquiringWordsVarsBuilder().build();
  }
}

class _$GAcquiringWordsVars extends GAcquiringWordsVars {
  factory _$GAcquiringWordsVars(
          [void Function(GAcquiringWordsVarsBuilder)? updates]) =>
      (new GAcquiringWordsVarsBuilder()..update(updates))._build();

  _$GAcquiringWordsVars._() : super._();

  @override
  GAcquiringWordsVars rebuild(
          void Function(GAcquiringWordsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAcquiringWordsVarsBuilder toBuilder() =>
      new GAcquiringWordsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAcquiringWordsVars;
  }

  @override
  int get hashCode {
    return 817818079;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GAcquiringWordsVars').toString();
  }
}

class GAcquiringWordsVarsBuilder
    implements Builder<GAcquiringWordsVars, GAcquiringWordsVarsBuilder> {
  _$GAcquiringWordsVars? _$v;

  GAcquiringWordsVarsBuilder();

  @override
  void replace(GAcquiringWordsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAcquiringWordsVars;
  }

  @override
  void update(void Function(GAcquiringWordsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAcquiringWordsVars build() => _build();

  _$GAcquiringWordsVars _build() {
    final _$result = _$v ?? new _$GAcquiringWordsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
