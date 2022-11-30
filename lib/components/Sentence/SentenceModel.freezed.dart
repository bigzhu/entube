// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'SentenceModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SentenceModel _$SentenceModelFromJson(Map<String, dynamic> json) {
  return _SentenceModel.fromJson(json);
}

/// @nodoc
mixin _$SentenceModel {
  String get seekTo => throw _privateConstructorUsedError;
  set seekTo(String value) => throw _privateConstructorUsedError;
  List<String> get words => throw _privateConstructorUsedError;
  set words(List<String> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SentenceModelCopyWith<SentenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentenceModelCopyWith<$Res> {
  factory $SentenceModelCopyWith(
          SentenceModel value, $Res Function(SentenceModel) then) =
      _$SentenceModelCopyWithImpl<$Res, SentenceModel>;
  @useResult
  $Res call({String seekTo, List<String> words});
}

/// @nodoc
class _$SentenceModelCopyWithImpl<$Res, $Val extends SentenceModel>
    implements $SentenceModelCopyWith<$Res> {
  _$SentenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seekTo = null,
    Object? words = null,
  }) {
    return _then(_value.copyWith(
      seekTo: null == seekTo
          ? _value.seekTo
          : seekTo // ignore: cast_nullable_to_non_nullable
              as String,
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SentenceModelCopyWith<$Res>
    implements $SentenceModelCopyWith<$Res> {
  factory _$$_SentenceModelCopyWith(
          _$_SentenceModel value, $Res Function(_$_SentenceModel) then) =
      __$$_SentenceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String seekTo, List<String> words});
}

/// @nodoc
class __$$_SentenceModelCopyWithImpl<$Res>
    extends _$SentenceModelCopyWithImpl<$Res, _$_SentenceModel>
    implements _$$_SentenceModelCopyWith<$Res> {
  __$$_SentenceModelCopyWithImpl(
      _$_SentenceModel _value, $Res Function(_$_SentenceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seekTo = null,
    Object? words = null,
  }) {
    return _then(_$_SentenceModel(
      seekTo: null == seekTo
          ? _value.seekTo
          : seekTo // ignore: cast_nullable_to_non_nullable
              as String,
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SentenceModel with DiagnosticableTreeMixin implements _SentenceModel {
  _$_SentenceModel({required this.seekTo, required this.words});

  factory _$_SentenceModel.fromJson(Map<String, dynamic> json) =>
      _$$_SentenceModelFromJson(json);

  @override
  String seekTo;
  @override
  List<String> words;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SentenceModel(seekTo: $seekTo, words: $words)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SentenceModel'))
      ..add(DiagnosticsProperty('seekTo', seekTo))
      ..add(DiagnosticsProperty('words', words));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SentenceModelCopyWith<_$_SentenceModel> get copyWith =>
      __$$_SentenceModelCopyWithImpl<_$_SentenceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SentenceModelToJson(
      this,
    );
  }
}

abstract class _SentenceModel implements SentenceModel {
  factory _SentenceModel(
      {required String seekTo, required List<String> words}) = _$_SentenceModel;

  factory _SentenceModel.fromJson(Map<String, dynamic> json) =
      _$_SentenceModel.fromJson;

  @override
  String get seekTo;
  set seekTo(String value);
  @override
  List<String> get words;
  set words(List<String> value);
  @override
  @JsonKey(ignore: true)
  _$$_SentenceModelCopyWith<_$_SentenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
