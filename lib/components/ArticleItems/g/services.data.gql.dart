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
  @override
  _i2.Guuid? get created_by;
  @override
  _i2.Gtimestamptz get created_at;
  @override
  _i2.Guuid? get updated_by;
  @override
  _i2.Gtimestamptz get updated_at;
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
  _i2.Guuid? get user_id;
  _i2.Guuid get created_by;
  _i2.Gtimestamptz get created_at;
  _i2.Gtimestamptz get updated_at;
  _i2.Guuid get updated_by;
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
            GUserArticleItemsData_user_articles_articleBuilder>,
        GArticleFragment {
  GUserArticleItemsData_user_articles_article._();

  factory GUserArticleItemsData_user_articles_article(
      [Function(GUserArticleItemsData_user_articles_articleBuilder b)
          updates]) = _$GUserArticleItemsData_user_articles_article;

  static void _initializeBuilder(
          GUserArticleItemsData_user_articles_articleBuilder b) =>
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
  @override
  _i2.Guuid? get created_by;
  @override
  _i2.Gtimestamptz get created_at;
  @override
  _i2.Guuid? get updated_by;
  @override
  _i2.Gtimestamptz get updated_at;
  static Serializer<GUserArticleItemsData_user_articles_article>
      get serializer => _$gUserArticleItemsDataUserArticlesArticleSerializer;
  @override
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

abstract class GArticleFragment {
  String get G__typename;
  _i2.Guuid get id;
  String? get favicon;
  String? get thumbnail;
  String? get title;
  String get url;
  _i2.Guuid? get created_by;
  _i2.Gtimestamptz get created_at;
  _i2.Guuid? get updated_by;
  _i2.Gtimestamptz get updated_at;
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
  @override
  _i2.Guuid? get created_by;
  @override
  _i2.Gtimestamptz get created_at;
  @override
  _i2.Guuid? get updated_by;
  @override
  _i2.Gtimestamptz get updated_at;
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
