// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:entube/graphql/g/schema.schema.gql.dart' as _i2;
import 'package:entube/graphql/g/serializers.gql.dart' as _i1;

part 'services.data.gql.g.dart';

abstract class GArticleItemsData
    implements Built<GArticleItemsData, GArticleItemsDataBuilder> {
  GArticleItemsData._();

  factory GArticleItemsData([Function(GArticleItemsDataBuilder b) updates]) =
      _$GArticleItemsData;

  static void _initializeBuilder(GArticleItemsDataBuilder b) =>
      b..G__typename = 'query_root';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GArticleItemsData_articles> get articles;
  static Serializer<GArticleItemsData> get serializer =>
      _$gArticleItemsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GArticleItemsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GArticleItemsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GArticleItemsData.serializer,
        json,
      );
}

abstract class GArticleItemsData_articles
    implements
        Built<GArticleItemsData_articles, GArticleItemsData_articlesBuilder> {
  GArticleItemsData_articles._();

  factory GArticleItemsData_articles(
          [Function(GArticleItemsData_articlesBuilder b) updates]) =
      _$GArticleItemsData_articles;

  static void _initializeBuilder(GArticleItemsData_articlesBuilder b) =>
      b..G__typename = 'articles';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.Guuid get id;
  String? get favicon;
  _i2.Guuid? get created_by;
  _i2.Gtimestamptz get created_at;
  String? get thumbnail;
  String? get title;
  _i2.Gtimestamptz get updated_at;
  String get url;
  _i2.Guuid? get updated_by;
  static Serializer<GArticleItemsData_articles> get serializer =>
      _$gArticleItemsDataArticlesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GArticleItemsData_articles.serializer,
        this,
      ) as Map<String, dynamic>);
  static GArticleItemsData_articles? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GArticleItemsData_articles.serializer,
        json,
      );
}
