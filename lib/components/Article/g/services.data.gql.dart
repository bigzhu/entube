// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:entube/graphql/g/schema.schema.gql.dart' as _i3;
import 'package:entube/graphql/g/serializers.gql.dart' as _i1;

part 'services.data.gql.g.dart';

abstract class GSentencesData
    implements Built<GSentencesData, GSentencesDataBuilder> {
  GSentencesData._();

  factory GSentencesData([Function(GSentencesDataBuilder b) updates]) =
      _$GSentencesData;

  static void _initializeBuilder(GSentencesDataBuilder b) =>
      b..G__typename = 'query_root';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GSentencesData_articles> get articles;
  static Serializer<GSentencesData> get serializer =>
      _$gSentencesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSentencesData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSentencesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSentencesData.serializer,
        json,
      );
}

abstract class GSentencesData_articles
    implements Built<GSentencesData_articles, GSentencesData_articlesBuilder> {
  GSentencesData_articles._();

  factory GSentencesData_articles(
          [Function(GSentencesData_articlesBuilder b) updates]) =
      _$GSentencesData_articles;

  static void _initializeBuilder(GSentencesData_articlesBuilder b) =>
      b..G__typename = 'articles';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.JsonObject? get sentences;
  String get url;
  static Serializer<GSentencesData_articles> get serializer =>
      _$gSentencesDataArticlesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSentencesData_articles.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSentencesData_articles? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSentencesData_articles.serializer,
        json,
      );
}

abstract class GinsertArticlesData
    implements Built<GinsertArticlesData, GinsertArticlesDataBuilder> {
  GinsertArticlesData._();

  factory GinsertArticlesData(
      [Function(GinsertArticlesDataBuilder b) updates]) = _$GinsertArticlesData;

  static void _initializeBuilder(GinsertArticlesDataBuilder b) =>
      b..G__typename = 'mutation_root';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GinsertArticlesData_insert_articles_one? get insert_articles_one;
  static Serializer<GinsertArticlesData> get serializer =>
      _$ginsertArticlesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GinsertArticlesData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GinsertArticlesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GinsertArticlesData.serializer,
        json,
      );
}

abstract class GinsertArticlesData_insert_articles_one
    implements
        Built<GinsertArticlesData_insert_articles_one,
            GinsertArticlesData_insert_articles_oneBuilder> {
  GinsertArticlesData_insert_articles_one._();

  factory GinsertArticlesData_insert_articles_one(
      [Function(GinsertArticlesData_insert_articles_oneBuilder b)
          updates]) = _$GinsertArticlesData_insert_articles_one;

  static void _initializeBuilder(
          GinsertArticlesData_insert_articles_oneBuilder b) =>
      b..G__typename = 'articles';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i3.Guuid get id;
  static Serializer<GinsertArticlesData_insert_articles_one> get serializer =>
      _$ginsertArticlesDataInsertArticlesOneSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GinsertArticlesData_insert_articles_one.serializer,
        this,
      ) as Map<String, dynamic>);
  static GinsertArticlesData_insert_articles_one? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GinsertArticlesData_insert_articles_one.serializer,
        json,
      );
}
