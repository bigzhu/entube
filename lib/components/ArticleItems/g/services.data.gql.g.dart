// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GArticleItemsData> _$gArticleItemsDataSerializer =
    new _$GArticleItemsDataSerializer();
Serializer<GArticleItemsData_articles> _$gArticleItemsDataArticlesSerializer =
    new _$GArticleItemsData_articlesSerializer();
Serializer<GUserArticleItemsData> _$gUserArticleItemsDataSerializer =
    new _$GUserArticleItemsDataSerializer();
Serializer<GUserArticleItemsData_user_articles>
    _$gUserArticleItemsDataUserArticlesSerializer =
    new _$GUserArticleItemsData_user_articlesSerializer();
Serializer<GUserArticleItemsData_user_articles_article>
    _$gUserArticleItemsDataUserArticlesArticleSerializer =
    new _$GUserArticleItemsData_user_articles_articleSerializer();
Serializer<GArticleFragmentData> _$gArticleFragmentDataSerializer =
    new _$GArticleFragmentDataSerializer();

class _$GArticleItemsDataSerializer
    implements StructuredSerializer<GArticleItemsData> {
  @override
  final Iterable<Type> types = const [GArticleItemsData, _$GArticleItemsData];
  @override
  final String wireName = 'GArticleItemsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GArticleItemsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'articles',
      serializers.serialize(object.articles,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GArticleItemsData_articles)])),
    ];

    return result;
  }

  @override
  GArticleItemsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GArticleItemsDataBuilder();

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
                const FullType(GArticleItemsData_articles)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GArticleItemsData_articlesSerializer
    implements StructuredSerializer<GArticleItemsData_articles> {
  @override
  final Iterable<Type> types = const [
    GArticleItemsData_articles,
    _$GArticleItemsData_articles
  ];
  @override
  final String wireName = 'GArticleItemsData_articles';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GArticleItemsData_articles object,
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
      'created_at',
      serializers.serialize(object.created_at,
          specifiedType: const FullType(_i2.Gtimestamptz)),
      'updated_at',
      serializers.serialize(object.updated_at,
          specifiedType: const FullType(_i2.Gtimestamptz)),
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
    value = object.created_by;
    if (value != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Guuid)));
    }
    value = object.updated_by;
    if (value != null) {
      result
        ..add('updated_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Guuid)));
    }
    return result;
  }

  @override
  GArticleItemsData_articles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GArticleItemsData_articlesBuilder();

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
        case 'created_by':
          result.created_by.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
          break;
        case 'created_at':
          result.created_at.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Gtimestamptz))!
              as _i2.Gtimestamptz);
          break;
        case 'updated_by':
          result.updated_by.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
          break;
        case 'updated_at':
          result.updated_at.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Gtimestamptz))!
              as _i2.Gtimestamptz);
          break;
      }
    }

    return result.build();
  }
}

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
      'created_by',
      serializers.serialize(object.created_by,
          specifiedType: const FullType(_i2.Guuid)),
      'created_at',
      serializers.serialize(object.created_at,
          specifiedType: const FullType(_i2.Gtimestamptz)),
      'updated_at',
      serializers.serialize(object.updated_at,
          specifiedType: const FullType(_i2.Gtimestamptz)),
      'updated_by',
      serializers.serialize(object.updated_by,
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
    value = object.user_id;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Guuid)));
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
        case 'user_id':
          result.user_id.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
          break;
        case 'created_by':
          result.created_by.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
          break;
        case 'created_at':
          result.created_at.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Gtimestamptz))!
              as _i2.Gtimestamptz);
          break;
        case 'updated_at':
          result.updated_at.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Gtimestamptz))!
              as _i2.Gtimestamptz);
          break;
        case 'updated_by':
          result.updated_by.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
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
      'created_at',
      serializers.serialize(object.created_at,
          specifiedType: const FullType(_i2.Gtimestamptz)),
      'updated_at',
      serializers.serialize(object.updated_at,
          specifiedType: const FullType(_i2.Gtimestamptz)),
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
    value = object.created_by;
    if (value != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Guuid)));
    }
    value = object.updated_by;
    if (value != null) {
      result
        ..add('updated_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Guuid)));
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
        case 'created_by':
          result.created_by.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
          break;
        case 'created_at':
          result.created_at.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Gtimestamptz))!
              as _i2.Gtimestamptz);
          break;
        case 'updated_by':
          result.updated_by.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
          break;
        case 'updated_at':
          result.updated_at.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Gtimestamptz))!
              as _i2.Gtimestamptz);
          break;
      }
    }

    return result.build();
  }
}

