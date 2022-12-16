// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'SentenceModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SentenceModel _$$_SentenceModelFromJson(Map<String, dynamic> json) =>
    _$_SentenceModel(
      seekTo: json['seekTo'] as String,
      words: (json['words'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_SentenceModelToJson(_$_SentenceModel instance) =>
    <String, dynamic>{
      'seekTo': instance.seekTo,
      'words': instance.words,
    };
