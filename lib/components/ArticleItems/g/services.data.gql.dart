// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:entube/graphql/g/schema.schema.gql.dart' as _i2;
import 'package:entube/graphql/g/serializers.gql.dart' as _i1;

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
    implements
        Built<GArticlesData_articles, GArticlesData_articlesBuilder>,
        GArticleFragment {
  GArticlesData_articles._();

  factory GArticlesData_articles(
          [Function(GArticlesData_articlesBuilder b) updates]) =
      _$GArticlesData_articles;

  static void _initializeBuilder(GArticlesData_articlesBuilder b) =>
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
  static Serializer<GArticlesData_articles> get serializer =>
      _$gArticlesDataArticlesSerializer;
  @override
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

abstract class GArticleByUrlData
    implements Built<GArticleByUrlData, GArticleByUrlDataBuilder> {
  GArticleByUrlData._();

  factory GArticleByUrlData([Function(GArticleByUrlDataBuilder b) updates]) =
      _$GArticleByUrlData;

  static void _initializeBuilder(GArticleByUrlDataBuilder b) =>
      b..G__typename = 'query_root';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GArticleByUrlData_articles> get articles;
  static Serializer<GArticleByUrlData> get serializer =>
      _$gArticleByUrlDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GArticleByUrlData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GArticleByUrlData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GArticleByUrlData.serializer,
        json,
      );
}

abstract class GArticleByUrlData_articles
    implements
        Built<GArticleByUrlData_articles, GArticleByUrlData_articlesBuilder>,
        GArticleFragment {
  GArticleByUrlData_articles._();

  factory GArticleByUrlData_articles(
          [Function(GArticleByUrlData_articlesBuilder b) updates]) =
      _$GArticleByUrlData_articles;

  static void _initializeBuilder(GArticleByUrlData_articlesBuilder b) =>
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
  static Serializer<GArticleByUrlData_articles> get serializer =>
      _$gArticleByUrlDataArticlesSerializer;
  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GArticleByUrlData_articles.serializer,
        this,
      ) as Map<String, dynamic>);
  static GArticleByUrlData_articles? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GArticleByUrlData_articles.serializer,
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
