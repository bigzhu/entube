// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserArticleItemsVars> _$gUserArticleItemsVarsSerializer =
    new _$GUserArticleItemsVarsSerializer();

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
    return <Object?>[];
  }

  @override
  GUserArticleItemsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GUserArticleItemsVarsBuilder().build();
  }
}

class _$GUserArticleItemsVars extends GUserArticleItemsVars {
  factory _$GUserArticleItemsVars(
          [void Function(GUserArticleItemsVarsBuilder)? updates]) =>
      (new GUserArticleItemsVarsBuilder()..update(updates))._build();

  _$GUserArticleItemsVars._() : super._();

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
    return other is GUserArticleItemsVars;
  }

  @override
  int get hashCode {
    return 505389251;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GUserArticleItemsVars').toString();
  }
}

class GUserArticleItemsVarsBuilder
    implements Builder<GUserArticleItemsVars, GUserArticleItemsVarsBuilder> {
  _$GUserArticleItemsVars? _$v;

  GUserArticleItemsVarsBuilder();

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
    final _$result = _$v ?? new _$GUserArticleItemsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
