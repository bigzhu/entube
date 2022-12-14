// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:entube/graphql/g/serializers.gql.dart' as _i1;

part 'services.var.gql.g.dart';

abstract class GUserArticleItemsVars
    implements Built<GUserArticleItemsVars, GUserArticleItemsVarsBuilder> {
  GUserArticleItemsVars._();

  factory GUserArticleItemsVars(
          [Function(GUserArticleItemsVarsBuilder b) updates]) =
      _$GUserArticleItemsVars;

  static Serializer<GUserArticleItemsVars> get serializer =>
      _$gUserArticleItemsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserArticleItemsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserArticleItemsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserArticleItemsVars.serializer,
        json,
      );
}
