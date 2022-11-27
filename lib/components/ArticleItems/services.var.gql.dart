// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:entube/graphql/serializers.gql.dart' as _i1;

part 'services.var.gql.g.dart';

abstract class GArticlesVars
    implements Built<GArticlesVars, GArticlesVarsBuilder> {
  GArticlesVars._();

  factory GArticlesVars([Function(GArticlesVarsBuilder b) updates]) =
      _$GArticlesVars;

  int? get offset;
  int? get limit;
  static Serializer<GArticlesVars> get serializer => _$gArticlesVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GArticlesVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GArticlesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GArticlesVars.serializer,
        json,
      );
}
