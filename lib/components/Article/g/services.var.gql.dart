// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i3;
import 'package:built_value/serializer.dart';
import 'package:entube/graphql/g/schema.schema.gql.dart' as _i1;
import 'package:entube/graphql/g/serializers.gql.dart' as _i2;

part 'services.var.gql.g.dart';

abstract class GSentencesVars
    implements Built<GSentencesVars, GSentencesVarsBuilder> {
  GSentencesVars._();

  factory GSentencesVars([Function(GSentencesVarsBuilder b) updates]) =
      _$GSentencesVars;

  _i1.Guuid get id;
  static Serializer<GSentencesVars> get serializer =>
      _$gSentencesVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSentencesVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GSentencesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSentencesVars.serializer,
        json,
      );
}

abstract class GinsertArticlesVars
    implements Built<GinsertArticlesVars, GinsertArticlesVarsBuilder> {
  GinsertArticlesVars._();

  factory GinsertArticlesVars(
      [Function(GinsertArticlesVarsBuilder b) updates]) = _$GinsertArticlesVars;

  _i1.Garticles_insert_input? get object;
  static Serializer<GinsertArticlesVars> get serializer =>
      _$ginsertArticlesVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GinsertArticlesVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GinsertArticlesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GinsertArticlesVars.serializer,
        json,
      );
}

abstract class GupdateSentencesVars
    implements Built<GupdateSentencesVars, GupdateSentencesVarsBuilder> {
  GupdateSentencesVars._();

  factory GupdateSentencesVars(
          [Function(GupdateSentencesVarsBuilder b) updates]) =
      _$GupdateSentencesVars;

  _i1.Guuid? get id;
  _i3.JsonObject? get sentences;
  static Serializer<GupdateSentencesVars> get serializer =>
      _$gupdateSentencesVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GupdateSentencesVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GupdateSentencesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GupdateSentencesVars.serializer,
        json,
      );
}
