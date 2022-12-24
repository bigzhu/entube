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
Serializer<GupsertUserArticlesData_insert_user_articles_one_article>
    _$gupsertUserArticlesDataInsertUserArticlesOneArticleSerializer =
    new _$GupsertUserArticlesData_insert_user_articles_one_articleSerializer();
Serializer<GdeleteUserArticleData> _$gdeleteUserArticleDataSerializer =
    new _$GdeleteUserArticleDataSerializer();
Serializer<GdeleteUserArticleData_update_user_articles>
    _$gdeleteUserArticleDataUpdateUserArticlesSerializer =
    new _$GdeleteUserArticleData_update_user_articlesSerializer();
Serializer<GupdatePlayAtData> _$gupdatePlayAtDataSerializer =
    new _$GupdatePlayAtDataSerializer();
Serializer<GupdatePlayAtData_update_user_articles>
    _$gupdatePlayAtDataUpdateUserArticlesSerializer =
    new _$GupdatePlayAtData_update_user_articlesSerializer();
Serializer<GUserArticleFragmentData> _$gUserArticleFragmentDataSerializer =
    new _$GUserArticleFragmentDataSerializer();
Serializer<GUserArticleFragmentData_article>
    _$gUserArticleFragmentDataArticleSerializer =
    new _$GUserArticleFragmentData_articleSerializer();

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
      'created_at',
      serializers.serialize(object.created_at,
          specifiedType: const FullType(_i2.Gtimestamptz)),
      'updated_at',
      serializers.serialize(object.updated_at,
          specifiedType: const FullType(_i2.Gtimestamptz)),
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
      'play_at',
      serializers.serialize(object.play_at, specifiedType: const FullType(int)),
      'created_at',
      serializers.serialize(object.created_at,
          specifiedType: const FullType(_i2.Gtimestamptz)),
      'updated_at',
      serializers.serialize(object.updated_at,
          specifiedType: const FullType(_i2.Gtimestamptz)),
      'article',
      serializers.serialize(object.article,
          specifiedType: const FullType(
              GupsertUserArticlesData_insert_user_articles_one_article)),
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
        case 'play_at':
          result.play_at = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
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
        case 'article':
          result.article.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GupsertUserArticlesData_insert_user_articles_one_article))!
              as GupsertUserArticlesData_insert_user_articles_one_article);
          break;
      }
    }

    return result.build();
  }
}

class _$GupsertUserArticlesData_insert_user_articles_one_articleSerializer
    implements
        StructuredSerializer<
            GupsertUserArticlesData_insert_user_articles_one_article> {
  @override
  final Iterable<Type> types = const [
    GupsertUserArticlesData_insert_user_articles_one_article,
    _$GupsertUserArticlesData_insert_user_articles_one_article
  ];
  @override
  final String wireName =
      'GupsertUserArticlesData_insert_user_articles_one_article';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GupsertUserArticlesData_insert_user_articles_one_article object,
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
  GupsertUserArticlesData_insert_user_articles_one_article deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GupsertUserArticlesData_insert_user_articles_one_articleBuilder();

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

class _$GdeleteUserArticleDataSerializer
    implements StructuredSerializer<GdeleteUserArticleData> {
  @override
  final Iterable<Type> types = const [
    GdeleteUserArticleData,
    _$GdeleteUserArticleData
  ];
  @override
  final String wireName = 'GdeleteUserArticleData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GdeleteUserArticleData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.update_user_articles;
    if (value != null) {
      result
        ..add('update_user_articles')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GdeleteUserArticleData_update_user_articles)));
    }
    return result;
  }

  @override
  GdeleteUserArticleData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeleteUserArticleDataBuilder();

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
        case 'update_user_articles':
          result.update_user_articles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GdeleteUserArticleData_update_user_articles))!
              as GdeleteUserArticleData_update_user_articles);
          break;
      }
    }

    return result.build();
  }
}

