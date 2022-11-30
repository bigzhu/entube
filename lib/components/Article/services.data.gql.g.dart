// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GArticleSentencesData> _$gArticleSentencesDataSerializer =
    new _$GArticleSentencesDataSerializer();
Serializer<GArticleSentencesData_articles>
    _$gArticleSentencesDataArticlesSerializer =
    new _$GArticleSentencesData_articlesSerializer();

class _$GArticleSentencesDataSerializer
    implements StructuredSerializer<GArticleSentencesData> {
  @override
  final Iterable<Type> types = const [
    GArticleSentencesData,
    _$GArticleSentencesData
  ];
  @override
  final String wireName = 'GArticleSentencesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GArticleSentencesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'articles',
      serializers.serialize(object.articles,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GArticleSentencesData_articles)])),
    ];

    return result;
  }

  @override
  GArticleSentencesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GArticleSentencesDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'articles':
          result.articles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GArticleSentencesData_articles)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GArticleSentencesData_articlesSerializer
    implements StructuredSerializer<GArticleSentencesData_articles> {
  @override
  final Iterable<Type> types = const [
    GArticleSentencesData_articles,
    _$GArticleSentencesData_articles
  ];
  @override
  final String wireName = 'GArticleSentencesData_articles';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GArticleSentencesData_articles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'sentences',
      serializers.serialize(object.sentences,
          specifiedType: const FullType(_i2.JsonObject)),
    ];

    return result;
  }

  @override
  GArticleSentencesData_articles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GArticleSentencesData_articlesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'sentences':
          result.sentences = serializers.deserialize(value,
              specifiedType: const FullType(_i2.JsonObject))! as _i2.JsonObject;
          break;
      }
    }

    return result.build();
  }
}

class _$GArticleSentencesData extends GArticleSentencesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GArticleSentencesData_articles> articles;

  factory _$GArticleSentencesData(
          [void Function(GArticleSentencesDataBuilder)? updates]) =>
      (new GArticleSentencesDataBuilder()..update(updates))._build();

  _$GArticleSentencesData._({required this.G__typename, required this.articles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GArticleSentencesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        articles, r'GArticleSentencesData', 'articles');
  }

  @override
  GArticleSentencesData rebuild(
          void Function(GArticleSentencesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GArticleSentencesDataBuilder toBuilder() =>
      new GArticleSentencesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GArticleSentencesData &&
        G__typename == other.G__typename &&
        articles == other.articles;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), articles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GArticleSentencesData')
          ..add('G__typename', G__typename)
          ..add('articles', articles))
        .toString();
  }
}

class GArticleSentencesDataBuilder
    implements Builder<GArticleSentencesData, GArticleSentencesDataBuilder> {
  _$GArticleSentencesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GArticleSentencesData_articles>? _articles;
  ListBuilder<GArticleSentencesData_articles> get articles =>
      _$this._articles ??= new ListBuilder<GArticleSentencesData_articles>();
  set articles(ListBuilder<GArticleSentencesData_articles>? articles) =>
      _$this._articles = articles;

  GArticleSentencesDataBuilder() {
    GArticleSentencesData._initializeBuilder(this);
  }

  GArticleSentencesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _articles = $v.articles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GArticleSentencesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GArticleSentencesData;
  }

  @override
  void update(void Function(GArticleSentencesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GArticleSentencesData build() => _build();

  _$GArticleSentencesData _build() {
    _$GArticleSentencesData _$result;
    try {
      _$result = _$v ??
          new _$GArticleSentencesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GArticleSentencesData', 'G__typename'),
              articles: articles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'articles';
        articles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GArticleSentencesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GArticleSentencesData_articles extends GArticleSentencesData_articles {
  @override
  final String G__typename;
  @override
  final _i2.JsonObject sentences;

  factory _$GArticleSentencesData_articles(
          [void Function(GArticleSentencesData_articlesBuilder)? updates]) =>
      (new GArticleSentencesData_articlesBuilder()..update(updates))._build();

  _$GArticleSentencesData_articles._(
      {required this.G__typename, required this.sentences})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GArticleSentencesData_articles', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        sentences, r'GArticleSentencesData_articles', 'sentences');
  }

  @override
  GArticleSentencesData_articles rebuild(
          void Function(GArticleSentencesData_articlesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GArticleSentencesData_articlesBuilder toBuilder() =>
      new GArticleSentencesData_articlesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GArticleSentencesData_articles &&
        G__typename == other.G__typename &&
        sentences == other.sentences;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), sentences.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GArticleSentencesData_articles')
          ..add('G__typename', G__typename)
          ..add('sentences', sentences))
        .toString();
  }
}

class GArticleSentencesData_articlesBuilder
    implements
        Builder<GArticleSentencesData_articles,
            GArticleSentencesData_articlesBuilder> {
  _$GArticleSentencesData_articles? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.JsonObject? _sentences;
  _i2.JsonObject? get sentences => _$this._sentences;
  set sentences(_i2.JsonObject? sentences) => _$this._sentences = sentences;

  GArticleSentencesData_articlesBuilder() {
    GArticleSentencesData_articles._initializeBuilder(this);
  }

  GArticleSentencesData_articlesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sentences = $v.sentences;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GArticleSentencesData_articles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GArticleSentencesData_articles;
  }

  @override
  void update(void Function(GArticleSentencesData_articlesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GArticleSentencesData_articles build() => _build();

  _$GArticleSentencesData_articles _build() {
    final _$result = _$v ??
        new _$GArticleSentencesData_articles._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GArticleSentencesData_articles', 'G__typename'),
            sentences: BuiltValueNullFieldError.checkNotNull(
                sentences, r'GArticleSentencesData_articles', 'sentences'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
