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
Serializer<GupdateSentencesData> _$gupdateSentencesDataSerializer =
    new _$GupdateSentencesDataSerializer();
Serializer<GupdateSentencesData_update_articles_by_pk>
    _$gupdateSentencesDataUpdateArticlesByPkSerializer =
    new _$GupdateSentencesData_update_articles_by_pkSerializer();

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
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i2.Guuid)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.sentences;
    if (value != null) {
      result
        ..add('sentences')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.JsonObject)));
    }
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
        case 'id':
          result.id.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
          break;
        case 'sentences':
          result.sentences = serializers.deserialize(value,
              specifiedType: const FullType(_i3.JsonObject)) as _i3.JsonObject?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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
          specifiedType: const FullType(_i2.Guuid)),
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
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateSentencesDataSerializer
    implements StructuredSerializer<GupdateSentencesData> {
  @override
  final Iterable<Type> types = const [
    GupdateSentencesData,
    _$GupdateSentencesData
  ];
  @override
  final String wireName = 'GupdateSentencesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdateSentencesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.update_articles_by_pk;
    if (value != null) {
      result
        ..add('update_articles_by_pk')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GupdateSentencesData_update_articles_by_pk)));
    }
    return result;
  }

  @override
  GupdateSentencesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateSentencesDataBuilder();

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
        case 'update_articles_by_pk':
          result.update_articles_by_pk.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GupdateSentencesData_update_articles_by_pk))!
              as GupdateSentencesData_update_articles_by_pk);
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateSentencesData_update_articles_by_pkSerializer
    implements
        StructuredSerializer<GupdateSentencesData_update_articles_by_pk> {
  @override
  final Iterable<Type> types = const [
    GupdateSentencesData_update_articles_by_pk,
    _$GupdateSentencesData_update_articles_by_pk
  ];
  @override
  final String wireName = 'GupdateSentencesData_update_articles_by_pk';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GupdateSentencesData_update_articles_by_pk object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i2.Guuid)),
    ];

    return result;
  }

  @override
  GupdateSentencesData_update_articles_by_pk deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateSentencesData_update_articles_by_pkBuilder();

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
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
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
  final _i2.Guuid id;
  @override
  final _i3.JsonObject? sentences;
  @override
  final String url;

  factory _$GSentencesData_articles(
          [void Function(GSentencesData_articlesBuilder)? updates]) =>
      (new GSentencesData_articlesBuilder()..update(updates))._build();

  _$GSentencesData_articles._(
      {required this.G__typename,
      required this.id,
      this.sentences,
      required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSentencesData_articles', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GSentencesData_articles', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, r'GSentencesData_articles', 'url');
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
        id == other.id &&
        sentences == other.sentences &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), sentences.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSentencesData_articles')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('sentences', sentences)
          ..add('url', url))
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

  _i2.GuuidBuilder? _id;
  _i2.GuuidBuilder get id => _$this._id ??= new _i2.GuuidBuilder();
  set id(_i2.GuuidBuilder? id) => _$this._id = id;

  _i3.JsonObject? _sentences;
  _i3.JsonObject? get sentences => _$this._sentences;
  set sentences(_i3.JsonObject? sentences) => _$this._sentences = sentences;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  GSentencesData_articlesBuilder() {
    GSentencesData_articles._initializeBuilder(this);
  }

  GSentencesData_articlesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _sentences = $v.sentences;
      _url = $v.url;
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
    _$GSentencesData_articles _$result;
    try {
      _$result = _$v ??
          new _$GSentencesData_articles._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSentencesData_articles', 'G__typename'),
              id: id.build(),
              sentences: sentences,
              url: BuiltValueNullFieldError.checkNotNull(
                  url, r'GSentencesData_articles', 'url'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSentencesData_articles', _$failedField, e.toString());
      }
      rethrow;
    }
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
  final _i2.Guuid id;

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

  _i2.GuuidBuilder? _id;
  _i2.GuuidBuilder get id => _$this._id ??= new _i2.GuuidBuilder();
  set id(_i2.GuuidBuilder? id) => _$this._id = id;

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

class _$GupdateSentencesData extends GupdateSentencesData {
  @override
  final String G__typename;
  @override
  final GupdateSentencesData_update_articles_by_pk? update_articles_by_pk;

