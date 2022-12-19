// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserArticlesData> _$gUserArticlesDataSerializer =
    new _$GUserArticlesDataSerializer();
Serializer<GUserArticlesData_user_articles>
    _$gUserArticlesDataUserArticlesSerializer =
    new _$GUserArticlesData_user_articlesSerializer();
Serializer<GUserArticlesData_user_articles_article>
    _$gUserArticlesDataUserArticlesArticleSerializer =
    new _$GUserArticlesData_user_articles_articleSerializer();
Serializer<GupsertUserArticlesData> _$gupsertUserArticlesDataSerializer =
    new _$GupsertUserArticlesDataSerializer();
Serializer<GupsertUserArticlesData_insert_user_articles_one>
    _$gupsertUserArticlesDataInsertUserArticlesOneSerializer =
    new _$GupsertUserArticlesData_insert_user_articles_oneSerializer();

class _$GUserArticlesDataSerializer
    implements StructuredSerializer<GUserArticlesData> {
  @override
  final Iterable<Type> types = const [GUserArticlesData, _$GUserArticlesData];
  @override
  final String wireName = 'GUserArticlesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserArticlesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'user_articles',
      serializers.serialize(object.user_articles,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GUserArticlesData_user_articles)])),
    ];

    return result;
  }

  @override
  GUserArticlesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserArticlesDataBuilder();

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
        case 'user_articles':
          result.user_articles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GUserArticlesData_user_articles)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserArticlesData_user_articlesSerializer
    implements StructuredSerializer<GUserArticlesData_user_articles> {
  @override
  final Iterable<Type> types = const [
    GUserArticlesData_user_articles,
    _$GUserArticlesData_user_articles
  ];
  @override
  final String wireName = 'GUserArticlesData_user_articles';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserArticlesData_user_articles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i2.Guuid)),
      'play_at',
      serializers.serialize(object.play_at, specifiedType: const FullType(int)),
      'article',
      serializers.serialize(object.article,
          specifiedType:
              const FullType(GUserArticlesData_user_articles_article)),
    ];

    return result;
  }

  @override
  GUserArticlesData_user_articles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserArticlesData_user_articlesBuilder();

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
        case 'play_at':
          result.play_at = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'article':
          result.article.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUserArticlesData_user_articles_article))!
              as GUserArticlesData_user_articles_article);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserArticlesData_user_articles_articleSerializer
    implements StructuredSerializer<GUserArticlesData_user_articles_article> {
  @override
  final Iterable<Type> types = const [
    GUserArticlesData_user_articles_article,
    _$GUserArticlesData_user_articles_article
  ];
  @override
  final String wireName = 'GUserArticlesData_user_articles_article';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserArticlesData_user_articles_article object,
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
    value = object.favicon;
    if (value != null) {
      result
        ..add('favicon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUserArticlesData_user_articles_article deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserArticlesData_user_articles_articleBuilder();

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
        case 'favicon':
          result.favicon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$GupsertUserArticlesDataSerializer
    implements StructuredSerializer<GupsertUserArticlesData> {
  @override
  final Iterable<Type> types = const [
    GupsertUserArticlesData,
    _$GupsertUserArticlesData
  ];
  @override
  final String wireName = 'GupsertUserArticlesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupsertUserArticlesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.insert_user_articles_one;
    if (value != null) {
      result
        ..add('insert_user_articles_one')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GupsertUserArticlesData_insert_user_articles_one)));
    }
    return result;
  }

  @override
  GupsertUserArticlesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupsertUserArticlesDataBuilder();

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
        case 'insert_user_articles_one':
          result.insert_user_articles_one.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GupsertUserArticlesData_insert_user_articles_one))!
              as GupsertUserArticlesData_insert_user_articles_one);
          break;
      }
    }

    return result.build();
  }
}