class _$GdeleteUserArticleData_update_user_articlesSerializer
    implements
        StructuredSerializer<GdeleteUserArticleData_update_user_articles> {
  @override
  final Iterable<Type> types = const [
    GdeleteUserArticleData_update_user_articles,
    _$GdeleteUserArticleData_update_user_articles
  ];
  @override
  final String wireName = 'GdeleteUserArticleData_update_user_articles';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GdeleteUserArticleData_update_user_articles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'affected_rows',
      serializers.serialize(object.affected_rows,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GdeleteUserArticleData_update_user_articles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GdeleteUserArticleData_update_user_articlesBuilder();

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
        case 'affected_rows':
          result.affected_rows = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GupdatePlayAtDataSerializer
    implements StructuredSerializer<GupdatePlayAtData> {
  @override
  final Iterable<Type> types = const [GupdatePlayAtData, _$GupdatePlayAtData];
  @override
  final String wireName = 'GupdatePlayAtData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GupdatePlayAtData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.update_user_articles;
    if (value != null) {
      result
        ..add('update_user_articles')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GupdatePlayAtData_update_user_articles)));
    }
    return result;
  }

  @override
  GupdatePlayAtData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdatePlayAtDataBuilder();

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
        case 'update_user_articles':
          result.update_user_articles.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GupdatePlayAtData_update_user_articles))!
              as GupdatePlayAtData_update_user_articles);
          break;
      }
    }

    return result.build();
  }
}

class _$GupdatePlayAtData_update_user_articlesSerializer
    implements StructuredSerializer<GupdatePlayAtData_update_user_articles> {
  @override
  final Iterable<Type> types = const [
    GupdatePlayAtData_update_user_articles,
    _$GupdatePlayAtData_update_user_articles
  ];
  @override
  final String wireName = 'GupdatePlayAtData_update_user_articles';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdatePlayAtData_update_user_articles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'affected_rows',
      serializers.serialize(object.affected_rows,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GupdatePlayAtData_update_user_articles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdatePlayAtData_update_user_articlesBuilder();

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
        case 'affected_rows':
          result.affected_rows = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GUserArticleFragmentDataSerializer
    implements StructuredSerializer<GUserArticleFragmentData> {
  @override
  final Iterable<Type> types = const [
    GUserArticleFragmentData,
    _$GUserArticleFragmentData
  ];
  @override
  final String wireName = 'GUserArticleFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserArticleFragmentData object,
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
      'created_at',
      serializers.serialize(object.created_at,
          specifiedType: const FullType(_i2.Gtimestamptz)),
      'updated_at',
      serializers.serialize(object.updated_at,
          specifiedType: const FullType(_i2.Gtimestamptz)),
      'article',
      serializers.serialize(object.article,
          specifiedType: const FullType(GUserArticleFragmentData_article)),
    ];

    return result;
  }

  @override
  GUserArticleFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserArticleFragmentDataBuilder();

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
        case 'article':
          result.article.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GUserArticleFragmentData_article))!
              as GUserArticleFragmentData_article);
          break;
      }
    }

    return result.build();
  }
}

