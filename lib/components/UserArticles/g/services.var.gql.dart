// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:entube/graphql/g/serializers.gql.dart' as _i1;

part 'services.var.gql.g.dart';

abstract class GUserArticlesVars
    implements Built<GUserArticlesVars, GUserArticlesVarsBuilder> {
  GUserArticlesVars._();

  factory GUserArticlesVars([Function(GUserArticlesVarsBuilder b) updates]) =
      _$GUserArticlesVars;

  static Serializer<GUserArticlesVars> get serializer =>
      _$gUserArticlesVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUserArticlesVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GUserArticlesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUserArticlesVars.serializer,
        json,
      );
}