class _$GupsertUserArticlesData_insert_user_articles_oneSerializer
    implements
        StructuredSerializer<GupsertUserArticlesData_insert_user_articles_one> {
  @override
  final Iterable<Type> types = const [
    GupsertUserArticlesData_insert_user_articles_one,
    _$GupsertUserArticlesData_insert_user_articles_one
  ];
  @override
  final String wireName = 'GupsertUserArticlesData_insert_user_articles_one';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GupsertUserArticlesData_insert_user_articles_one object,
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
  GupsertUserArticlesData_insert_user_articles_one deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GupsertUserArticlesData_insert_user_articles_oneBuilder();

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

class _$GUserArticlesData extends GUserArticlesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GUserArticlesData_user_articles> user_articles;

  factory _$GUserArticlesData(
          [void Function(GUserArticlesDataBuilder)? updates]) =>
      (new GUserArticlesDataBuilder()..update(updates))._build();

  _$GUserArticlesData._(
      {required this.G__typename, required this.user_articles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserArticlesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        user_articles, r'GUserArticlesData', 'user_articles');
  }

  @override
  GUserArticlesData rebuild(void Function(GUserArticlesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserArticlesDataBuilder toBuilder() =>
      new GUserArticlesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserArticlesData &&
        G__typename == other.G__typename &&
        user_articles == other.user_articles;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), user_articles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserArticlesData')
          ..add('G__typename', G__typename)
          ..add('user_articles', user_articles))
        .toString();
  }
}

class GUserArticlesDataBuilder
    implements Builder<GUserArticlesData, GUserArticlesDataBuilder> {
  _$GUserArticlesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GUserArticlesData_user_articles>? _user_articles;
  ListBuilder<GUserArticlesData_user_articles> get user_articles =>
      _$this._user_articles ??=
          new ListBuilder<GUserArticlesData_user_articles>();
  set user_articles(
          ListBuilder<GUserArticlesData_user_articles>? user_articles) =>
      _$this._user_articles = user_articles;

  GUserArticlesDataBuilder() {
    GUserArticlesData._initializeBuilder(this);
  }

  GUserArticlesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _user_articles = $v.user_articles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserArticlesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserArticlesData;
  }

  @override
  void update(void Function(GUserArticlesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserArticlesData build() => _build();

  _$GUserArticlesData _build() {
    _$GUserArticlesData _$result;
    try {
      _$result = _$v ??
          new _$GUserArticlesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserArticlesData', 'G__typename'),
              user_articles: user_articles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user_articles';
        user_articles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserArticlesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserArticlesData_user_articles
    extends GUserArticlesData_user_articles {
  @override
  final String G__typename;
  @override
  final _i2.Guuid id;
  @override
  final int play_at;
  @override
  final GUserArticlesData_user_articles_article article;

  factory _$GUserArticlesData_user_articles(
          [void Function(GUserArticlesData_user_articlesBuilder)? updates]) =>
      (new GUserArticlesData_user_articlesBuilder()..update(updates))._build();

  _$GUserArticlesData_user_articles._(
      {required this.G__typename,
      required this.id,
      required this.play_at,
      required this.article})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserArticlesData_user_articles', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserArticlesData_user_articles', 'id');
    BuiltValueNullFieldError.checkNotNull(
        play_at, r'GUserArticlesData_user_articles', 'play_at');
    BuiltValueNullFieldError.checkNotNull(
        article, r'GUserArticlesData_user_articles', 'article');
  }

  @override
  GUserArticlesData_user_articles rebuild(
          void Function(GUserArticlesData_user_articlesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserArticlesData_user_articlesBuilder toBuilder() =>
      new GUserArticlesData_user_articlesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserArticlesData_user_articles &&
        G__typename == other.G__typename &&
        id == other.id &&
        play_at == other.play_at &&
        article == other.article;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), play_at.hashCode),
        article.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserArticlesData_user_articles')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('play_at', play_at)
          ..add('article', article))
        .toString();
  }
}

