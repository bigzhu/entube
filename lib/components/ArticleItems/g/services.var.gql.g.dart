// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GArticlesVars> _$gArticlesVarsSerializer =
    new _$GArticlesVarsSerializer();
Serializer<GArticleByUrlVars> _$gArticleByUrlVarsSerializer =
    new _$GArticleByUrlVarsSerializer();
Serializer<GArticleFragmentVars> _$gArticleFragmentVarsSerializer =
    new _$GArticleFragmentVarsSerializer();

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

class _$GArticleByUrlVarsSerializer
    implements StructuredSerializer<GArticleByUrlVars> {
  @override
  final Iterable<Type> types = const [GArticleByUrlVars, _$GArticleByUrlVars];
  @override
  final String wireName = 'GArticleByUrlVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GArticleByUrlVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GArticleByUrlVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GArticleByUrlVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$GArticleByUrlVars extends GArticleByUrlVars {
  @override
  final String? url;

  factory _$GArticleByUrlVars(
          [void Function(GArticleByUrlVarsBuilder)? updates]) =>
      (new GArticleByUrlVarsBuilder()..update(updates))._build();

  _$GArticleByUrlVars._({this.url}) : super._();

  @override
  GArticleByUrlVars rebuild(void Function(GArticleByUrlVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GArticleByUrlVarsBuilder toBuilder() =>
      new GArticleByUrlVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GArticleByUrlVars && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(0, url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GArticleByUrlVars')..add('url', url))
        .toString();
  }
}

class GArticleByUrlVarsBuilder
    implements Builder<GArticleByUrlVars, GArticleByUrlVarsBuilder> {
  _$GArticleByUrlVars? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  GArticleByUrlVarsBuilder();

  GArticleByUrlVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GArticleByUrlVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GArticleByUrlVars;
  }

  @override
  void update(void Function(GArticleByUrlVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GArticleByUrlVars build() => _build();

  _$GArticleByUrlVars _build() {
    final _$result = _$v ?? new _$GArticleByUrlVars._(url: url);
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
