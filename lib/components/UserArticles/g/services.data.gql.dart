// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:entube/graphql/g/schema.schema.gql.dart' as _i2;
import 'package:entube/graphql/g/serializers.gql.dart' as _i1;

part 'services.data.gql.g.dart';

abstract class GUserArticlesData
    implements Built<GUserArticlesData, GUserArticlesDataBuilder> {
  GUserArticlesData._();

  factory GUserArticlesData([Function(GUserArticlesDataBuilder b) updates]) =
      _$GUserArticlesData;

  static void _initializeBuilder(GUserArticlesDataBuilder b) =>
      b..G__typename = 'subscription_root';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GUserArticlesData_user_articles> get user_articles;
  static Serializer<GUserArticlesData> get serializer =>
      _$gUserArticlesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserArticlesData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserArticlesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserArticlesData.serializer,
        json,
      );
}

abstract class GUserArticlesData_user_articles
    implements
        Built<GUserArticlesData_user_articles,
            GUserArticlesData_user_articlesBuilder>,
        GUserArticleFragment {
  GUserArticlesData_user_articles._();

  factory GUserArticlesData_user_articles(
          [Function(GUserArticlesData_user_articlesBuilder b) updates]) =
      _$GUserArticlesData_user_articles;

  static void _initializeBuilder(GUserArticlesData_user_articlesBuilder b) =>
      b..G__typename = 'user_articles';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.Guuid get id;
  @override
  int get play_at;
  @override
  _i2.Gtimestamptz get created_at;
  @override
  _i2.Gtimestamptz get updated_at;
  @override
  GUserArticlesData_user_articles_article get article;
  static Serializer<GUserArticlesData_user_articles> get serializer =>
      _$gUserArticlesDataUserArticlesSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserArticlesData_user_articles.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserArticlesData_user_articles? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserArticlesData_user_articles.serializer,
        json,
      );
}

abstract class GUserArticlesData_user_articles_article
    implements
        Built<GUserArticlesData_user_articles_article,
            GUserArticlesData_user_articles_articleBuilder>,
        GUserArticleFragment_article {
  GUserArticlesData_user_articles_article._();

  factory GUserArticlesData_user_articles_article(
      [Function(GUserArticlesData_user_articles_articleBuilder b)
          updates]) = _$GUserArticlesData_user_articles_article;

  static void _initializeBuilder(
          GUserArticlesData_user_articles_articleBuilder b) =>
      b..G__typename = 'articles';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.Guuid get id;
  @override
  String? get favicon;
  @override
  String? get thumbnail;
  @override
  String? get title;
  @override
  String get url;
  static Serializer<GUserArticlesData_user_articles_article> get serializer =>
      _$gUserArticlesDataUserArticlesArticleSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserArticlesData_user_articles_article.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserArticlesData_user_articles_article? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserArticlesData_user_articles_article.serializer,
        json,
      );
}

abstract class GupsertUserArticlesData
    implements Built<GupsertUserArticlesData, GupsertUserArticlesDataBuilder> {
  GupsertUserArticlesData._();

  factory GupsertUserArticlesData(
          [Function(GupsertUserArticlesDataBuilder b) updates]) =
      _$GupsertUserArticlesData;

  static void _initializeBuilder(GupsertUserArticlesDataBuilder b) =>
      b..G__typename = 'mutation_root';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GupsertUserArticlesData_insert_user_articles_one?
      get insert_user_articles_one;
  static Serializer<GupsertUserArticlesData> get serializer =>
      _$gupsertUserArticlesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupsertUserArticlesData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GupsertUserArticlesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupsertUserArticlesData.serializer,
        json,
      );
}