class GUserArticlesData_user_articlesBuilder
    implements
        Builder<GUserArticlesData_user_articles,
            GUserArticlesData_user_articlesBuilder> {
  _$GUserArticlesData_user_articles? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GuuidBuilder? _id;
  _i2.GuuidBuilder get id => _$this._id ??= new _i2.GuuidBuilder();
  set id(_i2.GuuidBuilder? id) => _$this._id = id;

  int? _play_at;
  int? get play_at => _$this._play_at;
  set play_at(int? play_at) => _$this._play_at = play_at;

  GUserArticlesData_user_articles_articleBuilder? _article;
  GUserArticlesData_user_articles_articleBuilder get article =>
      _$this._article ??= new GUserArticlesData_user_articles_articleBuilder();
  set article(GUserArticlesData_user_articles_articleBuilder? article) =>
      _$this._article = article;

  GUserArticlesData_user_articlesBuilder() {
    GUserArticlesData_user_articles._initializeBuilder(this);
  }

  GUserArticlesData_user_articlesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _play_at = $v.play_at;
      _article = $v.article.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserArticlesData_user_articles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserArticlesData_user_articles;
  }

  @override
  void update(void Function(GUserArticlesData_user_articlesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserArticlesData_user_articles build() => _build();

  _$GUserArticlesData_user_articles _build() {
    _$GUserArticlesData_user_articles _$result;
    try {
      _$result = _$v ??
          new _$GUserArticlesData_user_articles._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserArticlesData_user_articles', 'G__typename'),
              id: id.build(),
              play_at: BuiltValueNullFieldError.checkNotNull(
                  play_at, r'GUserArticlesData_user_articles', 'play_at'),
              article: article.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();

        _$failedField = 'article';
        article.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserArticlesData_user_articles', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserArticlesData_user_articles_article
    extends GUserArticlesData_user_articles_article {
  @override
  final String G__typename;
  @override
  final _i2.Guuid id;
  @override
  final String? favicon;
  @override
  final String? thumbnail;
  @override
  final String? title;
  @override
  final String url;

  factory _$GUserArticlesData_user_articles_article(
          [void Function(GUserArticlesData_user_articles_articleBuilder)?
              updates]) =>
      (new GUserArticlesData_user_articles_articleBuilder()..update(updates))
          ._build();

  _$GUserArticlesData_user_articles_article._(
      {required this.G__typename,
      required this.id,
      this.favicon,
      this.thumbnail,
      this.title,
      required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserArticlesData_user_articles_article', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserArticlesData_user_articles_article', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, r'GUserArticlesData_user_articles_article', 'url');
  }

  @override
  GUserArticlesData_user_articles_article rebuild(
          void Function(GUserArticlesData_user_articles_articleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserArticlesData_user_articles_articleBuilder toBuilder() =>
      new GUserArticlesData_user_articles_articleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserArticlesData_user_articles_article &&
        G__typename == other.G__typename &&
        id == other.id &&
        favicon == other.favicon &&
        thumbnail == other.thumbnail &&
        title == other.title &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    favicon.hashCode),
                thumbnail.hashCode),
            title.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GUserArticlesData_user_articles_article')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('favicon', favicon)
          ..add('thumbnail', thumbnail)
          ..add('title', title)
          ..add('url', url))
        .toString();
  }
}

class GUserArticlesData_user_articles_articleBuilder
    implements
        Builder<GUserArticlesData_user_articles_article,
            GUserArticlesData_user_articles_articleBuilder> {
  _$GUserArticlesData_user_articles_article? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GuuidBuilder? _id;
  _i2.GuuidBuilder get id => _$this._id ??= new _i2.GuuidBuilder();
  set id(_i2.GuuidBuilder? id) => _$this._id = id;

  String? _favicon;
  String? get favicon => _$this._favicon;
  set favicon(String? favicon) => _$this._favicon = favicon;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  GUserArticlesData_user_articles_articleBuilder() {
    GUserArticlesData_user_articles_article._initializeBuilder(this);
  }

  GUserArticlesData_user_articles_articleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _favicon = $v.favicon;
      _thumbnail = $v.thumbnail;
      _title = $v.title;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserArticlesData_user_articles_article other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserArticlesData_user_articles_article;
  }

  @override
  void update(
      void Function(GUserArticlesData_user_articles_articleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserArticlesData_user_articles_article build() => _build();

  _$GUserArticlesData_user_articles_article _build() {
    _$GUserArticlesData_user_articles_article _$result;
    try {
      _$result = _$v ??
          new _$GUserArticlesData_user_articles_article._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserArticlesData_user_articles_article', 'G__typename'),
              id: id.build(),
              favicon: favicon,
              thumbnail: thumbnail,
              title: title,
              url: BuiltValueNullFieldError.checkNotNull(
                  url, r'GUserArticlesData_user_articles_article', 'url'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserArticlesData_user_articles_article',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupsertUserArticlesData extends GupsertUserArticlesData {
  @override
  final String G__typename;
  @override
  final GupsertUserArticlesData_insert_user_articles_one?
      insert_user_articles_one;

  factory _$GupsertUserArticlesData(
          [void Function(GupsertUserArticlesDataBuilder)? updates]) =>
      (new GupsertUserArticlesDataBuilder()..update(updates))._build();

  _$GupsertUserArticlesData._(
      {required this.G__typename, this.insert_user_articles_one})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GupsertUserArticlesData', 'G__typename');
  }

  @override
  GupsertUserArticlesData rebuild(
          void Function(GupsertUserArticlesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupsertUserArticlesDataBuilder toBuilder() =>
      new GupsertUserArticlesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupsertUserArticlesData &&
        G__typename == other.G__typename &&
        insert_user_articles_one == other.insert_user_articles_one;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), insert_user_articles_one.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GupsertUserArticlesData')
          ..add('G__typename', G__typename)
          ..add('insert_user_articles_one', insert_user_articles_one))
        .toString();
  }
}

class GupsertUserArticlesDataBuilder
    implements
        Builder<GupsertUserArticlesData, GupsertUserArticlesDataBuilder> {
  _$GupsertUserArticlesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GupsertUserArticlesData_insert_user_articles_oneBuilder?
      _insert_user_articles_one;
  GupsertUserArticlesData_insert_user_articles_oneBuilder
      get insert_user_articles_one => _$this._insert_user_articles_one ??=
          new GupsertUserArticlesData_insert_user_articles_oneBuilder();
  set insert_user_articles_one(
          GupsertUserArticlesData_insert_user_articles_oneBuilder?
              insert_user_articles_one) =>
      _$this._insert_user_articles_one = insert_user_articles_one;

  GupsertUserArticlesDataBuilder() {
    GupsertUserArticlesData._initializeBuilder(this);
  }

  GupsertUserArticlesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _insert_user_articles_one = $v.insert_user_articles_one?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupsertUserArticlesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupsertUserArticlesData;
  }

  @override
  void update(void Function(GupsertUserArticlesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupsertUserArticlesData build() => _build();

  _$GupsertUserArticlesData _build() {
    _$GupsertUserArticlesData _$result;
    try {
      _$result = _$v ??
          new _$GupsertUserArticlesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GupsertUserArticlesData', 'G__typename'),
              insert_user_articles_one: _insert_user_articles_one?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'insert_user_articles_one';
        _insert_user_articles_one?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupsertUserArticlesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupsertUserArticlesData_insert_user_articles_one
    extends GupsertUserArticlesData_insert_user_articles_one {
  @override
  final String G__typename;
  @override
  final _i2.Guuid id;

  factory _$GupsertUserArticlesData_insert_user_articles_one(
          [void Function(
                  GupsertUserArticlesData_insert_user_articles_oneBuilder)?
              updates]) =>
      (new GupsertUserArticlesData_insert_user_articles_oneBuilder()
            ..update(updates))
          ._build();

  _$GupsertUserArticlesData_insert_user_articles_one._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GupsertUserArticlesData_insert_user_articles_one', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GupsertUserArticlesData_insert_user_articles_one', 'id');
  }

  @override
  GupsertUserArticlesData_insert_user_articles_one rebuild(
          void Function(GupsertUserArticlesData_insert_user_articles_oneBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupsertUserArticlesData_insert_user_articles_oneBuilder toBuilder() =>
      new GupsertUserArticlesData_insert_user_articles_oneBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupsertUserArticlesData_insert_user_articles_one &&
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
            r'GupsertUserArticlesData_insert_user_articles_one')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GupsertUserArticlesData_insert_user_articles_oneBuilder
    implements
        Builder<GupsertUserArticlesData_insert_user_articles_one,
            GupsertUserArticlesData_insert_user_articles_oneBuilder> {
  _$GupsertUserArticlesData_insert_user_articles_one? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GuuidBuilder? _id;
  _i2.GuuidBuilder get id => _$this._id ??= new _i2.GuuidBuilder();
  set id(_i2.GuuidBuilder? id) => _$this._id = id;

  GupsertUserArticlesData_insert_user_articles_oneBuilder() {
    GupsertUserArticlesData_insert_user_articles_one._initializeBuilder(this);
  }

  GupsertUserArticlesData_insert_user_articles_oneBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupsertUserArticlesData_insert_user_articles_one other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupsertUserArticlesData_insert_user_articles_one;
  }

  @override
  void update(
      void Function(GupsertUserArticlesData_insert_user_articles_oneBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GupsertUserArticlesData_insert_user_articles_one build() => _build();

  _$GupsertUserArticlesData_insert_user_articles_one _build() {
    _$GupsertUserArticlesData_insert_user_articles_one _$result;
    try {
      _$result = _$v ??
          new _$GupsertUserArticlesData_insert_user_articles_one._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GupsertUserArticlesData_insert_user_articles_one',
                  'G__typename'),
              id: id.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupsertUserArticlesData_insert_user_articles_one',
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
