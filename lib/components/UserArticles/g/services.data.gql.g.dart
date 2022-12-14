// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserArticleItemsData> _$gUserArticleItemsDataSerializer =
    new _$GUserArticleItemsDataSerializer();
Serializer<GUserArticleItemsData_user_articles>
    _$gUserArticleItemsDataUserArticlesSerializer =
    new _$GUserArticleItemsData_user_articlesSerializer();
Serializer<GUserArticleItemsData_user_articles_article>
    _$gUserArticleItemsDataUserArticlesArticleSerializer =
    new _$GUserArticleItemsData_user_articles_articleSerializer();

class _$GUserArticleItemsDataSerializer
    implements StructuredSerializer<GUserArticleItemsData> {
  @override
  final Iterable<Type> types = const [
    GUserArticleItemsData,
    _$GUserArticleItemsData
  ];
  @override
  final String wireName = 'GUserArticleItemsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserArticleItemsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'user_articles',
      serializers.serialize(object.user_articles,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GUserArticleItemsData_user_articles)])),
    ];

    return result;
  }

  @override
  GUserArticleItemsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserArticleItemsDataBuilder();

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
                const FullType(GUserArticleItemsData_user_articles)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserArticleItemsData_user_articlesSerializer
    implements StructuredSerializer<GUserArticleItemsData_user_articles> {
  @override
  final Iterable<Type> types = const [
    GUserArticleItemsData_user_articles,
    _$GUserArticleItemsData_user_articles
  ];
  @override
  final String wireName = 'GUserArticleItemsData_user_articles';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserArticleItemsData_user_articles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i2.Guuid)),
      'article',
      serializers.serialize(object.article,
          specifiedType:
              const FullType(GUserArticleItemsData_user_articles_article)),
    ];
    Object? value;
    value = object.play_at;
    if (value != null) {
      result
        ..add('play_at')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GUserArticleItemsData_user_articles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserArticleItemsData_user_articlesBuilder();

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
              specifiedType: const FullType(int)) as int?;
          break;
        case 'article':
          result.article.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GUserArticleItemsData_user_articles_article))!
              as GUserArticleItemsData_user_articles_article);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserArticleItemsData_user_articles_articleSerializer
    implements
        StructuredSerializer<GUserArticleItemsData_user_articles_article> {
  @override
  final Iterable<Type> types = const [
    GUserArticleItemsData_user_articles_article,
    _$GUserArticleItemsData_user_articles_article
  ];
  @override
  final String wireName = 'GUserArticleItemsData_user_articles_article';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GUserArticleItemsData_user_articles_article object,
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
  GUserArticleItemsData_user_articles_article deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserArticleItemsData_user_articles_articleBuilder();

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

class _$GUserArticleItemsData extends GUserArticleItemsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GUserArticleItemsData_user_articles> user_articles;

  factory _$GUserArticleItemsData(
          [void Function(GUserArticleItemsDataBuilder)? updates]) =>
      (new GUserArticleItemsDataBuilder()..update(updates))._build();

  _$GUserArticleItemsData._(
      {required this.G__typename, required this.user_articles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserArticleItemsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        user_articles, r'GUserArticleItemsData', 'user_articles');
  }

  @override
  GUserArticleItemsData rebuild(
          void Function(GUserArticleItemsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserArticleItemsDataBuilder toBuilder() =>
      new GUserArticleItemsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserArticleItemsData &&
        G__typename == other.G__typename &&
        user_articles == other.user_articles;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), user_articles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserArticleItemsData')
          ..add('G__typename', G__typename)
          ..add('user_articles', user_articles))
        .toString();
  }
}

