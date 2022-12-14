// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:entube/graphql/g/schema.schema.gql.dart' as _i2;
import 'package:entube/graphql/g/serializers.gql.dart' as _i1;

part 'services.data.gql.g.dart';

abstract class GUserArticleItemsData
    implements Built<GUserArticleItemsData, GUserArticleItemsDataBuilder> {
  GUserArticleItemsData._();

  factory GUserArticleItemsData(
          [Function(GUserArticleItemsDataBuilder b) updates]) =
      _$GUserArticleItemsData;

  static void _initializeBuilder(GUserArticleItemsDataBuilder b) =>
      b..G__typename = 'query_root';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GUserArticleItemsData_user_articles> get user_articles;
  static Serializer<GUserArticleItemsData> get serializer =>
      _$gUserArticleItemsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserArticleItemsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserArticleItemsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserArticleItemsData.serializer,
        json,
      );
}

abstract class GUserArticleItemsData_user_articles
    implements
        Built<GUserArticleItemsData_user_articles,
            GUserArticleItemsData_user_articlesBuilder> {
  GUserArticleItemsData_user_articles._();

  factory GUserArticleItemsData_user_articles(
          [Function(GUserArticleItemsData_user_articlesBuilder b) updates]) =
      _$GUserArticleItemsData_user_articles;

  static void _initializeBuilder(
          GUserArticleItemsData_user_articlesBuilder b) =>
      b..G__typename = 'user_articles';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.Guuid get id;
  int? get play_at;
  GUserArticleItemsData_user_articles_article get article;
  static Serializer<GUserArticleItemsData_user_articles> get serializer =>
      _$gUserArticleItemsDataUserArticlesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserArticleItemsData_user_articles.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserArticleItemsData_user_articles? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserArticleItemsData_user_articles.serializer,
        json,
      );
}

abstract class GUserArticleItemsData_user_articles_article
    implements
        Built<GUserArticleItemsData_user_articles_article,
            GUserArticleItemsData_user_articles_articleBuilder> {
  GUserArticleItemsData_user_articles_article._();

  factory GUserArticleItemsData_user_articles_article(
      [Function(GUserArticleItemsData_user_articles_articleBuilder b)
          updates]) = _$GUserArticleItemsData_user_articles_article;

  static void _initializeBuilder(
          GUserArticleItemsData_user_articles_articleBuilder b) =>
      b..G__typename = 'articles';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.Guuid get id;
  String? get favicon;
  String? get thumbnail;
  String? get title;
  String get url;
  static Serializer<GUserArticleItemsData_user_articles_article>
      get serializer => _$gUserArticleItemsDataUserArticlesArticleSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserArticleItemsData_user_articles_article.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserArticleItemsData_user_articles_article? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserArticleItemsData_user_articles_article.serializer,
        json,
      );
}