  factory _$GupdateSentencesData(
          [void Function(GupdateSentencesDataBuilder)? updates]) =>
      (new GupdateSentencesDataBuilder()..update(updates))._build();

  _$GupdateSentencesData._(
      {required this.G__typename, this.update_articles_by_pk})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GupdateSentencesData', 'G__typename');
  }

  @override
  GupdateSentencesData rebuild(
          void Function(GupdateSentencesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateSentencesDataBuilder toBuilder() =>
      new GupdateSentencesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateSentencesData &&
        G__typename == other.G__typename &&
        update_articles_by_pk == other.update_articles_by_pk;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), update_articles_by_pk.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GupdateSentencesData')
          ..add('G__typename', G__typename)
          ..add('update_articles_by_pk', update_articles_by_pk))
        .toString();
  }
}

class GupdateSentencesDataBuilder
    implements Builder<GupdateSentencesData, GupdateSentencesDataBuilder> {
  _$GupdateSentencesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GupdateSentencesData_update_articles_by_pkBuilder? _update_articles_by_pk;
  GupdateSentencesData_update_articles_by_pkBuilder get update_articles_by_pk =>
      _$this._update_articles_by_pk ??=
          new GupdateSentencesData_update_articles_by_pkBuilder();
  set update_articles_by_pk(
          GupdateSentencesData_update_articles_by_pkBuilder?
              update_articles_by_pk) =>
      _$this._update_articles_by_pk = update_articles_by_pk;

  GupdateSentencesDataBuilder() {
    GupdateSentencesData._initializeBuilder(this);
  }

  GupdateSentencesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _update_articles_by_pk = $v.update_articles_by_pk?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateSentencesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateSentencesData;
  }

  @override
  void update(void Function(GupdateSentencesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdateSentencesData build() => _build();

  _$GupdateSentencesData _build() {
    _$GupdateSentencesData _$result;
    try {
      _$result = _$v ??
          new _$GupdateSentencesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GupdateSentencesData', 'G__typename'),
              update_articles_by_pk: _update_articles_by_pk?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'update_articles_by_pk';
        _update_articles_by_pk?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupdateSentencesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupdateSentencesData_update_articles_by_pk
    extends GupdateSentencesData_update_articles_by_pk {
  @override
  final String G__typename;
  @override
  final _i2.Guuid id;

  factory _$GupdateSentencesData_update_articles_by_pk(
          [void Function(GupdateSentencesData_update_articles_by_pkBuilder)?
              updates]) =>
      (new GupdateSentencesData_update_articles_by_pkBuilder()..update(updates))
          ._build();

  _$GupdateSentencesData_update_articles_by_pk._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GupdateSentencesData_update_articles_by_pk', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GupdateSentencesData_update_articles_by_pk', 'id');
  }

  @override
  GupdateSentencesData_update_articles_by_pk rebuild(
          void Function(GupdateSentencesData_update_articles_by_pkBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateSentencesData_update_articles_by_pkBuilder toBuilder() =>
      new GupdateSentencesData_update_articles_by_pkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateSentencesData_update_articles_by_pk &&
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
            r'GupdateSentencesData_update_articles_by_pk')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GupdateSentencesData_update_articles_by_pkBuilder
    implements
        Builder<GupdateSentencesData_update_articles_by_pk,
            GupdateSentencesData_update_articles_by_pkBuilder> {
  _$GupdateSentencesData_update_articles_by_pk? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GuuidBuilder? _id;
  _i2.GuuidBuilder get id => _$this._id ??= new _i2.GuuidBuilder();
  set id(_i2.GuuidBuilder? id) => _$this._id = id;

  GupdateSentencesData_update_articles_by_pkBuilder() {
    GupdateSentencesData_update_articles_by_pk._initializeBuilder(this);
  }

  GupdateSentencesData_update_articles_by_pkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateSentencesData_update_articles_by_pk other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateSentencesData_update_articles_by_pk;
  }

  @override
  void update(
      void Function(GupdateSentencesData_update_articles_by_pkBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdateSentencesData_update_articles_by_pk build() => _build();

  _$GupdateSentencesData_update_articles_by_pk _build() {
    _$GupdateSentencesData_update_articles_by_pk _$result;
    try {
      _$result = _$v ??
          new _$GupdateSentencesData_update_articles_by_pk._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GupdateSentencesData_update_articles_by_pk', 'G__typename'),
              id: id.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupdateSentencesData_update_articles_by_pk',
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
