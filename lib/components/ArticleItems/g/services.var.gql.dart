// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:entube/graphql/g/serializers.gql.dart' as _i1;

part 'services.var.gql.g.dart';

abstract class GArticleItemsVars
    implements Built<GArticleItemsVars, GArticleItemsVarsBuilder> {
  GArticleItemsVars._();

  factory GArticleItemsVars([Function(GArticleItemsVarsBuilder b) updates]) =
      _$GArticleItemsVars;

  int? get offset;
  int? get limit;
  static Serializer<GArticleItemsVars> get serializer =>
      _$gArticleItemsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GArticleItemsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GArticleItemsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GArticleItemsVars.serializer,
        json,
      );
}