class _$GArticleFragmentDataSerializer
    implements StructuredSerializer<GArticleFragmentData> {
  @override
  final Iterable<Type> types = const [
    GArticleFragmentData,
    _$GArticleFragmentData
  ];
  @override
  final String wireName = 'GArticleFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GArticleFragmentData object,
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
      'created_at',
      serializers.serialize(object.created_at,
          specifiedType: const FullType(_i2.Gtimestamptz)),
      'updated_at',
      serializers.serialize(object.updated_at,
          specifiedType: const FullType(_i2.Gtimestamptz)),
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
    value = object.created_by;
    if (value != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Guuid)));
    }
    value = object.updated_by;
    if (value != null) {
      result
        ..add('updated_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Guuid)));
    }
    return result;
  }

  @override
  GArticleFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GArticleFragmentDataBuilder();

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
        case 'created_by':
          result.created_by.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
          break;
        case 'created_at':
          result.created_at.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Gtimestamptz))!
              as _i2.Gtimestamptz);
          break;
        case 'updated_by':
          result.updated_by.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
          break;
        case 'updated_at':
          result.updated_at.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Gtimestamptz))!
              as _i2.Gtimestamptz);
          break;
      }
    }

    return result.build();
  }
}

class _$GArticleItemsData extends GArticleItemsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GArticleItemsData_articles> articles;

  factory _$GArticleItemsData(
          [void Function(GArticleItemsDataBuilder)? updates]) =>
      (new GArticleItemsDataBuilder()..update(updates))._build();

  _$GArticleItemsData._({required this.G__typename, required this.articles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GArticleItemsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        articles, r'GArticleItemsData', 'articles');
  }

  @override
  GArticleItemsData rebuild(void Function(GArticleItemsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GArticleItemsDataBuilder toBuilder() =>
      new GArticleItemsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GArticleItemsData &&
        G__typename == other.G__typename &&
        articles == other.articles;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), articles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GArticleItemsData')
          ..add('G__typename', G__typename)
          ..add('articles', articles))
        .toString();
  }
}

