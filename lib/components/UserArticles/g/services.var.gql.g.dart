// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserArticlesVars> _$gUserArticlesVarsSerializer =
    new _$GUserArticlesVarsSerializer();
Serializer<GupsertUserArticlesVars> _$gupsertUserArticlesVarsSerializer =
    new _$GupsertUserArticlesVarsSerializer();
Serializer<GdeleteUserArticleVars> _$gdeleteUserArticleVarsSerializer =
    new _$GdeleteUserArticleVarsSerializer();
Serializer<GupdatePlayAtVars> _$gupdatePlayAtVarsSerializer =
    new _$GupdatePlayAtVarsSerializer();
Serializer<GUserArticleFragmentVars> _$gUserArticleFragmentVarsSerializer =
    new _$GUserArticleFragmentVarsSerializer();

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

class _$GdeleteUserArticleVarsSerializer
    implements StructuredSerializer<GdeleteUserArticleVars> {
  @override
  final Iterable<Type> types = const [
    GdeleteUserArticleVars,
    _$GdeleteUserArticleVars
  ];
  @override
  final String wireName = 'GdeleteUserArticleVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdeleteUserArticleVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.article_id;
    if (value != null) {
      result
        ..add('article_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Guuid)));
    }
    return result;
  }

  @override
  GdeleteUserArticleVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeleteUserArticleVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'article_id':
          result.article_id.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
          break;
      }
    }

    return result.build();
  }
}

class _$GupdatePlayAtVarsSerializer
    implements StructuredSerializer<GupdatePlayAtVars> {
  @override
  final Iterable<Type> types = const [GupdatePlayAtVars, _$GupdatePlayAtVars];
  @override
  final String wireName = 'GupdatePlayAtVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GupdatePlayAtVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.article_id;
    if (value != null) {
      result
        ..add('article_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Guuid)));
    }
    value = object.play_at;
    if (value != null) {
      result
        ..add('play_at')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GupdatePlayAtVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdatePlayAtVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'article_id':
          result.article_id.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
          break;
        case 'play_at':
          result.play_at = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserArticleFragmentVarsSerializer
    implements StructuredSerializer<GUserArticleFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GUserArticleFragmentVars,
    _$GUserArticleFragmentVars
  ];
  @override
  final String wireName = 'GUserArticleFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserArticleFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GUserArticleFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GUserArticleFragmentVarsBuilder().build();
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

class _$GdeleteUserArticleVars extends GdeleteUserArticleVars {
  @override
  final _i2.Guuid? article_id;

  factory _$GdeleteUserArticleVars(
          [void Function(GdeleteUserArticleVarsBuilder)? updates]) =>
      (new GdeleteUserArticleVarsBuilder()..update(updates))._build();

  _$GdeleteUserArticleVars._({this.article_id}) : super._();

  @override
  GdeleteUserArticleVars rebuild(
          void Function(GdeleteUserArticleVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteUserArticleVarsBuilder toBuilder() =>
      new GdeleteUserArticleVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeleteUserArticleVars && article_id == other.article_id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, article_id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdeleteUserArticleVars')
          ..add('article_id', article_id))
        .toString();
  }
}

class GdeleteUserArticleVarsBuilder
    implements Builder<GdeleteUserArticleVars, GdeleteUserArticleVarsBuilder> {
  _$GdeleteUserArticleVars? _$v;

  _i2.GuuidBuilder? _article_id;
  _i2.GuuidBuilder get article_id =>
      _$this._article_id ??= new _i2.GuuidBuilder();
  set article_id(_i2.GuuidBuilder? article_id) =>
      _$this._article_id = article_id;

  GdeleteUserArticleVarsBuilder();

  GdeleteUserArticleVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _article_id = $v.article_id?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdeleteUserArticleVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteUserArticleVars;
  }

  @override
  void update(void Function(GdeleteUserArticleVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdeleteUserArticleVars build() => _build();

  _$GdeleteUserArticleVars _build() {
    _$GdeleteUserArticleVars _$result;
    try {
      _$result = _$v ??
          new _$GdeleteUserArticleVars._(article_id: _article_id?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'article_id';
        _article_id?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GdeleteUserArticleVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupdatePlayAtVars extends GupdatePlayAtVars {
  @override
  final _i2.Guuid? article_id;
  @override
  final int? play_at;

  factory _$GupdatePlayAtVars(
          [void Function(GupdatePlayAtVarsBuilder)? updates]) =>
      (new GupdatePlayAtVarsBuilder()..update(updates))._build();

  _$GupdatePlayAtVars._({this.article_id, this.play_at}) : super._();

  @override
  GupdatePlayAtVars rebuild(void Function(GupdatePlayAtVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdatePlayAtVarsBuilder toBuilder() =>
      new GupdatePlayAtVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdatePlayAtVars &&
        article_id == other.article_id &&
        play_at == other.play_at;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, article_id.hashCode), play_at.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GupdatePlayAtVars')
          ..add('article_id', article_id)
          ..add('play_at', play_at))
        .toString();
  }
}

class GupdatePlayAtVarsBuilder
    implements Builder<GupdatePlayAtVars, GupdatePlayAtVarsBuilder> {
  _$GupdatePlayAtVars? _$v;

  _i2.GuuidBuilder? _article_id;
  _i2.GuuidBuilder get article_id =>
      _$this._article_id ??= new _i2.GuuidBuilder();
  set article_id(_i2.GuuidBuilder? article_id) =>
      _$this._article_id = article_id;

  int? _play_at;
  int? get play_at => _$this._play_at;
  set play_at(int? play_at) => _$this._play_at = play_at;

  GupdatePlayAtVarsBuilder();

  GupdatePlayAtVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _article_id = $v.article_id?.toBuilder();
      _play_at = $v.play_at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdatePlayAtVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdatePlayAtVars;
  }

  @override
  void update(void Function(GupdatePlayAtVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdatePlayAtVars build() => _build();

  _$GupdatePlayAtVars _build() {
    _$GupdatePlayAtVars _$result;
    try {
      _$result = _$v ??
          new _$GupdatePlayAtVars._(
              article_id: _article_id?.build(), play_at: play_at);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'article_id';
        _article_id?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupdatePlayAtVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserArticleFragmentVars extends GUserArticleFragmentVars {
  factory _$GUserArticleFragmentVars(
          [void Function(GUserArticleFragmentVarsBuilder)? updates]) =>
      (new GUserArticleFragmentVarsBuilder()..update(updates))._build();

  _$GUserArticleFragmentVars._() : super._();

  @override
  GUserArticleFragmentVars rebuild(
          void Function(GUserArticleFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserArticleFragmentVarsBuilder toBuilder() =>
      new GUserArticleFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserArticleFragmentVars;
  }

  @override
  int get hashCode {
    return 620465798;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GUserArticleFragmentVars').toString();
  }
}

class GUserArticleFragmentVarsBuilder
    implements
        Builder<GUserArticleFragmentVars, GUserArticleFragmentVarsBuilder> {
  _$GUserArticleFragmentVars? _$v;

  GUserArticleFragmentVarsBuilder();

  @override
  void replace(GUserArticleFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserArticleFragmentVars;
  }

  @override
  void update(void Function(GUserArticleFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserArticleFragmentVars build() => _build();

  _$GUserArticleFragmentVars _build() {
    final _$result = _$v ?? new _$GUserArticleFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