class GUserArticleItemsDataBuilder
    implements Builder<GUserArticleItemsData, GUserArticleItemsDataBuilder> {
  _$GUserArticleItemsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GUserArticleItemsData_user_articles>? _user_articles;
  ListBuilder<GUserArticleItemsData_user_articles> get user_articles =>
      _$this._user_articles ??=
          new ListBuilder<GUserArticleItemsData_user_articles>();
  set user_articles(
          ListBuilder<GUserArticleItemsData_user_articles>? user_articles) =>
      _$this._user_articles = user_articles;

  GUserArticleItemsDataBuilder() {
    GUserArticleItemsData._initializeBuilder(this);
  }

  GUserArticleItemsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _user_articles = $v.user_articles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserArticleItemsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserArticleItemsData;
  }

  @override
  void update(void Function(GUserArticleItemsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserArticleItemsData build() => _build();

  _$GUserArticleItemsData _build() {
    _$GUserArticleItemsData _$result;
    try {
      _$result = _$v ??
          new _$GUserArticleItemsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserArticleItemsData', 'G__typename'),
              user_articles: user_articles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user_articles';
        user_articles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserArticleItemsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserArticleItemsData_user_articles
    extends GUserArticleItemsData_user_articles {
  @override
  final String G__typename;
  @override
  final _i2.Guuid id;
  @override
  final int? play_at;
  @override
  final GUserArticleItemsData_user_articles_article article;

  factory _$GUserArticleItemsData_user_articles(
          [void Function(GUserArticleItemsData_user_articlesBuilder)?
              updates]) =>
      (new GUserArticleItemsData_user_articlesBuilder()..update(updates))
          ._build();

  _$GUserArticleItemsData_user_articles._(
      {required this.G__typename,
      required this.id,
      this.play_at,
      required this.article})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserArticleItemsData_user_articles', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserArticleItemsData_user_articles', 'id');
    BuiltValueNullFieldError.checkNotNull(
        article, r'GUserArticleItemsData_user_articles', 'article');
  }

  @override
  GUserArticleItemsData_user_articles rebuild(
          void Function(GUserArticleItemsData_user_articlesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserArticleItemsData_user_articlesBuilder toBuilder() =>
      new GUserArticleItemsData_user_articlesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserArticleItemsData_user_articles &&
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
    return (newBuiltValueToStringHelper(r'GUserArticleItemsData_user_articles')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('play_at', play_at)
          ..add('article', article))
        .toString();
  }
}

class GUserArticleItemsData_user_articlesBuilder
    implements
        Builder<GUserArticleItemsData_user_articles,
            GUserArticleItemsData_user_articlesBuilder> {
  _$GUserArticleItemsData_user_articles? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GuuidBuilder? _id;
  _i2.GuuidBuilder get id => _$this._id ??= new _i2.GuuidBuilder();
  set id(_i2.GuuidBuilder? id) => _$this._id = id;

  int? _play_at;
  int? get play_at => _$this._play_at;
  set play_at(int? play_at) => _$this._play_at = play_at;

  GUserArticleItemsData_user_articles_articleBuilder? _article;
  GUserArticleItemsData_user_articles_articleBuilder get article =>
      _$this._article ??=
          new GUserArticleItemsData_user_articles_articleBuilder();
  set article(GUserArticleItemsData_user_articles_articleBuilder? article) =>
      _$this._article = article;

  GUserArticleItemsData_user_articlesBuilder() {
    GUserArticleItemsData_user_articles._initializeBuilder(this);
  }

  GUserArticleItemsData_user_articlesBuilder get _$this {
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
  void replace(GUserArticleItemsData_user_articles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserArticleItemsData_user_articles;
  }

  @override
  void update(
      void Function(GUserArticleItemsData_user_articlesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserArticleItemsData_user_articles build() => _build();

  _$GUserArticleItemsData_user_articles _build() {
    _$GUserArticleItemsData_user_articles _$result;
    try {
      _$result = _$v ??
          new _$GUserArticleItemsData_user_articles._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserArticleItemsData_user_articles', 'G__typename'),
              id: id.build(),
              play_at: play_at,
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
            r'GUserArticleItemsData_user_articles',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserArticleItemsData_user_articles_article
    extends GUserArticleItemsData_user_articles_article {
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

  factory _$GUserArticleItemsData_user_articles_article(
          [void Function(GUserArticleItemsData_user_articles_articleBuilder)?
              updates]) =>
      (new GUserArticleItemsData_user_articles_articleBuilder()
            ..update(updates))
          ._build();

  _$GUserArticleItemsData_user_articles_article._(
      {required this.G__typename,
      required this.id,
      this.favicon,
      this.thumbnail,
      this.title,
      required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserArticleItemsData_user_articles_article', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserArticleItemsData_user_articles_article', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, r'GUserArticleItemsData_user_articles_article', 'url');
  }

  @override
  GUserArticleItemsData_user_articles_article rebuild(
          void Function(GUserArticleItemsData_user_articles_articleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserArticleItemsData_user_articles_articleBuilder toBuilder() =>
      new GUserArticleItemsData_user_articles_articleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserArticleItemsData_user_articles_article &&
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
            r'GUserArticleItemsData_user_articles_article')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('favicon', favicon)
          ..add('thumbnail', thumbnail)
          ..add('title', title)
          ..add('url', url))
        .toString();
  }
}

class GUserArticleItemsData_user_articles_articleBuilder
    implements
        Builder<GUserArticleItemsData_user_articles_article,
            GUserArticleItemsData_user_articles_articleBuilder> {
  _$GUserArticleItemsData_user_articles_article? _$v;

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

  GUserArticleItemsData_user_articles_articleBuilder() {
    GUserArticleItemsData_user_articles_article._initializeBuilder(this);
  }

  GUserArticleItemsData_user_articles_articleBuilder get _$this {
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
  void replace(GUserArticleItemsData_user_articles_article other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserArticleItemsData_user_articles_article;
  }

  @override
  void update(
      void Function(GUserArticleItemsData_user_articles_articleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserArticleItemsData_user_articles_article build() => _build();

  _$GUserArticleItemsData_user_articles_article _build() {
    _$GUserArticleItemsData_user_articles_article _$result;
    try {
      _$result = _$v ??
          new _$GUserArticleItemsData_user_articles_article._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GUserArticleItemsData_user_articles_article',
                  'G__typename'),
              id: id.build(),
              favicon: favicon,
              thumbnail: thumbnail,
              title: title,
              url: BuiltValueNullFieldError.checkNotNull(
                  url, r'GUserArticleItemsData_user_articles_article', 'url'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserArticleItemsData_user_articles_article',
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