abstract class GupsertUserArticlesData_insert_user_articles_one
    implements
        Built<GupsertUserArticlesData_insert_user_articles_one,
            GupsertUserArticlesData_insert_user_articles_oneBuilder>,
        GUserArticleFragment {
  GupsertUserArticlesData_insert_user_articles_one._();

  factory GupsertUserArticlesData_insert_user_articles_one(
      [Function(GupsertUserArticlesData_insert_user_articles_oneBuilder b)
          updates]) = _$GupsertUserArticlesData_insert_user_articles_one;

  static void _initializeBuilder(
          GupsertUserArticlesData_insert_user_articles_oneBuilder b) =>
      b..G__typename = 'user_articles';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.Guuid get id;
  @override
  int get play_at;
  @override
  _i2.Gtimestamptz get created_at;
  @override
  _i2.Gtimestamptz get updated_at;
  @override
  GupsertUserArticlesData_insert_user_articles_one_article get article;
  static Serializer<GupsertUserArticlesData_insert_user_articles_one>
      get serializer =>
          _$gupsertUserArticlesDataInsertUserArticlesOneSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupsertUserArticlesData_insert_user_articles_one.serializer,
        this,
      ) as Map<String, dynamic>);
  static GupsertUserArticlesData_insert_user_articles_one? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupsertUserArticlesData_insert_user_articles_one.serializer,
        json,
      );
}

abstract class GupsertUserArticlesData_insert_user_articles_one_article
    implements
        Built<GupsertUserArticlesData_insert_user_articles_one_article,
            GupsertUserArticlesData_insert_user_articles_one_articleBuilder>,
        GUserArticleFragment_article {
  GupsertUserArticlesData_insert_user_articles_one_article._();

  factory GupsertUserArticlesData_insert_user_articles_one_article(
      [Function(
              GupsertUserArticlesData_insert_user_articles_one_articleBuilder b)
          updates]) = _$GupsertUserArticlesData_insert_user_articles_one_article;

  static void _initializeBuilder(
          GupsertUserArticlesData_insert_user_articles_one_articleBuilder b) =>
      b..G__typename = 'articles';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.Guuid get id;
  @override
  String? get favicon;
  @override
  String? get thumbnail;
  @override
  String? get title;
  @override
  String get url;
  static Serializer<GupsertUserArticlesData_insert_user_articles_one_article>
      get serializer =>
          _$gupsertUserArticlesDataInsertUserArticlesOneArticleSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupsertUserArticlesData_insert_user_articles_one_article.serializer,
        this,
      ) as Map<String, dynamic>);
  static GupsertUserArticlesData_insert_user_articles_one_article? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupsertUserArticlesData_insert_user_articles_one_article.serializer,
        json,
      );
}

abstract class GdeleteUserArticleData
    implements Built<GdeleteUserArticleData, GdeleteUserArticleDataBuilder> {
  GdeleteUserArticleData._();

  factory GdeleteUserArticleData(
          [Function(GdeleteUserArticleDataBuilder b) updates]) =
      _$GdeleteUserArticleData;

  static void _initializeBuilder(GdeleteUserArticleDataBuilder b) =>
      b..G__typename = 'mutation_root';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GdeleteUserArticleData_update_user_articles? get update_user_articles;
  static Serializer<GdeleteUserArticleData> get serializer =>
      _$gdeleteUserArticleDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdeleteUserArticleData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GdeleteUserArticleData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdeleteUserArticleData.serializer,
        json,
      );
}

abstract class GdeleteUserArticleData_update_user_articles
    implements
        Built<GdeleteUserArticleData_update_user_articles,
            GdeleteUserArticleData_update_user_articlesBuilder> {
  GdeleteUserArticleData_update_user_articles._();

  factory GdeleteUserArticleData_update_user_articles(
      [Function(GdeleteUserArticleData_update_user_articlesBuilder b)
          updates]) = _$GdeleteUserArticleData_update_user_articles;

  static void _initializeBuilder(
          GdeleteUserArticleData_update_user_articlesBuilder b) =>
      b..G__typename = 'user_articles_mutation_response';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get affected_rows;
  static Serializer<GdeleteUserArticleData_update_user_articles>
      get serializer => _$gdeleteUserArticleDataUpdateUserArticlesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdeleteUserArticleData_update_user_articles.serializer,
        this,
      ) as Map<String, dynamic>);
  static GdeleteUserArticleData_update_user_articles? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdeleteUserArticleData_update_user_articles.serializer,
        json,
      );
}

