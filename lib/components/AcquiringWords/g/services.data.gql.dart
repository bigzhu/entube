// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:entube/graphql/g/schema.schema.gql.dart' as _i2;
import 'package:entube/graphql/g/serializers.gql.dart' as _i1;

part 'services.data.gql.g.dart';

abstract class GAcquiringWordsData
    implements Built<GAcquiringWordsData, GAcquiringWordsDataBuilder> {
  GAcquiringWordsData._();

  factory GAcquiringWordsData(
      [Function(GAcquiringWordsDataBuilder b) updates]) = _$GAcquiringWordsData;

  static void _initializeBuilder(GAcquiringWordsDataBuilder b) =>
      b..G__typename = 'query_root';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GAcquiringWordsData_words> get words;
  static Serializer<GAcquiringWordsData> get serializer =>
      _$gAcquiringWordsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAcquiringWordsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAcquiringWordsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAcquiringWordsData.serializer,
        json,
      );
}

abstract class GAcquiringWordsData_words
    implements
        Built<GAcquiringWordsData_words, GAcquiringWordsData_wordsBuilder> {
  GAcquiringWordsData_words._();

  factory GAcquiringWordsData_words(
          [Function(GAcquiringWordsData_wordsBuilder b) updates]) =
      _$GAcquiringWordsData_words;

  static void _initializeBuilder(GAcquiringWordsData_wordsBuilder b) =>
      b..G__typename = 'words';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.Guuid get id;
  bool get is_done;
  String get word;
  int get times;
  _i2.Gtimestamptz get created_at;
  _i2.Gtimestamptz get updated_at;
  static Serializer<GAcquiringWordsData_words> get serializer =>
      _$gAcquiringWordsDataWordsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAcquiringWordsData_words.serializer,
        this,
      ) as Map<String, dynamic>);
  static GAcquiringWordsData_words? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAcquiringWordsData_words.serializer,
        json,
      );
}

abstract class GupsertAcquiringWordsData
    implements
        Built<GupsertAcquiringWordsData, GupsertAcquiringWordsDataBuilder> {
  GupsertAcquiringWordsData._();

  factory GupsertAcquiringWordsData(
          [Function(GupsertAcquiringWordsDataBuilder b) updates]) =
      _$GupsertAcquiringWordsData;

  static void _initializeBuilder(GupsertAcquiringWordsDataBuilder b) =>
      b..G__typename = 'mutation_root';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GupsertAcquiringWordsData_insert_words_one? get insert_words_one;
  static Serializer<GupsertAcquiringWordsData> get serializer =>
      _$gupsertAcquiringWordsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupsertAcquiringWordsData.serializer,
        this,
      ) as Map<String, dynamic>);
  static GupsertAcquiringWordsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupsertAcquiringWordsData.serializer,
        json,
      );
}

abstract class GupsertAcquiringWordsData_insert_words_one
    implements
        Built<GupsertAcquiringWordsData_insert_words_one,
            GupsertAcquiringWordsData_insert_words_oneBuilder> {
  GupsertAcquiringWordsData_insert_words_one._();

  factory GupsertAcquiringWordsData_insert_words_one(
      [Function(GupsertAcquiringWordsData_insert_words_oneBuilder b)
          updates]) = _$GupsertAcquiringWordsData_insert_words_one;

  static void _initializeBuilder(
          GupsertAcquiringWordsData_insert_words_oneBuilder b) =>
      b..G__typename = 'words';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get word;
  int get times;
  bool get is_done;
  static Serializer<GupsertAcquiringWordsData_insert_words_one>
      get serializer => _$gupsertAcquiringWordsDataInsertWordsOneSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GupsertAcquiringWordsData_insert_words_one.serializer,
        this,
      ) as Map<String, dynamic>);
  static GupsertAcquiringWordsData_insert_words_one? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GupsertAcquiringWordsData_insert_words_one.serializer,
        json,
      );
}
