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
        Built<GArticleItemsData_articles, GArticleItemsData_articlesBuilder>,
        GArticleFragment {
  GArticleItemsData_articles._();

  factory GArticleItemsData_articles(
          [Function(GArticleItemsData_articlesBuilder b) updates]) =
      _$GArticleItemsData_articles;

  static void _initializeBuilder(GArticleItemsData_articlesBuilder b) =>
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
  static Serializer<GArticleItemsData_articles> get serializer =>
      _$gArticleItemsDataArticlesSerializer;
  @override
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

abstract class GArticleFragment {
  String get G__typename;
  _i2.Guuid get id;
  String? get favicon;
  String? get thumbnail;
  String? get title;
  String get url;
  Map<String, dynamic> toJson();
}

abstract class GArticleFragmentData
    implements
        Built<GArticleFragmentData, GArticleFragmentDataBuilder>,
        GArticleFragment {
  GArticleFragmentData._();

  factory GArticleFragmentData(
          [Function(GArticleFragmentDataBuilder b) updates]) =
      _$GArticleFragmentData;

  static void _initializeBuilder(GArticleFragmentDataBuilder b) =>
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
  static Serializer<GArticleFragmentData> get serializer =>
      _$gArticleFragmentDataSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GArticleFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GArticleFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GArticleFragmentData.serializer,
        json,
      );
}
