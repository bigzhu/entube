// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:entube/graphql/schema.schema.gql.dart' as _i1;
import 'package:entube/graphql/serializers.gql.dart' as _i2;

part 'services.var.gql.g.dart';

abstract class GArticleSentencesVars
    implements Built<GArticleSentencesVars, GArticleSentencesVarsBuilder> {
  GArticleSentencesVars._();

  factory GArticleSentencesVars(
          [Function(GArticleSentencesVarsBuilder b) updates]) =
      _$GArticleSentencesVars;

  _i1.Guuid get id;
  static Serializer<GArticleSentencesVars> get serializer =>
      _$gArticleSentencesVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GArticleSentencesVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GArticleSentencesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GArticleSentencesVars.serializer,
        json,
      );
}