class GArticleItemsDataBuilder
    implements Builder<GArticleItemsData, GArticleItemsDataBuilder> {
  _$GArticleItemsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GArticleItemsData_articles>? _articles;
  ListBuilder<GArticleItemsData_articles> get articles =>
      _$this._articles ??= new ListBuilder<GArticleItemsData_articles>();
  set articles(ListBuilder<GArticleItemsData_articles>? articles) =>
      _$this._articles = articles;

  GArticleItemsDataBuilder() {
    GArticleItemsData._initializeBuilder(this);
  }

  GArticleItemsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _articles = $v.articles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GArticleItemsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GArticleItemsData;
  }

  @override
  void update(void Function(GArticleItemsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GArticleItemsData build() => _build();

  _$GArticleItemsData _build() {
    _$GArticleItemsData _$result;
    try {
      _$result = _$v ??
          new _$GArticleItemsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GArticleItemsData', 'G__typename'),
              articles: articles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'articles';
        articles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GArticleItemsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GArticleItemsData_articles extends GArticleItemsData_articles {
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
  @override
  final _i2.Guuid? created_by;
  @override
  final _i2.Gtimestamptz created_at;
  @override
  final _i2.Guuid? updated_by;
  @override
  final _i2.Gtimestamptz updated_at;

  factory _$GArticleItemsData_articles(
          [void Function(GArticleItemsData_articlesBuilder)? updates]) =>
      (new GArticleItemsData_articlesBuilder()..update(updates))._build();

  _$GArticleItemsData_articles._(
      {required this.G__typename,
      required this.id,
      this.favicon,
      this.thumbnail,
      this.title,
      required this.url,
      this.created_by,
      required this.created_at,
      this.updated_by,
      required this.updated_at})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GArticleItemsData_articles', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GArticleItemsData_articles', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, r'GArticleItemsData_articles', 'url');
    BuiltValueNullFieldError.checkNotNull(
        created_at, r'GArticleItemsData_articles', 'created_at');
    BuiltValueNullFieldError.checkNotNull(
        updated_at, r'GArticleItemsData_articles', 'updated_at');
  }

  @override
  GArticleItemsData_articles rebuild(
          void Function(GArticleItemsData_articlesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GArticleItemsData_articlesBuilder toBuilder() =>
      new GArticleItemsData_articlesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GArticleItemsData_articles &&
        G__typename == other.G__typename &&
        id == other.id &&
        favicon == other.favicon &&
        thumbnail == other.thumbnail &&
        title == other.title &&
        url == other.url &&
        created_by == other.created_by &&
        created_at == other.created_at &&
        updated_by == other.updated_by &&
        updated_at == other.updated_at;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, G__typename.hashCode),
                                        id.hashCode),
                                    favicon.hashCode),
                                thumbnail.hashCode),
                            title.hashCode),
                        url.hashCode),
                    created_by.hashCode),
                created_at.hashCode),
            updated_by.hashCode),
        updated_at.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GArticleItemsData_articles')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('favicon', favicon)
          ..add('thumbnail', thumbnail)
          ..add('title', title)
          ..add('url', url)
          ..add('created_by', created_by)
          ..add('created_at', created_at)
          ..add('updated_by', updated_by)
          ..add('updated_at', updated_at))
        .toString();
  }
}

