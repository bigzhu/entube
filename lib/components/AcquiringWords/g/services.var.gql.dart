// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:entube/graphql/g/serializers.gql.dart' as _i1;

part 'services.var.gql.g.dart';

abstract class GAcquiringWordsVars
    implements Built<GAcquiringWordsVars, GAcquiringWordsVarsBuilder> {
  GAcquiringWordsVars._();

  factory GAcquiringWordsVars(
      [Function(GAcquiringWordsVarsBuilder b) updates]) = _$GAcquiringWordsVars;

  static Serializer<GAcquiringWordsVars> get serializer =>
      _$gAcquiringWordsVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAcquiringWordsVars.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAcquiringWordsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAcquiringWordsVars.serializer,
        json,
      );
}
