// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GArticleItemsData> _$gArticleItemsDataSerializer =
    new _$GArticleItemsDataSerializer();
Serializer<GArticleItemsData_articles> _$gArticleItemsDataArticlesSerializer =
    new _$GArticleItemsData_articlesSerializer();

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
      'created_at',
      serializers.serialize(object.created_at,
          specifiedType: const FullType(_i2.Gtimestamptz)),
      'updated_at',
      serializers.serialize(object.updated_at,
          specifiedType: const FullType(_i2.Gtimestamptz)),
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
    value = object.created_by;
    if (value != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.Guuid)));
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
        case 'created_by':
          result.created_by.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
          break;
        case 'created_at':
          result.created_at.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Gtimestamptz))!
              as _i2.Gtimestamptz);
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updated_at':
          result.updated_at.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.Gtimestamptz))!
              as _i2.Gtimestamptz);
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'updated_by':
          result.updated_by.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
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
  final _i2.Guuid? created_by;
  @override
  final _i2.Gtimestamptz created_at;
  @override
  final String? thumbnail;
  @override
  final String? title;
  @override
  final _i2.Gtimestamptz updated_at;
  @override
  final String url;
  @override
  final _i2.Guuid? updated_by;

  factory _$GArticleItemsData_articles(
          [void Function(GArticleItemsData_articlesBuilder)? updates]) =>
      (new GArticleItemsData_articlesBuilder()..update(updates))._build();

  _$GArticleItemsData_articles._(
      {required this.G__typename,
      required this.id,
      this.favicon,
      this.created_by,
      required this.created_at,
      this.thumbnail,
      this.title,
      required this.updated_at,
      required this.url,
      this.updated_by})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GArticleItemsData_articles', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GArticleItemsData_articles', 'id');
    BuiltValueNullFieldError.checkNotNull(
        created_at, r'GArticleItemsData_articles', 'created_at');
    BuiltValueNullFieldError.checkNotNull(
        updated_at, r'GArticleItemsData_articles', 'updated_at');
    BuiltValueNullFieldError.checkNotNull(
        url, r'GArticleItemsData_articles', 'url');
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
        created_by == other.created_by &&
        created_at == other.created_at &&
        thumbnail == other.thumbnail &&
        title == other.title &&
        updated_at == other.updated_at &&
        url == other.url &&
        updated_by == other.updated_by;
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
                                created_by.hashCode),
                            created_at.hashCode),
                        thumbnail.hashCode),
                    title.hashCode),
                updated_at.hashCode),
            url.hashCode),
        updated_by.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GArticleItemsData_articles')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('favicon', favicon)
          ..add('created_by', created_by)
          ..add('created_at', created_at)
          ..add('thumbnail', thumbnail)
          ..add('title', title)
          ..add('updated_at', updated_at)
          ..add('url', url)
          ..add('updated_by', updated_by))
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

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  _i2.GtimestamptzBuilder? _updated_at;
  _i2.GtimestamptzBuilder get updated_at =>
      _$this._updated_at ??= new _i2.GtimestamptzBuilder();
  set updated_at(_i2.GtimestamptzBuilder? updated_at) =>
      _$this._updated_at = updated_at;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  _i2.GuuidBuilder? _updated_by;
  _i2.GuuidBuilder get updated_by =>
      _$this._updated_by ??= new _i2.GuuidBuilder();
  set updated_by(_i2.GuuidBuilder? updated_by) =>
      _$this._updated_by = updated_by;

  GArticleItemsData_articlesBuilder() {
    GArticleItemsData_articles._initializeBuilder(this);
  }

  GArticleItemsData_articlesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _favicon = $v.favicon;
      _created_by = $v.created_by?.toBuilder();
      _created_at = $v.created_at.toBuilder();
      _thumbnail = $v.thumbnail;
      _title = $v.title;
      _updated_at = $v.updated_at.toBuilder();
      _url = $v.url;
      _updated_by = $v.updated_by?.toBuilder();
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
              created_by: _created_by?.build(),
              created_at: created_at.build(),
              thumbnail: thumbnail,
              title: title,
              updated_at: updated_at.build(),
              url: BuiltValueNullFieldError.checkNotNull(
                  url, r'GArticleItemsData_articles', 'url'),
              updated_by: _updated_by?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();

        _$failedField = 'created_by';
        _created_by?.build();
        _$failedField = 'created_at';
        created_at.build();

        _$failedField = 'updated_at';
        updated_at.build();

        _$failedField = 'updated_by';
        _updated_by?.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
