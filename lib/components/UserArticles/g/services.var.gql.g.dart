// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserArticlesVars> _$gUserArticlesVarsSerializer =
    new _$GUserArticlesVarsSerializer();

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
