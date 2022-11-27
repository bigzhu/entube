// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i3;
import 'package:built_value/serializer.dart';
import 'package:entube/graphql/schema.schema.gql.dart' as _i2;
import 'package:entube/graphql/serializers.gql.dart' as _i1;

part 'services.data.gql.g.dart';

abstract class GArticlesData
    implements Built<GArticlesData, GArticlesDataBuilder> {
  GArticlesData._();

  factory GArticlesData([Function(GArticlesDataBuilder b) updates]) =
      _$GArticlesData;

  static void _initializeBuilder(GArticlesDataBuilder b) =>
      b..G__typename = 'query_root';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GArticlesData_articles> get articles;
  static Serializer<GArticlesData> get serializer => _$gArticlesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GArticlesData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GArticlesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GArticlesData.serializer,
        json,
      );
}

abstract class GArticlesData_articles
    implements Built<GArticlesData_articles, GArticlesData_articlesBuilder> {
  GArticlesData_articles._();

  factory GArticlesData_articles(
          [Function(GArticlesData_articlesBuilder b) updates]) =
      _$GArticlesData_articles;

  static void _initializeBuilder(GArticlesData_articlesBuilder b) =>
      b..G__typename = 'articles';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.Guuid get id;
  String? get favicon;
  _i2.Guuid? get created_by;
  _i2.Gtimestamptz get created_at;
  _i3.JsonObject get sentences;
  String? get thumbnail;
  String? get title;
  _i2.Gtimestamptz get updated_at;
  String get url;
  _i2.Guuid? get updated_by;
  static Serializer<GArticlesData_articles> get serializer =>
      _$gArticlesDataArticlesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GArticlesData_articles.serializer,
        this,
      ) as Map<String, dynamic>);
  static GArticlesData_articles? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GArticlesData_articles.serializer,
        json,
      );
}
