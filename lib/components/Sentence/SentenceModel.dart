import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'SentenceModel.freezed.dart';
part 'SentenceModel.g.dart';

@unfreezed
class SentenceModel with _$SentenceModel {
  factory SentenceModel({
    required String seekTo,
    required List<String> words,
  }) = _SentenceModel;
  factory SentenceModel.initial() {
    return SentenceModel(seekTo: '', words: []);
  }

  factory SentenceModel.fromJson(Map<String, dynamic> json) =>
      _$SentenceModelFromJson(json);
}