class _$GUserArticleFragmentData_articleSerializer
    implements StructuredSerializer<GUserArticleFragmentData_article> {
  @override
  final Iterable<Type> types = const [
    GUserArticleFragmentData_article,
    _$GUserArticleFragmentData_article
  ];
  @override
  final String wireName = 'GUserArticleFragmentData_article';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUserArticleFragmentData_article object,
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
  GUserArticleFragmentData_article deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserArticleFragmentData_articleBuilder();

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
  final _i2.Gtimestamptz created_at;
  @override
  final _i2.Gtimestamptz updated_at;
  @override
  final GUserArticlesData_user_articles_article article;

  factory _$GUserArticlesData_user_articles(
          [void Function(GUserArticlesData_user_articlesBuilder)? updates]) =>
      (new GUserArticlesData_user_articlesBuilder()..update(updates))._build();

  _$GUserArticlesData_user_articles._(
      {required this.G__typename,
      required this.id,
      required this.play_at,
      required this.created_at,
      required this.updated_at,
      required this.article})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserArticlesData_user_articles', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserArticlesData_user_articles', 'id');
    BuiltValueNullFieldError.checkNotNull(
        play_at, r'GUserArticlesData_user_articles', 'play_at');
    BuiltValueNullFieldError.checkNotNull(
        created_at, r'GUserArticlesData_user_articles', 'created_at');
    BuiltValueNullFieldError.checkNotNull(
        updated_at, r'GUserArticlesData_user_articles', 'updated_at');
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
        created_at == other.created_at &&
        updated_at == other.updated_at &&
        article == other.article;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    play_at.hashCode),
                created_at.hashCode),
            updated_at.hashCode),
        article.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserArticlesData_user_articles')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('play_at', play_at)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at)
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
      _created_at = $v.created_at.toBuilder();
      _updated_at = $v.updated_at.toBuilder();
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
              created_at: created_at.build(),
              updated_at: updated_at.build(),
              article: article.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();

        _$failedField = 'created_at';
        created_at.build();
        _$failedField = 'updated_at';
        updated_at.build();
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
  @override
  final int play_at;
  @override
  final _i2.Gtimestamptz created_at;
  @override
  final _i2.Gtimestamptz updated_at;
  @override
  final GupsertUserArticlesData_insert_user_articles_one_article article;

  factory _$GupsertUserArticlesData_insert_user_articles_one(
          [void Function(
                  GupsertUserArticlesData_insert_user_articles_oneBuilder)?
              updates]) =>
      (new GupsertUserArticlesData_insert_user_articles_oneBuilder()
            ..update(updates))
          ._build();

  _$GupsertUserArticlesData_insert_user_articles_one._(
      {required this.G__typename,
      required this.id,
      required this.play_at,
      required this.created_at,
      required this.updated_at,
      required this.article})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GupsertUserArticlesData_insert_user_articles_one', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GupsertUserArticlesData_insert_user_articles_one', 'id');
    BuiltValueNullFieldError.checkNotNull(play_at,
        r'GupsertUserArticlesData_insert_user_articles_one', 'play_at');
    BuiltValueNullFieldError.checkNotNull(created_at,
        r'GupsertUserArticlesData_insert_user_articles_one', 'created_at');
    BuiltValueNullFieldError.checkNotNull(updated_at,
        r'GupsertUserArticlesData_insert_user_articles_one', 'updated_at');
    BuiltValueNullFieldError.checkNotNull(article,
        r'GupsertUserArticlesData_insert_user_articles_one', 'article');
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
        id == other.id &&
        play_at == other.play_at &&
        created_at == other.created_at &&
        updated_at == other.updated_at &&
        article == other.article;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    play_at.hashCode),
                created_at.hashCode),
            updated_at.hashCode),
        article.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GupsertUserArticlesData_insert_user_articles_one')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('play_at', play_at)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at)
          ..add('article', article))
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

  int? _play_at;
  int? get play_at => _$this._play_at;
  set play_at(int? play_at) => _$this._play_at = play_at;

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

  GupsertUserArticlesData_insert_user_articles_one_articleBuilder? _article;
  GupsertUserArticlesData_insert_user_articles_one_articleBuilder get article =>
      _$this._article ??=
          new GupsertUserArticlesData_insert_user_articles_one_articleBuilder();
  set article(
          GupsertUserArticlesData_insert_user_articles_one_articleBuilder?
              article) =>
      _$this._article = article;

  GupsertUserArticlesData_insert_user_articles_oneBuilder() {
    GupsertUserArticlesData_insert_user_articles_one._initializeBuilder(this);
  }

  GupsertUserArticlesData_insert_user_articles_oneBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _play_at = $v.play_at;
      _created_at = $v.created_at.toBuilder();
      _updated_at = $v.updated_at.toBuilder();
      _article = $v.article.toBuilder();
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
              id: id.build(),
              play_at: BuiltValueNullFieldError.checkNotNull(
                  play_at,
                  r'GupsertUserArticlesData_insert_user_articles_one',
                  'play_at'),
              created_at: created_at.build(),
              updated_at: updated_at.build(),
              article: article.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();

        _$failedField = 'created_at';
        created_at.build();
        _$failedField = 'updated_at';
        updated_at.build();
        _$failedField = 'article';
        article.build();
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

