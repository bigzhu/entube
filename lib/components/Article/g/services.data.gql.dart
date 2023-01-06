// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i3;
import 'package:built_value/serializer.dart';
import 'package:entube/graphql/g/schema.schema.gql.dart' as _i2;
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
  _i2.Guuid get id;
  _i3.JsonObject? get sentences;
  String? get sentences_type;
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
  _i2.Guuid get id;
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

abstract class GupdateSentencesData
    implements Built<GupdateSentencesData, GupdateSentencesDataBuilder> {
  GupdateSentencesData._();

  factory GupdateSentencesData(
          [Function(GupdateSentencesDataBuilder b) updates]) =
      _$GupdateSentencesData;

  static void _initializeBuilder(GupdateSentencesDataBuilder b) =>
      b..G__typename = 'mutation_root';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GupdateSentencesData_update_articles_by_pk? get update_articles_by_pk;
  static Serializer<GupdateSentencesData> get serializer =>
      _$gupdateSentencesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdateSentencesData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GupdateSentencesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdateSentencesData.serializer,
        json,
      );
}

abstract class GupdateSentencesData_update_articles_by_pk
    implements
        Built<GupdateSentencesData_update_articles_by_pk,
            GupdateSentencesData_update_articles_by_pkBuilder> {
  GupdateSentencesData_update_articles_by_pk._();

  factory GupdateSentencesData_update_articles_by_pk(
      [Function(GupdateSentencesData_update_articles_by_pkBuilder b)
          updates]) = _$GupdateSentencesData_update_articles_by_pk;

  static void _initializeBuilder(
          GupdateSentencesData_update_articles_by_pkBuilder b) =>
      b..G__typename = 'articles';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.Guuid get id;
  static Serializer<GupdateSentencesData_update_articles_by_pk>
      get serializer => _$gupdateSentencesDataUpdateArticlesByPkSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupdateSentencesData_update_articles_by_pk.serializer,
        this,
      ) as Map<String, dynamic>);
  static GupdateSentencesData_update_articles_by_pk? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupdateSentencesData_update_articles_by_pk.serializer,
        json,
      );
}
