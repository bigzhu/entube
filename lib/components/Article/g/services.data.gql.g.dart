// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSentencesData> _$gSentencesDataSerializer =
    new _$GSentencesDataSerializer();
Serializer<GSentencesData_articles> _$gSentencesDataArticlesSerializer =
    new _$GSentencesData_articlesSerializer();
Serializer<GinsertArticlesData> _$ginsertArticlesDataSerializer =
    new _$GinsertArticlesDataSerializer();
Serializer<GinsertArticlesData_insert_articles_one>
    _$ginsertArticlesDataInsertArticlesOneSerializer =
    new _$GinsertArticlesData_insert_articles_oneSerializer();

class _$GSentencesDataSerializer
    implements StructuredSerializer<GSentencesData> {
  @override
  final Iterable<Type> types = const [GSentencesData, _$GSentencesData];
  @override
  final String wireName = 'GSentencesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSentencesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'articles',
      serializers.serialize(object.articles,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GSentencesData_articles)])),
    ];

    return result;
  }

  @override
  GSentencesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSentencesDataBuilder();

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
                const FullType(GSentencesData_articles)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GSentencesData_articlesSerializer
    implements StructuredSerializer<GSentencesData_articles> {
  @override
  final Iterable<Type> types = const [
    GSentencesData_articles,
    _$GSentencesData_articles
  ];
  @override
  final String wireName = 'GSentencesData_articles';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSentencesData_articles object,
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
  GSentencesData_articles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSentencesData_articlesBuilder();

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

class _$GinsertArticlesDataSerializer
    implements StructuredSerializer<GinsertArticlesData> {
  @override
  final Iterable<Type> types = const [
    GinsertArticlesData,
    _$GinsertArticlesData
  ];
  @override
  final String wireName = 'GinsertArticlesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GinsertArticlesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.insert_articles_one;
    if (value != null) {
      result
        ..add('insert_articles_one')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GinsertArticlesData_insert_articles_one)));
    }
    return result;
  }

  @override
  GinsertArticlesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GinsertArticlesDataBuilder();

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
        case 'insert_articles_one':
          result.insert_articles_one.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GinsertArticlesData_insert_articles_one))!
              as GinsertArticlesData_insert_articles_one);
          break;
      }
    }

    return result.build();
  }
}

class _$GinsertArticlesData_insert_articles_oneSerializer
    implements StructuredSerializer<GinsertArticlesData_insert_articles_one> {
  @override
  final Iterable<Type> types = const [
    GinsertArticlesData_insert_articles_one,
    _$GinsertArticlesData_insert_articles_one
  ];
  @override
  final String wireName = 'GinsertArticlesData_insert_articles_one';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GinsertArticlesData_insert_articles_one object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i3.Guuid)),
    ];

    return result;
  }

  @override
  GinsertArticlesData_insert_articles_one deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GinsertArticlesData_insert_articles_oneBuilder();

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
        case 'id':
          result.id.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i3.Guuid))! as _i3.Guuid);
          break;
      }
    }

    return result.build();
  }
}

class _$GSentencesData extends GSentencesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GSentencesData_articles> articles;

  factory _$GSentencesData([void Function(GSentencesDataBuilder)? updates]) =>
      (new GSentencesDataBuilder()..update(updates))._build();

  _$GSentencesData._({required this.G__typename, required this.articles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSentencesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        articles, r'GSentencesData', 'articles');
  }

  @override
  GSentencesData rebuild(void Function(GSentencesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSentencesDataBuilder toBuilder() =>
      new GSentencesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSentencesData &&
        G__typename == other.G__typename &&
        articles == other.articles;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), articles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSentencesData')
          ..add('G__typename', G__typename)
          ..add('articles', articles))
        .toString();
  }
}