class GArticleItemsData_articlesBuilder
    implements
        Builder<GArticleItemsData_articles, GArticleItemsData_articlesBuilder> {
  _$GArticleItemsData_articles? _$v;

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

  _i2.GuuidBuilder? _created_by;
  _i2.GuuidBuilder get created_by =>
      _$this._created_by ??= new _i2.GuuidBuilder();
  set created_by(_i2.GuuidBuilder? created_by) =>
      _$this._created_by = created_by;

  _i2.GtimestamptzBuilder? _created_at;
  _i2.GtimestamptzBuilder get created_at =>
      _$this._created_at ??= new _i2.GtimestamptzBuilder();
  set created_at(_i2.GtimestamptzBuilder? created_at) =>
      _$this._created_at = created_at;

  _i2.GuuidBuilder? _updated_by;
  _i2.GuuidBuilder get updated_by =>
      _$this._updated_by ??= new _i2.GuuidBuilder();
  set updated_by(_i2.GuuidBuilder? updated_by) =>
      _$this._updated_by = updated_by;

  _i2.GtimestamptzBuilder? _updated_at;
  _i2.GtimestamptzBuilder get updated_at =>
      _$this._updated_at ??= new _i2.GtimestamptzBuilder();
  set updated_at(_i2.GtimestamptzBuilder? updated_at) =>
      _$this._updated_at = updated_at;

  GArticleItemsData_articlesBuilder() {
    GArticleItemsData_articles._initializeBuilder(this);
  }

  GArticleItemsData_articlesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _favicon = $v.favicon;
      _thumbnail = $v.thumbnail;
      _title = $v.title;
      _url = $v.url;
      _created_by = $v.created_by?.toBuilder();
      _created_at = $v.created_at.toBuilder();
      _updated_by = $v.updated_by?.toBuilder();
      _updated_at = $v.updated_at.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GArticleItemsData_articles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GArticleItemsData_articles;
  }

  @override
  void update(void Function(GArticleItemsData_articlesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GArticleItemsData_articles build() => _build();

  _$GArticleItemsData_articles _build() {
    _$GArticleItemsData_articles _$result;
    try {
      _$result = _$v ??
          new _$GArticleItemsData_articles._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GArticleItemsData_articles', 'G__typename'),
              id: id.build(),
              favicon: favicon,
              thumbnail: thumbnail,
              title: title,
              url: BuiltValueNullFieldError.checkNotNull(
                  url, r'GArticleItemsData_articles', 'url'),
              created_by: _created_by?.build(),
              created_at: created_at.build(),
              updated_by: _updated_by?.build(),
              updated_at: updated_at.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();

        _$failedField = 'created_by';
        _created_by?.build();
        _$failedField = 'created_at';
        created_at.build();
        _$failedField = 'updated_by';
        _updated_by?.build();
        _$failedField = 'updated_at';
        updated_at.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GArticleItemsData_articles', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
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
  final _i2.Guuid? user_id;
  @override
  final _i2.Guuid created_by;
  @override
  final _i2.Gtimestamptz created_at;
  @override
  final _i2.Gtimestamptz updated_at;
  @override
  final _i2.Guuid updated_by;
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
      this.user_id,
      required this.created_by,
      required this.created_at,
      required this.updated_at,
      required this.updated_by,
      required this.article})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserArticleItemsData_user_articles', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserArticleItemsData_user_articles', 'id');
    BuiltValueNullFieldError.checkNotNull(
        created_by, r'GUserArticleItemsData_user_articles', 'created_by');
    BuiltValueNullFieldError.checkNotNull(
        created_at, r'GUserArticleItemsData_user_articles', 'created_at');
    BuiltValueNullFieldError.checkNotNull(
        updated_at, r'GUserArticleItemsData_user_articles', 'updated_at');
    BuiltValueNullFieldError.checkNotNull(
        updated_by, r'GUserArticleItemsData_user_articles', 'updated_by');
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
        user_id == other.user_id &&
        created_by == other.created_by &&
        created_at == other.created_at &&
        updated_at == other.updated_at &&
        updated_by == other.updated_by &&
        article == other.article;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                                play_at.hashCode),
                            user_id.hashCode),
                        created_by.hashCode),
                    created_at.hashCode),
                updated_at.hashCode),
            updated_by.hashCode),
        article.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserArticleItemsData_user_articles')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('play_at', play_at)
          ..add('user_id', user_id)
          ..add('created_by', created_by)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at)
          ..add('updated_by', updated_by)
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

  _i2.GuuidBuilder? _user_id;
  _i2.GuuidBuilder get user_id => _$this._user_id ??= new _i2.GuuidBuilder();
  set user_id(_i2.GuuidBuilder? user_id) => _$this._user_id = user_id;

  _i2.GuuidBuilder? _created_by;
  _i2.GuuidBuilder get created_by =>
      _$this._created_by ??= new _i2.GuuidBuilder();
  set created_by(_i2.GuuidBuilder? created_by) =>
      _$this._created_by = created_by;

  _i2.GtimestamptzBuilder? _created_at;
  _i2.GtimestamptzBuilder get created_at =>
      _$this._created_at ??= new _i2.GtimestamptzBuilder();
  set created_at(_i2.GtimestamptzBuilder? created_at) =>
      _$this._created_at = created_at;

  _i2.GtimestamptzBuilder? _updated_at;
  _i2.GtimestamptzBuilder get updated_at =>
      _$this._updated_at ??= new _i2.GtimestamptzBuilder();
  set updated_at(_i2.GtimestamptzBuilder? updated_at) =>
      _$this._updated_at = updated_at;

  _i2.GuuidBuilder? _updated_by;
  _i2.GuuidBuilder get updated_by =>
      _$this._updated_by ??= new _i2.GuuidBuilder();
  set updated_by(_i2.GuuidBuilder? updated_by) =>
      _$this._updated_by = updated_by;

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
      _user_id = $v.user_id?.toBuilder();
      _created_by = $v.created_by.toBuilder();
      _created_at = $v.created_at.toBuilder();
      _updated_at = $v.updated_at.toBuilder();
      _updated_by = $v.updated_by.toBuilder();
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
              user_id: _user_id?.build(),
              created_by: created_by.build(),
              created_at: created_at.build(),
              updated_at: updated_at.build(),
              updated_by: updated_by.build(),
              article: article.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();

        _$failedField = 'user_id';
        _user_id?.build();
        _$failedField = 'created_by';
        created_by.build();
        _$failedField = 'created_at';
        created_at.build();
        _$failedField = 'updated_at';
        updated_at.build();
        _$failedField = 'updated_by';
        updated_by.build();
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
  @override
  final _i2.Guuid? created_by;
  @override
  final _i2.Gtimestamptz created_at;
  @override
  final _i2.Guuid? updated_by;
  @override
  final _i2.Gtimestamptz updated_at;

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
      required this.url,
      this.created_by,
      required this.created_at,
      this.updated_by,
      required this.updated_at})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GUserArticleItemsData_user_articles_article', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserArticleItemsData_user_articles_article', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, r'GUserArticleItemsData_user_articles_article', 'url');
    BuiltValueNullFieldError.checkNotNull(created_at,
        r'GUserArticleItemsData_user_articles_article', 'created_at');
    BuiltValueNullFieldError.checkNotNull(updated_at,
        r'GUserArticleItemsData_user_articles_article', 'updated_at');
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
        url == other.url &&
        created_by == other.created_by &&
        created_at == other.created_at &&
        updated_by == other.updated_by &&
        updated_at == other.updated_at;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, G__typename.hashCode),
                                        id.hashCode),
                                    favicon.hashCode),
                                thumbnail.hashCode),
                            title.hashCode),
                        url.hashCode),
                    created_by.hashCode),
                created_at.hashCode),
            updated_by.hashCode),
        updated_at.hashCode));
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
          ..add('url', url)
          ..add('created_by', created_by)
          ..add('created_at', created_at)
          ..add('updated_by', updated_by)
          ..add('updated_at', updated_at))
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

  _i2.GuuidBuilder? _created_by;
  _i2.GuuidBuilder get created_by =>
      _$this._created_by ??= new _i2.GuuidBuilder();
  set created_by(_i2.GuuidBuilder? created_by) =>
      _$this._created_by = created_by;

  _i2.GtimestamptzBuilder? _created_at;
  _i2.GtimestamptzBuilder get created_at =>
      _$this._created_at ??= new _i2.GtimestamptzBuilder();
  set created_at(_i2.GtimestamptzBuilder? created_at) =>
      _$this._created_at = created_at;

  _i2.GuuidBuilder? _updated_by;
  _i2.GuuidBuilder get updated_by =>
      _$this._updated_by ??= new _i2.GuuidBuilder();
  set updated_by(_i2.GuuidBuilder? updated_by) =>
      _$this._updated_by = updated_by;

  _i2.GtimestamptzBuilder? _updated_at;
  _i2.GtimestamptzBuilder get updated_at =>
      _$this._updated_at ??= new _i2.GtimestamptzBuilder();
  set updated_at(_i2.GtimestamptzBuilder? updated_at) =>
      _$this._updated_at = updated_at;

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
      _created_by = $v.created_by?.toBuilder();
      _created_at = $v.created_at.toBuilder();
      _updated_by = $v.updated_by?.toBuilder();
      _updated_at = $v.updated_at.toBuilder();
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
                  url, r'GUserArticleItemsData_user_articles_article', 'url'),
              created_by: _created_by?.build(),
              created_at: created_at.build(),
              updated_by: _updated_by?.build(),
              updated_at: updated_at.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();

        _$failedField = 'created_by';
        _created_by?.build();
        _$failedField = 'created_at';
        created_at.build();
        _$failedField = 'updated_by';
        _updated_by?.build();
        _$failedField = 'updated_at';
        updated_at.build();
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