abstract class GupdatePlayAtData
    implements Built<GupdatePlayAtData, GupdatePlayAtDataBuilder> {
  GupdatePlayAtData._();

  factory GupdatePlayAtData([Function(GupdatePlayAtDataBuilder b) updates]) =
      _$GupdatePlayAtData;

  static void _initializeBuilder(GupdatePlayAtDataBuilder b) =>
      b..G__typename = 'mutation_root';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GupdatePlayAtData_update_user_articles? get update_user_articles;
  static Serializer<GupdatePlayAtData> get serializer =>
      _$gupdatePlayAtDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdatePlayAtData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GupdatePlayAtData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdatePlayAtData.serializer,
        json,
      );
}

abstract class GupdatePlayAtData_update_user_articles
    implements
        Built<GupdatePlayAtData_update_user_articles,
            GupdatePlayAtData_update_user_articlesBuilder> {
  GupdatePlayAtData_update_user_articles._();

  factory GupdatePlayAtData_update_user_articles(
          [Function(GupdatePlayAtData_update_user_articlesBuilder b) updates]) =
      _$GupdatePlayAtData_update_user_articles;

  static void _initializeBuilder(
          GupdatePlayAtData_update_user_articlesBuilder b) =>
      b..G__typename = 'user_articles_mutation_response';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get affected_rows;
  static Serializer<GupdatePlayAtData_update_user_articles> get serializer =>
      _$gupdatePlayAtDataUpdateUserArticlesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdatePlayAtData_update_user_articles.serializer,
        this,
      ) as Map<String, dynamic>);
  static GupdatePlayAtData_update_user_articles? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdatePlayAtData_update_user_articles.serializer,
        json,
      );
}

abstract class GUserArticleFragment {
  String get G__typename;
  _i2.Guuid get id;
  int get play_at;
  _i2.Gtimestamptz get created_at;
  _i2.Gtimestamptz get updated_at;
  GUserArticleFragment_article get article;
  Map<String, dynamic> toJson();
}

abstract class GUserArticleFragment_article {
  String get G__typename;
  _i2.Guuid get id;
  String? get favicon;
  String? get thumbnail;
  String? get title;
  String get url;
  Map<String, dynamic> toJson();
}

abstract class GUserArticleFragmentData
    implements
        Built<GUserArticleFragmentData, GUserArticleFragmentDataBuilder>,
        GUserArticleFragment {
  GUserArticleFragmentData._();

  factory GUserArticleFragmentData(
          [Function(GUserArticleFragmentDataBuilder b) updates]) =
      _$GUserArticleFragmentData;

  static void _initializeBuilder(GUserArticleFragmentDataBuilder b) =>
      b..G__typename = 'user_articles';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.Guuid get id;
  @override
  int get play_at;
  @override
  _i2.Gtimestamptz get created_at;
  @override
  _i2.Gtimestamptz get updated_at;
  @override
  GUserArticleFragmentData_article get article;
  static Serializer<GUserArticleFragmentData> get serializer =>
      _$gUserArticleFragmentDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserArticleFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserArticleFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserArticleFragmentData.serializer,
        json,
      );
}

abstract class GUserArticleFragmentData_article
    implements
        Built<GUserArticleFragmentData_article,
            GUserArticleFragmentData_articleBuilder>,
        GUserArticleFragment_article {
  GUserArticleFragmentData_article._();

  factory GUserArticleFragmentData_article(
          [Function(GUserArticleFragmentData_articleBuilder b) updates]) =
      _$GUserArticleFragmentData_article;

  static void _initializeBuilder(GUserArticleFragmentData_articleBuilder b) =>
      b..G__typename = 'articles';
  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.Guuid get id;
  @override
  String? get favicon;
  @override
  String? get thumbnail;
  @override
  String? get title;
  @override
  String get url;
  static Serializer<GUserArticleFragmentData_article> get serializer =>
      _$gUserArticleFragmentDataArticleSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserArticleFragmentData_article.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserArticleFragmentData_article? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserArticleFragmentData_article.serializer,
        json,
      );
}
