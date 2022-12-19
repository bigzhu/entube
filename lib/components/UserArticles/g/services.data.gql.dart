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
      b..G__typename = 'query_root';
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
            GUserArticlesData_user_articlesBuilder> {
  GUserArticlesData_user_articles._();

  factory GUserArticlesData_user_articles(
          [Function(GUserArticlesData_user_articlesBuilder b) updates]) =
      _$GUserArticlesData_user_articles;

  static void _initializeBuilder(GUserArticlesData_user_articlesBuilder b) =>
      b..G__typename = 'user_articles';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.Guuid get id;
  int get play_at;
  GUserArticlesData_user_articles_article get article;
  static Serializer<GUserArticlesData_user_articles> get serializer =>
      _$gUserArticlesDataUserArticlesSerializer;
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
            GUserArticlesData_user_articles_articleBuilder> {
  GUserArticlesData_user_articles_article._();

  factory GUserArticlesData_user_articles_article(
      [Function(GUserArticlesData_user_articles_articleBuilder b)
          updates]) = _$GUserArticlesData_user_articles_article;

  static void _initializeBuilder(
          GUserArticlesData_user_articles_articleBuilder b) =>
      b..G__typename = 'articles';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.Guuid get id;
  String? get favicon;
  String? get thumbnail;
  String? get title;
  String get url;
  static Serializer<GUserArticlesData_user_articles_article> get serializer =>
      _$gUserArticlesDataUserArticlesArticleSerializer;
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
            GupsertUserArticlesData_insert_user_articles_oneBuilder> {
  GupsertUserArticlesData_insert_user_articles_one._();

  factory GupsertUserArticlesData_insert_user_articles_one(
      [Function(GupsertUserArticlesData_insert_user_articles_oneBuilder b)
          updates]) = _$GupsertUserArticlesData_insert_user_articles_one;

  static void _initializeBuilder(
          GupsertUserArticlesData_insert_user_articles_oneBuilder b) =>
      b..G__typename = 'user_articles';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.Guuid get id;
  static Serializer<GupsertUserArticlesData_insert_user_articles_one>
      get serializer =>
          _$gupsertUserArticlesDataInsertUserArticlesOneSerializer;
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