class GSentencesDataBuilder
    implements Builder<GSentencesData, GSentencesDataBuilder> {
  _$GSentencesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GSentencesData_articles>? _articles;
  ListBuilder<GSentencesData_articles> get articles =>
      _$this._articles ??= new ListBuilder<GSentencesData_articles>();
  set articles(ListBuilder<GSentencesData_articles>? articles) =>
      _$this._articles = articles;

  GSentencesDataBuilder() {
    GSentencesData._initializeBuilder(this);
  }

  GSentencesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _articles = $v.articles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSentencesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSentencesData;
  }

  @override
  void update(void Function(GSentencesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSentencesData build() => _build();

  _$GSentencesData _build() {
    _$GSentencesData _$result;
    try {
      _$result = _$v ??
          new _$GSentencesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSentencesData', 'G__typename'),
              articles: articles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'articles';
        articles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSentencesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSentencesData_articles extends GSentencesData_articles {
  @override
  final String G__typename;
  @override
  final _i2.JsonObject sentences;

  factory _$GSentencesData_articles(
          [void Function(GSentencesData_articlesBuilder)? updates]) =>
      (new GSentencesData_articlesBuilder()..update(updates))._build();

  _$GSentencesData_articles._(
      {required this.G__typename, required this.sentences})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSentencesData_articles', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        sentences, r'GSentencesData_articles', 'sentences');
  }

  @override
  GSentencesData_articles rebuild(
          void Function(GSentencesData_articlesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSentencesData_articlesBuilder toBuilder() =>
      new GSentencesData_articlesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSentencesData_articles &&
        G__typename == other.G__typename &&
        sentences == other.sentences;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), sentences.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSentencesData_articles')
          ..add('G__typename', G__typename)
          ..add('sentences', sentences))
        .toString();
  }
}

class GSentencesData_articlesBuilder
    implements
        Builder<GSentencesData_articles, GSentencesData_articlesBuilder> {
  _$GSentencesData_articles? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.JsonObject? _sentences;
  _i2.JsonObject? get sentences => _$this._sentences;
  set sentences(_i2.JsonObject? sentences) => _$this._sentences = sentences;

  GSentencesData_articlesBuilder() {
    GSentencesData_articles._initializeBuilder(this);
  }

  GSentencesData_articlesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sentences = $v.sentences;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSentencesData_articles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSentencesData_articles;
  }

  @override
  void update(void Function(GSentencesData_articlesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSentencesData_articles build() => _build();

  _$GSentencesData_articles _build() {
    final _$result = _$v ??
        new _$GSentencesData_articles._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GSentencesData_articles', 'G__typename'),
            sentences: BuiltValueNullFieldError.checkNotNull(
                sentences, r'GSentencesData_articles', 'sentences'));
    replace(_$result);
    return _$result;
  }
}

class _$GinsertArticlesData extends GinsertArticlesData {
  @override
  final String G__typename;
  @override
  final GinsertArticlesData_insert_articles_one? insert_articles_one;

  factory _$GinsertArticlesData(
          [void Function(GinsertArticlesDataBuilder)? updates]) =>
      (new GinsertArticlesDataBuilder()..update(updates))._build();

  _$GinsertArticlesData._({required this.G__typename, this.insert_articles_one})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GinsertArticlesData', 'G__typename');
  }

  @override
  GinsertArticlesData rebuild(
          void Function(GinsertArticlesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GinsertArticlesDataBuilder toBuilder() =>
      new GinsertArticlesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GinsertArticlesData &&
        G__typename == other.G__typename &&
        insert_articles_one == other.insert_articles_one;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), insert_articles_one.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GinsertArticlesData')
          ..add('G__typename', G__typename)
          ..add('insert_articles_one', insert_articles_one))
        .toString();
  }
}

class GinsertArticlesDataBuilder
    implements Builder<GinsertArticlesData, GinsertArticlesDataBuilder> {
  _$GinsertArticlesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GinsertArticlesData_insert_articles_oneBuilder? _insert_articles_one;
  GinsertArticlesData_insert_articles_oneBuilder get insert_articles_one =>
      _$this._insert_articles_one ??=
          new GinsertArticlesData_insert_articles_oneBuilder();
  set insert_articles_one(
          GinsertArticlesData_insert_articles_oneBuilder?
              insert_articles_one) =>
      _$this._insert_articles_one = insert_articles_one;

  GinsertArticlesDataBuilder() {
    GinsertArticlesData._initializeBuilder(this);
  }

  GinsertArticlesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _insert_articles_one = $v.insert_articles_one?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GinsertArticlesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GinsertArticlesData;
  }

  @override
  void update(void Function(GinsertArticlesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GinsertArticlesData build() => _build();

  _$GinsertArticlesData _build() {
    _$GinsertArticlesData _$result;
    try {
      _$result = _$v ??
          new _$GinsertArticlesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GinsertArticlesData', 'G__typename'),
              insert_articles_one: _insert_articles_one?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'insert_articles_one';
        _insert_articles_one?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GinsertArticlesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GinsertArticlesData_insert_articles_one
    extends GinsertArticlesData_insert_articles_one {
  @override
  final String G__typename;
  @override
  final _i3.Guuid id;

  factory _$GinsertArticlesData_insert_articles_one(
          [void Function(GinsertArticlesData_insert_articles_oneBuilder)?
              updates]) =>
      (new GinsertArticlesData_insert_articles_oneBuilder()..update(updates))
          ._build();

  _$GinsertArticlesData_insert_articles_one._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GinsertArticlesData_insert_articles_one', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GinsertArticlesData_insert_articles_one', 'id');
  }

  @override
  GinsertArticlesData_insert_articles_one rebuild(
          void Function(GinsertArticlesData_insert_articles_oneBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GinsertArticlesData_insert_articles_oneBuilder toBuilder() =>
      new GinsertArticlesData_insert_articles_oneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GinsertArticlesData_insert_articles_one &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GinsertArticlesData_insert_articles_one')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GinsertArticlesData_insert_articles_oneBuilder
    implements
        Builder<GinsertArticlesData_insert_articles_one,
            GinsertArticlesData_insert_articles_oneBuilder> {
  _$GinsertArticlesData_insert_articles_one? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i3.GuuidBuilder? _id;
  _i3.GuuidBuilder get id => _$this._id ??= new _i3.GuuidBuilder();
  set id(_i3.GuuidBuilder? id) => _$this._id = id;

  GinsertArticlesData_insert_articles_oneBuilder() {
    GinsertArticlesData_insert_articles_one._initializeBuilder(this);
  }

  GinsertArticlesData_insert_articles_oneBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GinsertArticlesData_insert_articles_one other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GinsertArticlesData_insert_articles_one;
  }

  @override
  void update(
      void Function(GinsertArticlesData_insert_articles_oneBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GinsertArticlesData_insert_articles_one build() => _build();

  _$GinsertArticlesData_insert_articles_one _build() {
    _$GinsertArticlesData_insert_articles_one _$result;
    try {
      _$result = _$v ??
          new _$GinsertArticlesData_insert_articles_one._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GinsertArticlesData_insert_articles_one', 'G__typename'),
              id: id.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GinsertArticlesData_insert_articles_one',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
