// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAcquiringWordsVars> _$gAcquiringWordsVarsSerializer =
    new _$GAcquiringWordsVarsSerializer();
Serializer<GupsertAcquiringWordsVars> _$gupsertAcquiringWordsVarsSerializer =
    new _$GupsertAcquiringWordsVarsSerializer();

class _$GAcquiringWordsVarsSerializer
    implements StructuredSerializer<GAcquiringWordsVars> {
  @override
  final Iterable<Type> types = const [
    GAcquiringWordsVars,
    _$GAcquiringWordsVars
  ];
  @override
  final String wireName = 'GAcquiringWordsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAcquiringWordsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GAcquiringWordsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GAcquiringWordsVarsBuilder().build();
  }
}

class _$GupsertAcquiringWordsVarsSerializer
    implements StructuredSerializer<GupsertAcquiringWordsVars> {
  @override
  final Iterable<Type> types = const [
    GupsertAcquiringWordsVars,
    _$GupsertAcquiringWordsVars
  ];
  @override
  final String wireName = 'GupsertAcquiringWordsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupsertAcquiringWordsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'word',
      serializers.serialize(object.word, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.is_done;
    if (value != null) {
      result
        ..add('is_done')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.times;
    if (value != null) {
      result
        ..add('times')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GupsertAcquiringWordsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupsertAcquiringWordsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'is_done':
          result.is_done = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'times':
          result.times = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'word':
          result.word = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAcquiringWordsVars extends GAcquiringWordsVars {
  factory _$GAcquiringWordsVars(
          [void Function(GAcquiringWordsVarsBuilder)? updates]) =>
      (new GAcquiringWordsVarsBuilder()..update(updates))._build();

  _$GAcquiringWordsVars._() : super._();

  @override
  GAcquiringWordsVars rebuild(
          void Function(GAcquiringWordsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAcquiringWordsVarsBuilder toBuilder() =>
      new GAcquiringWordsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAcquiringWordsVars;
  }

  @override
  int get hashCode {
    return 817818079;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GAcquiringWordsVars').toString();
  }
}

class GAcquiringWordsVarsBuilder
    implements Builder<GAcquiringWordsVars, GAcquiringWordsVarsBuilder> {
  _$GAcquiringWordsVars? _$v;

  GAcquiringWordsVarsBuilder();

  @override
  void replace(GAcquiringWordsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAcquiringWordsVars;
  }

  @override
  void update(void Function(GAcquiringWordsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAcquiringWordsVars build() => _build();

  _$GAcquiringWordsVars _build() {
    final _$result = _$v ?? new _$GAcquiringWordsVars._();
    replace(_$result);
    return _$result;
  }
}

class _$GupsertAcquiringWordsVars extends GupsertAcquiringWordsVars {
  @override
  final bool? is_done;
  @override
  final int? times;
  @override
  final String word;

  factory _$GupsertAcquiringWordsVars(
          [void Function(GupsertAcquiringWordsVarsBuilder)? updates]) =>
      (new GupsertAcquiringWordsVarsBuilder()..update(updates))._build();

  _$GupsertAcquiringWordsVars._({this.is_done, this.times, required this.word})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        word, r'GupsertAcquiringWordsVars', 'word');
  }

  @override
  GupsertAcquiringWordsVars rebuild(
          void Function(GupsertAcquiringWordsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupsertAcquiringWordsVarsBuilder toBuilder() =>
      new GupsertAcquiringWordsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupsertAcquiringWordsVars &&
        is_done == other.is_done &&
        times == other.times &&
        word == other.word;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, is_done.hashCode), times.hashCode), word.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GupsertAcquiringWordsVars')
          ..add('is_done', is_done)
          ..add('times', times)
          ..add('word', word))
        .toString();
  }
}

class GupsertAcquiringWordsVarsBuilder
    implements
        Builder<GupsertAcquiringWordsVars, GupsertAcquiringWordsVarsBuilder> {
  _$GupsertAcquiringWordsVars? _$v;

  bool? _is_done;
  bool? get is_done => _$this._is_done;
  set is_done(bool? is_done) => _$this._is_done = is_done;

  int? _times;
  int? get times => _$this._times;
  set times(int? times) => _$this._times = times;

  String? _word;
  String? get word => _$this._word;
  set word(String? word) => _$this._word = word;

  GupsertAcquiringWordsVarsBuilder();

  GupsertAcquiringWordsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _is_done = $v.is_done;
      _times = $v.times;
      _word = $v.word;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupsertAcquiringWordsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupsertAcquiringWordsVars;
  }

  @override
  void update(void Function(GupsertAcquiringWordsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GupsertAcquiringWordsVars build() => _build();

  _$GupsertAcquiringWordsVars _build() {
    final _$result = _$v ??
        new _$GupsertAcquiringWordsVars._(
            is_done: is_done,
            times: times,
            word: BuiltValueNullFieldError.checkNotNull(
                word, r'GupsertAcquiringWordsVars', 'word'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