class _$GupsertUserArticlesData_insert_user_articles_one_article
    extends GupsertUserArticlesData_insert_user_articles_one_article {
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

  factory _$GupsertUserArticlesData_insert_user_articles_one_article(
          [void Function(
                  GupsertUserArticlesData_insert_user_articles_one_articleBuilder)?
              updates]) =>
      (new GupsertUserArticlesData_insert_user_articles_one_articleBuilder()
            ..update(updates))
          ._build();

  _$GupsertUserArticlesData_insert_user_articles_one_article._(
      {required this.G__typename,
      required this.id,
      this.favicon,
      this.thumbnail,
      this.title,
      required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GupsertUserArticlesData_insert_user_articles_one_article',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GupsertUserArticlesData_insert_user_articles_one_article', 'id');
    BuiltValueNullFieldError.checkNotNull(url,
        r'GupsertUserArticlesData_insert_user_articles_one_article', 'url');
  }

  @override
  GupsertUserArticlesData_insert_user_articles_one_article rebuild(
          void Function(
                  GupsertUserArticlesData_insert_user_articles_one_articleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupsertUserArticlesData_insert_user_articles_one_articleBuilder toBuilder() =>
      new GupsertUserArticlesData_insert_user_articles_one_articleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupsertUserArticlesData_insert_user_articles_one_article &&
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
            r'GupsertUserArticlesData_insert_user_articles_one_article')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('favicon', favicon)
          ..add('thumbnail', thumbnail)
          ..add('title', title)
          ..add('url', url))
        .toString();
  }
}

