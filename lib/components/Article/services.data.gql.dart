// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:entube/graphql/serializers.gql.dart' as _i1;

part 'services.data.gql.g.dart';

abstract class GArticleSentencesData
    implements Built<GArticleSentencesData, GArticleSentencesDataBuilder> {
  GArticleSentencesData._();

  factory GArticleSentencesData(
          [Function(GArticleSentencesDataBuilder b) updates]) =
      _$GArticleSentencesData;

  static void _initializeBuilder(GArticleSentencesDataBuilder b) =>
      b..G__typename = 'query_root';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GArticleSentencesData_articles> get articles;
  static Serializer<GArticleSentencesData> get serializer =>
      _$gArticleSentencesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GArticleSentencesData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GArticleSentencesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GArticleSentencesData.serializer,
        json,
      );
}

abstract class GArticleSentencesData_articles
    implements
        Built<GArticleSentencesData_articles,
            GArticleSentencesData_articlesBuilder> {
  GArticleSentencesData_articles._();

  factory GArticleSentencesData_articles(
          [Function(GArticleSentencesData_articlesBuilder b) updates]) =
      _$GArticleSentencesData_articles;

  static void _initializeBuilder(GArticleSentencesData_articlesBuilder b) =>
      b..G__typename = 'articles';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.JsonObject get sentences;
  static Serializer<GArticleSentencesData_articles> get serializer =>
      _$gArticleSentencesDataArticlesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GArticleSentencesData_articles.serializer,
        this,
      ) as Map<String, dynamic>);
  static GArticleSentencesData_articles? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GArticleSentencesData_articles.serializer,
        json,
      );
}