class _$GArticleFragmentData extends GArticleFragmentData {
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
  @override
  final _i2.Guuid? created_by;
  @override
  final _i2.Gtimestamptz created_at;
  @override
  final _i2.Guuid? updated_by;
  @override
  final _i2.Gtimestamptz updated_at;

  factory _$GArticleFragmentData(
          [void Function(GArticleFragmentDataBuilder)? updates]) =>
      (new GArticleFragmentDataBuilder()..update(updates))._build();

  _$GArticleFragmentData._(
      {required this.G__typename,
      required this.id,
      this.favicon,
      this.thumbnail,
      this.title,
      required this.url,
      this.created_by,
      required this.created_at,
      this.updated_by,
      required this.updated_at})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GArticleFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GArticleFragmentData', 'id');
    BuiltValueNullFieldError.checkNotNull(url, r'GArticleFragmentData', 'url');
    BuiltValueNullFieldError.checkNotNull(
        created_at, r'GArticleFragmentData', 'created_at');
    BuiltValueNullFieldError.checkNotNull(
        updated_at, r'GArticleFragmentData', 'updated_at');
  }

  @override
  GArticleFragmentData rebuild(
          void Function(GArticleFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GArticleFragmentDataBuilder toBuilder() =>
      new GArticleFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GArticleFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        favicon == other.favicon &&
        thumbnail == other.thumbnail &&
        title == other.title &&
        url == other.url &&
        created_by == other.created_by &&
        created_at == other.created_at &&
        updated_by == other.updated_by &&
        updated_at == other.updated_at;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, G__typename.hashCode),
                                        id.hashCode),
                                    favicon.hashCode),
                                thumbnail.hashCode),
                            title.hashCode),
                        url.hashCode),
                    created_by.hashCode),
                created_at.hashCode),
            updated_by.hashCode),
        updated_at.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GArticleFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('favicon', favicon)
          ..add('thumbnail', thumbnail)
          ..add('title', title)
          ..add('url', url)
          ..add('created_by', created_by)
          ..add('created_at', created_at)
          ..add('updated_by', updated_by)
          ..add('updated_at', updated_at))
        .toString();
  }
}