class GupsertUserArticlesData_insert_user_articles_one_articleBuilder
    implements
        Builder<GupsertUserArticlesData_insert_user_articles_one_article,
            GupsertUserArticlesData_insert_user_articles_one_articleBuilder> {
  _$GupsertUserArticlesData_insert_user_articles_one_article? _$v;

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

  GupsertUserArticlesData_insert_user_articles_one_articleBuilder() {
    GupsertUserArticlesData_insert_user_articles_one_article._initializeBuilder(
        this);
  }

  GupsertUserArticlesData_insert_user_articles_one_articleBuilder get _$this {
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
  void replace(GupsertUserArticlesData_insert_user_articles_one_article other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupsertUserArticlesData_insert_user_articles_one_article;
  }

  @override
  void update(
      void Function(
              GupsertUserArticlesData_insert_user_articles_one_articleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GupsertUserArticlesData_insert_user_articles_one_article build() => _build();

  _$GupsertUserArticlesData_insert_user_articles_one_article _build() {
    _$GupsertUserArticlesData_insert_user_articles_one_article _$result;
    try {
      _$result = _$v ??
          new _$GupsertUserArticlesData_insert_user_articles_one_article._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GupsertUserArticlesData_insert_user_articles_one_article',
                  'G__typename'),
              id: id.build(),
              favicon: favicon,
              thumbnail: thumbnail,
              title: title,
              url: BuiltValueNullFieldError.checkNotNull(
                  url,
                  r'GupsertUserArticlesData_insert_user_articles_one_article',
                  'url'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupsertUserArticlesData_insert_user_articles_one_article',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GdeleteUserArticleData extends GdeleteUserArticleData {
  @override
  final String G__typename;
  @override
  final GdeleteUserArticleData_update_user_articles? update_user_articles;

  factory _$GdeleteUserArticleData(
          [void Function(GdeleteUserArticleDataBuilder)? updates]) =>
      (new GdeleteUserArticleDataBuilder()..update(updates))._build();

  _$GdeleteUserArticleData._(
      {required this.G__typename, this.update_user_articles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GdeleteUserArticleData', 'G__typename');
  }

  @override
  GdeleteUserArticleData rebuild(
          void Function(GdeleteUserArticleDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteUserArticleDataBuilder toBuilder() =>
      new GdeleteUserArticleDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeleteUserArticleData &&
        G__typename == other.G__typename &&
        update_user_articles == other.update_user_articles;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), update_user_articles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GdeleteUserArticleData')
          ..add('G__typename', G__typename)
          ..add('update_user_articles', update_user_articles))
        .toString();
  }
}

class GdeleteUserArticleDataBuilder
    implements Builder<GdeleteUserArticleData, GdeleteUserArticleDataBuilder> {
  _$GdeleteUserArticleData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GdeleteUserArticleData_update_user_articlesBuilder? _update_user_articles;
  GdeleteUserArticleData_update_user_articlesBuilder get update_user_articles =>
      _$this._update_user_articles ??=
          new GdeleteUserArticleData_update_user_articlesBuilder();
  set update_user_articles(
          GdeleteUserArticleData_update_user_articlesBuilder?
              update_user_articles) =>
      _$this._update_user_articles = update_user_articles;

  GdeleteUserArticleDataBuilder() {
    GdeleteUserArticleData._initializeBuilder(this);
  }

  GdeleteUserArticleDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _update_user_articles = $v.update_user_articles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdeleteUserArticleData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteUserArticleData;
  }

  @override
  void update(void Function(GdeleteUserArticleDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GdeleteUserArticleData build() => _build();

  _$GdeleteUserArticleData _build() {
    _$GdeleteUserArticleData _$result;
    try {
      _$result = _$v ??
          new _$GdeleteUserArticleData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GdeleteUserArticleData', 'G__typename'),
              update_user_articles: _update_user_articles?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'update_user_articles';
        _update_user_articles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GdeleteUserArticleData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GdeleteUserArticleData_update_user_articles
    extends GdeleteUserArticleData_update_user_articles {
  @override
  final String G__typename;
  @override
  final int affected_rows;

  factory _$GdeleteUserArticleData_update_user_articles(
          [void Function(GdeleteUserArticleData_update_user_articlesBuilder)?
              updates]) =>
      (new GdeleteUserArticleData_update_user_articlesBuilder()
            ..update(updates))
          ._build();

  _$GdeleteUserArticleData_update_user_articles._(
      {required this.G__typename, required this.affected_rows})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GdeleteUserArticleData_update_user_articles', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(affected_rows,
        r'GdeleteUserArticleData_update_user_articles', 'affected_rows');
  }

  @override
  GdeleteUserArticleData_update_user_articles rebuild(
          void Function(GdeleteUserArticleData_update_user_articlesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GdeleteUserArticleData_update_user_articlesBuilder toBuilder() =>
      new GdeleteUserArticleData_update_user_articlesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GdeleteUserArticleData_update_user_articles &&
        G__typename == other.G__typename &&
        affected_rows == other.affected_rows;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), affected_rows.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GdeleteUserArticleData_update_user_articles')
          ..add('G__typename', G__typename)
          ..add('affected_rows', affected_rows))
        .toString();
  }
}

class GdeleteUserArticleData_update_user_articlesBuilder
    implements
        Builder<GdeleteUserArticleData_update_user_articles,
            GdeleteUserArticleData_update_user_articlesBuilder> {
  _$GdeleteUserArticleData_update_user_articles? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _affected_rows;
  int? get affected_rows => _$this._affected_rows;
  set affected_rows(int? affected_rows) =>
      _$this._affected_rows = affected_rows;

  GdeleteUserArticleData_update_user_articlesBuilder() {
    GdeleteUserArticleData_update_user_articles._initializeBuilder(this);
  }

  GdeleteUserArticleData_update_user_articlesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _affected_rows = $v.affected_rows;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GdeleteUserArticleData_update_user_articles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GdeleteUserArticleData_update_user_articles;
  }

  @override
  void update(
      void Function(GdeleteUserArticleData_update_user_articlesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GdeleteUserArticleData_update_user_articles build() => _build();

  _$GdeleteUserArticleData_update_user_articles _build() {
    final _$result = _$v ??
        new _$GdeleteUserArticleData_update_user_articles._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GdeleteUserArticleData_update_user_articles', 'G__typename'),
            affected_rows: BuiltValueNullFieldError.checkNotNull(
                affected_rows,
                r'GdeleteUserArticleData_update_user_articles',
                'affected_rows'));
    replace(_$result);
    return _$result;
  }
}

class _$GupdatePlayAtData extends GupdatePlayAtData {
  @override
  final String G__typename;
  @override
  final GupdatePlayAtData_update_user_articles? update_user_articles;

  factory _$GupdatePlayAtData(
          [void Function(GupdatePlayAtDataBuilder)? updates]) =>
      (new GupdatePlayAtDataBuilder()..update(updates))._build();

  _$GupdatePlayAtData._({required this.G__typename, this.update_user_articles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GupdatePlayAtData', 'G__typename');
  }

  @override
  GupdatePlayAtData rebuild(void Function(GupdatePlayAtDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdatePlayAtDataBuilder toBuilder() =>
      new GupdatePlayAtDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdatePlayAtData &&
        G__typename == other.G__typename &&
        update_user_articles == other.update_user_articles;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), update_user_articles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GupdatePlayAtData')
          ..add('G__typename', G__typename)
          ..add('update_user_articles', update_user_articles))
        .toString();
  }
}

class GupdatePlayAtDataBuilder
    implements Builder<GupdatePlayAtData, GupdatePlayAtDataBuilder> {
  _$GupdatePlayAtData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GupdatePlayAtData_update_user_articlesBuilder? _update_user_articles;
  GupdatePlayAtData_update_user_articlesBuilder get update_user_articles =>
      _$this._update_user_articles ??=
          new GupdatePlayAtData_update_user_articlesBuilder();
  set update_user_articles(
          GupdatePlayAtData_update_user_articlesBuilder?
              update_user_articles) =>
      _$this._update_user_articles = update_user_articles;

  GupdatePlayAtDataBuilder() {
    GupdatePlayAtData._initializeBuilder(this);
  }

  GupdatePlayAtDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _update_user_articles = $v.update_user_articles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdatePlayAtData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdatePlayAtData;
  }

  @override
  void update(void Function(GupdatePlayAtDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdatePlayAtData build() => _build();

  _$GupdatePlayAtData _build() {
    _$GupdatePlayAtData _$result;
    try {
      _$result = _$v ??
          new _$GupdatePlayAtData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GupdatePlayAtData', 'G__typename'),
              update_user_articles: _update_user_articles?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'update_user_articles';
        _update_user_articles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GupdatePlayAtData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupdatePlayAtData_update_user_articles
    extends GupdatePlayAtData_update_user_articles {
  @override
  final String G__typename;
  @override
  final int affected_rows;

  factory _$GupdatePlayAtData_update_user_articles(
          [void Function(GupdatePlayAtData_update_user_articlesBuilder)?
              updates]) =>
      (new GupdatePlayAtData_update_user_articlesBuilder()..update(updates))
          ._build();

  _$GupdatePlayAtData_update_user_articles._(
      {required this.G__typename, required this.affected_rows})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GupdatePlayAtData_update_user_articles', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(affected_rows,
        r'GupdatePlayAtData_update_user_articles', 'affected_rows');
  }

  @override
  GupdatePlayAtData_update_user_articles rebuild(
          void Function(GupdatePlayAtData_update_user_articlesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdatePlayAtData_update_user_articlesBuilder toBuilder() =>
      new GupdatePlayAtData_update_user_articlesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdatePlayAtData_update_user_articles &&
        G__typename == other.G__typename &&
        affected_rows == other.affected_rows;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), affected_rows.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GupdatePlayAtData_update_user_articles')
          ..add('G__typename', G__typename)
          ..add('affected_rows', affected_rows))
        .toString();
  }
}

class GupdatePlayAtData_update_user_articlesBuilder
    implements
        Builder<GupdatePlayAtData_update_user_articles,
            GupdatePlayAtData_update_user_articlesBuilder> {
  _$GupdatePlayAtData_update_user_articles? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _affected_rows;
  int? get affected_rows => _$this._affected_rows;
  set affected_rows(int? affected_rows) =>
      _$this._affected_rows = affected_rows;

  GupdatePlayAtData_update_user_articlesBuilder() {
    GupdatePlayAtData_update_user_articles._initializeBuilder(this);
  }

  GupdatePlayAtData_update_user_articlesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _affected_rows = $v.affected_rows;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdatePlayAtData_update_user_articles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdatePlayAtData_update_user_articles;
  }

  @override
  void update(
      void Function(GupdatePlayAtData_update_user_articlesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupdatePlayAtData_update_user_articles build() => _build();

  _$GupdatePlayAtData_update_user_articles _build() {
    final _$result = _$v ??
        new _$GupdatePlayAtData_update_user_articles._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GupdatePlayAtData_update_user_articles', 'G__typename'),
            affected_rows: BuiltValueNullFieldError.checkNotNull(affected_rows,
                r'GupdatePlayAtData_update_user_articles', 'affected_rows'));
    replace(_$result);
    return _$result;
  }
}

class _$GUserArticleFragmentData extends GUserArticleFragmentData {
  @override
  final String G__typename;
  @override
  final _i2.Guuid id;
  @override
  final int play_at;
  @override
  final _i2.Gtimestamptz created_at;
  @override
  final _i2.Gtimestamptz updated_at;
  @override
  final GUserArticleFragmentData_article article;

  factory _$GUserArticleFragmentData(
          [void Function(GUserArticleFragmentDataBuilder)? updates]) =>
      (new GUserArticleFragmentDataBuilder()..update(updates))._build();

  _$GUserArticleFragmentData._(
      {required this.G__typename,
      required this.id,
      required this.play_at,
      required this.created_at,
      required this.updated_at,
      required this.article})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserArticleFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserArticleFragmentData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        play_at, r'GUserArticleFragmentData', 'play_at');
    BuiltValueNullFieldError.checkNotNull(
        created_at, r'GUserArticleFragmentData', 'created_at');
    BuiltValueNullFieldError.checkNotNull(
        updated_at, r'GUserArticleFragmentData', 'updated_at');
    BuiltValueNullFieldError.checkNotNull(
        article, r'GUserArticleFragmentData', 'article');
  }

  @override
  GUserArticleFragmentData rebuild(
          void Function(GUserArticleFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserArticleFragmentDataBuilder toBuilder() =>
      new GUserArticleFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserArticleFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        play_at == other.play_at &&
        created_at == other.created_at &&
        updated_at == other.updated_at &&
        article == other.article;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    play_at.hashCode),
                created_at.hashCode),
            updated_at.hashCode),
        article.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUserArticleFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('play_at', play_at)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at)
          ..add('article', article))
        .toString();
  }
}

class GUserArticleFragmentDataBuilder
    implements
        Builder<GUserArticleFragmentData, GUserArticleFragmentDataBuilder> {
  _$GUserArticleFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GuuidBuilder? _id;
  _i2.GuuidBuilder get id => _$this._id ??= new _i2.GuuidBuilder();
  set id(_i2.GuuidBuilder? id) => _$this._id = id;

  int? _play_at;
  int? get play_at => _$this._play_at;
  set play_at(int? play_at) => _$this._play_at = play_at;

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

  GUserArticleFragmentData_articleBuilder? _article;
  GUserArticleFragmentData_articleBuilder get article =>
      _$this._article ??= new GUserArticleFragmentData_articleBuilder();
  set article(GUserArticleFragmentData_articleBuilder? article) =>
      _$this._article = article;

  GUserArticleFragmentDataBuilder() {
    GUserArticleFragmentData._initializeBuilder(this);
  }

  GUserArticleFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _play_at = $v.play_at;
      _created_at = $v.created_at.toBuilder();
      _updated_at = $v.updated_at.toBuilder();
      _article = $v.article.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUserArticleFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserArticleFragmentData;
  }

  @override
  void update(void Function(GUserArticleFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserArticleFragmentData build() => _build();

  _$GUserArticleFragmentData _build() {
    _$GUserArticleFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GUserArticleFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUserArticleFragmentData', 'G__typename'),
              id: id.build(),
              play_at: BuiltValueNullFieldError.checkNotNull(
                  play_at, r'GUserArticleFragmentData', 'play_at'),
              created_at: created_at.build(),
              updated_at: updated_at.build(),
              article: article.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();

        _$failedField = 'created_at';
        created_at.build();
        _$failedField = 'updated_at';
        updated_at.build();
        _$failedField = 'article';
        article.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserArticleFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUserArticleFragmentData_article
    extends GUserArticleFragmentData_article {
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

  factory _$GUserArticleFragmentData_article(
          [void Function(GUserArticleFragmentData_articleBuilder)? updates]) =>
      (new GUserArticleFragmentData_articleBuilder()..update(updates))._build();

  _$GUserArticleFragmentData_article._(
      {required this.G__typename,
      required this.id,
      this.favicon,
      this.thumbnail,
      this.title,
      required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUserArticleFragmentData_article', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUserArticleFragmentData_article', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, r'GUserArticleFragmentData_article', 'url');
  }

  @override
  GUserArticleFragmentData_article rebuild(
          void Function(GUserArticleFragmentData_articleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserArticleFragmentData_articleBuilder toBuilder() =>
      new GUserArticleFragmentData_articleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserArticleFragmentData_article &&
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
    return (newBuiltValueToStringHelper(r'GUserArticleFragmentData_article')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('favicon', favicon)
          ..add('thumbnail', thumbnail)
          ..add('title', title)
          ..add('url', url))
        .toString();
  }
}

class GUserArticleFragmentData_articleBuilder
    implements
        Builder<GUserArticleFragmentData_article,
            GUserArticleFragmentData_articleBuilder> {
  _$GUserArticleFragmentData_article? _$v;

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

  GUserArticleFragmentData_articleBuilder() {
    GUserArticleFragmentData_article._initializeBuilder(this);
  }

  GUserArticleFragmentData_articleBuilder get _$this {
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
  void replace(GUserArticleFragmentData_article other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserArticleFragmentData_article;
  }

  @override
  void update(void Function(GUserArticleFragmentData_articleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUserArticleFragmentData_article build() => _build();

  _$GUserArticleFragmentData_article _build() {
    _$GUserArticleFragmentData_article _$result;
    try {
      _$result = _$v ??
          new _$GUserArticleFragmentData_article._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GUserArticleFragmentData_article', 'G__typename'),
              id: id.build(),
              favicon: favicon,
              thumbnail: thumbnail,
              title: title,
              url: BuiltValueNullFieldError.checkNotNull(
                  url, r'GUserArticleFragmentData_article', 'url'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUserArticleFragmentData_article', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
