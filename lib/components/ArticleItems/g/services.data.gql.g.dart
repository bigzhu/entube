// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GArticlesData> _$gArticlesDataSerializer =
    new _$GArticlesDataSerializer();
Serializer<GArticlesData_articles> _$gArticlesDataArticlesSerializer =
    new _$GArticlesData_articlesSerializer();
Serializer<GArticleFragmentData> _$gArticleFragmentDataSerializer =
    new _$GArticleFragmentDataSerializer();

class _$GArticlesDataSerializer implements StructuredSerializer<GArticlesData> {
  @override
  final Iterable<Type> types = const [GArticlesData, _$GArticlesData];
  @override
  final String wireName = 'GArticlesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GArticlesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'articles',
      serializers.serialize(object.articles,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GArticlesData_articles)])),
    ];

    return result;
  }

  @override
  GArticlesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GArticlesDataBuilder();

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
                const FullType(GArticlesData_articles)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GArticlesData_articlesSerializer
    implements StructuredSerializer<GArticlesData_articles> {
  @override
  final Iterable<Type> types = const [
    GArticlesData_articles,
    _$GArticlesData_articles
  ];
  @override
  final String wireName = 'GArticlesData_articles';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GArticlesData_articles object,
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
  GArticlesData_articles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GArticlesData_articlesBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GArticlesData extends GArticlesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GArticlesData_articles> articles;

  factory _$GArticlesData([void Function(GArticlesDataBuilder)? updates]) =>
      (new GArticlesDataBuilder()..update(updates))._build();

  _$GArticlesData._({required this.G__typename, required this.articles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GArticlesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        articles, r'GArticlesData', 'articles');
  }

  @override
  GArticlesData rebuild(void Function(GArticlesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GArticlesDataBuilder toBuilder() => new GArticlesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GArticlesData &&
        G__typename == other.G__typename &&
        articles == other.articles;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), articles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GArticlesData')
          ..add('G__typename', G__typename)
          ..add('articles', articles))
        .toString();
  }
}

class GArticlesDataBuilder
    implements Builder<GArticlesData, GArticlesDataBuilder> {
  _$GArticlesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GArticlesData_articles>? _articles;
  ListBuilder<GArticlesData_articles> get articles =>
      _$this._articles ??= new ListBuilder<GArticlesData_articles>();
  set articles(ListBuilder<GArticlesData_articles>? articles) =>
      _$this._articles = articles;

  GArticlesDataBuilder() {
    GArticlesData._initializeBuilder(this);
  }

  GArticlesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _articles = $v.articles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GArticlesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GArticlesData;
  }

  @override
  void update(void Function(GArticlesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GArticlesData build() => _build();

  _$GArticlesData _build() {
    _$GArticlesData _$result;
    try {
      _$result = _$v ??
          new _$GArticlesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GArticlesData', 'G__typename'),
              articles: articles.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'articles';
        articles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GArticlesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GArticlesData_articles extends GArticlesData_articles {
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

  factory _$GArticlesData_articles(
          [void Function(GArticlesData_articlesBuilder)? updates]) =>
      (new GArticlesData_articlesBuilder()..update(updates))._build();

  _$GArticlesData_articles._(
      {required this.G__typename,
      required this.id,
      this.favicon,
      this.thumbnail,
      this.title,
      required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GArticlesData_articles', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GArticlesData_articles', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, r'GArticlesData_articles', 'url');
  }

  @override
  GArticlesData_articles rebuild(
          void Function(GArticlesData_articlesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GArticlesData_articlesBuilder toBuilder() =>
      new GArticlesData_articlesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GArticlesData_articles &&
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
    return (newBuiltValueToStringHelper(r'GArticlesData_articles')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('favicon', favicon)
          ..add('thumbnail', thumbnail)
          ..add('title', title)
          ..add('url', url))
        .toString();
  }
}

class GArticlesData_articlesBuilder
    implements Builder<GArticlesData_articles, GArticlesData_articlesBuilder> {
  _$GArticlesData_articles? _$v;

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

  GArticlesData_articlesBuilder() {
    GArticlesData_articles._initializeBuilder(this);
  }

  GArticlesData_articlesBuilder get _$this {
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
  void replace(GArticlesData_articles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GArticlesData_articles;
  }

  @override
  void update(void Function(GArticlesData_articlesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GArticlesData_articles build() => _build();

  _$GArticlesData_articles _build() {
    _$GArticlesData_articles _$result;
    try {
      _$result = _$v ??
          new _$GArticlesData_articles._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GArticlesData_articles', 'G__typename'),
              id: id.build(),
              favicon: favicon,
              thumbnail: thumbnail,
              title: title,
              url: BuiltValueNullFieldError.checkNotNull(
                  url, r'GArticlesData_articles', 'url'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GArticlesData_articles', _$failedField, e.toString());
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

  factory _$GArticleFragmentData(
          [void Function(GArticleFragmentDataBuilder)? updates]) =>
      (new GArticleFragmentDataBuilder()..update(updates))._build();

  _$GArticleFragmentData._(
      {required this.G__typename,
      required this.id,
      this.favicon,
      this.thumbnail,
      this.title,
      required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GArticleFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GArticleFragmentData', 'id');
    BuiltValueNullFieldError.checkNotNull(url, r'GArticleFragmentData', 'url');
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
    return (newBuiltValueToStringHelper(r'GArticleFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('favicon', favicon)
          ..add('thumbnail', thumbnail)
          ..add('title', title)
          ..add('url', url))
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
                  url, r'GArticleFragmentData', 'url'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
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