class GArticleFragmentDataBuilder
    implements Builder<GArticleFragmentData, GArticleFragmentDataBuilder> {
  _$GArticleFragmentData? _$v;

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

  _i2.GuuidBuilder? _created_by;
  _i2.GuuidBuilder get created_by =>
      _$this._created_by ??= new _i2.GuuidBuilder();
  set created_by(_i2.GuuidBuilder? created_by) =>
      _$this._created_by = created_by;

  _i2.GtimestamptzBuilder? _created_at;
  _i2.GtimestamptzBuilder get created_at =>
      _$this._created_at ??= new _i2.GtimestamptzBuilder();
  set created_at(_i2.GtimestamptzBuilder? created_at) =>
      _$this._created_at = created_at;

  _i2.GuuidBuilder? _updated_by;
  _i2.GuuidBuilder get updated_by =>
      _$this._updated_by ??= new _i2.GuuidBuilder();
  set updated_by(_i2.GuuidBuilder? updated_by) =>
      _$this._updated_by = updated_by;

  _i2.GtimestamptzBuilder? _updated_at;
  _i2.GtimestamptzBuilder get updated_at =>
      _$this._updated_at ??= new _i2.GtimestamptzBuilder();
  set updated_at(_i2.GtimestamptzBuilder? updated_at) =>
      _$this._updated_at = updated_at;

  GArticleFragmentDataBuilder() {
    GArticleFragmentData._initializeBuilder(this);
  }

  GArticleFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _favicon = $v.favicon;
      _thumbnail = $v.thumbnail;
      _title = $v.title;
      _url = $v.url;
      _created_by = $v.created_by?.toBuilder();
      _created_at = $v.created_at.toBuilder();
      _updated_by = $v.updated_by?.toBuilder();
      _updated_at = $v.updated_at.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GArticleFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GArticleFragmentData;
  }

  @override
  void update(void Function(GArticleFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GArticleFragmentData build() => _build();

  _$GArticleFragmentData _build() {
    _$GArticleFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GArticleFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GArticleFragmentData', 'G__typename'),
              id: id.build(),
              favicon: favicon,
              thumbnail: thumbnail,
              title: title,
              url: BuiltValueNullFieldError.checkNotNull(
                  url, r'GArticleFragmentData', 'url'),
              created_by: _created_by?.build(),
              created_at: created_at.build(),
              updated_by: _updated_by?.build(),
              updated_at: updated_at.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();

        _$failedField = 'created_by';
        _created_by?.build();
        _$failedField = 'created_at';
        created_at.build();
        _$failedField = 'updated_by';
        _updated_by?.build();
        _$failedField = 'updated_at';
        updated_at.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GArticleFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
