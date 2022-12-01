// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAcquiringWordsData> _$gAcquiringWordsDataSerializer =
    new _$GAcquiringWordsDataSerializer();
Serializer<GAcquiringWordsData_words> _$gAcquiringWordsDataWordsSerializer =
    new _$GAcquiringWordsData_wordsSerializer();

class _$GAcquiringWordsDataSerializer
    implements StructuredSerializer<GAcquiringWordsData> {
  @override
  final Iterable<Type> types = const [
    GAcquiringWordsData,
    _$GAcquiringWordsData
  ];
  @override
  final String wireName = 'GAcquiringWordsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAcquiringWordsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'words',
      serializers.serialize(object.words,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GAcquiringWordsData_words)])),
    ];

    return result;
  }

  @override
  GAcquiringWordsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAcquiringWordsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'words':
          result.words.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GAcquiringWordsData_words)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAcquiringWordsData_wordsSerializer
    implements StructuredSerializer<GAcquiringWordsData_words> {
  @override
  final Iterable<Type> types = const [
    GAcquiringWordsData_words,
    _$GAcquiringWordsData_words
  ];
  @override
  final String wireName = 'GAcquiringWordsData_words';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAcquiringWordsData_words object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i2.Guuid)),
      'done',
      serializers.serialize(object.done, specifiedType: const FullType(bool)),
      'times',
      serializers.serialize(object.times, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.word;
    if (value != null) {
      result
        ..add('word')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GAcquiringWordsData_words deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAcquiringWordsData_wordsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i2.Guuid))! as _i2.Guuid);
          break;
        case 'done':
          result.done = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'times':
          result.times = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'word':
          result.word = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GAcquiringWordsData extends GAcquiringWordsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GAcquiringWordsData_words> words;

  factory _$GAcquiringWordsData(
          [void Function(GAcquiringWordsDataBuilder)? updates]) =>
      (new GAcquiringWordsDataBuilder()..update(updates))._build();

  _$GAcquiringWordsData._({required this.G__typename, required this.words})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAcquiringWordsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        words, r'GAcquiringWordsData', 'words');
  }

  @override
  GAcquiringWordsData rebuild(
          void Function(GAcquiringWordsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAcquiringWordsDataBuilder toBuilder() =>
      new GAcquiringWordsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAcquiringWordsData &&
        G__typename == other.G__typename &&
        words == other.words;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), words.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAcquiringWordsData')
          ..add('G__typename', G__typename)
          ..add('words', words))
        .toString();
  }
}

class GAcquiringWordsDataBuilder
    implements Builder<GAcquiringWordsData, GAcquiringWordsDataBuilder> {
  _$GAcquiringWordsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GAcquiringWordsData_words>? _words;
  ListBuilder<GAcquiringWordsData_words> get words =>
      _$this._words ??= new ListBuilder<GAcquiringWordsData_words>();
  set words(ListBuilder<GAcquiringWordsData_words>? words) =>
      _$this._words = words;

  GAcquiringWordsDataBuilder() {
    GAcquiringWordsData._initializeBuilder(this);
  }

  GAcquiringWordsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _words = $v.words.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAcquiringWordsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAcquiringWordsData;
  }

  @override
  void update(void Function(GAcquiringWordsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAcquiringWordsData build() => _build();

  _$GAcquiringWordsData _build() {
    _$GAcquiringWordsData _$result;
    try {
      _$result = _$v ??
          new _$GAcquiringWordsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAcquiringWordsData', 'G__typename'),
              words: words.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'words';
        words.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAcquiringWordsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAcquiringWordsData_words extends GAcquiringWordsData_words {
  @override
  final String G__typename;
  @override
  final _i2.Guuid id;
  @override
  final bool done;
  @override
  final int times;
  @override
  final String? word;

  factory _$GAcquiringWordsData_words(
          [void Function(GAcquiringWordsData_wordsBuilder)? updates]) =>
      (new GAcquiringWordsData_wordsBuilder()..update(updates))._build();

  _$GAcquiringWordsData_words._(
      {required this.G__typename,
      required this.id,
      required this.done,
      required this.times,
      this.word})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAcquiringWordsData_words', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GAcquiringWordsData_words', 'id');
    BuiltValueNullFieldError.checkNotNull(
        done, r'GAcquiringWordsData_words', 'done');
    BuiltValueNullFieldError.checkNotNull(
        times, r'GAcquiringWordsData_words', 'times');
  }

  @override
  GAcquiringWordsData_words rebuild(
          void Function(GAcquiringWordsData_wordsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAcquiringWordsData_wordsBuilder toBuilder() =>
      new GAcquiringWordsData_wordsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAcquiringWordsData_words &&
        G__typename == other.G__typename &&
        id == other.id &&
        done == other.done &&
        times == other.times &&
        word == other.word;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, G__typename.hashCode), id.hashCode), done.hashCode),
            times.hashCode),
        word.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAcquiringWordsData_words')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('done', done)
          ..add('times', times)
          ..add('word', word))
        .toString();
  }
}

class GAcquiringWordsData_wordsBuilder
    implements
        Builder<GAcquiringWordsData_words, GAcquiringWordsData_wordsBuilder> {
  _$GAcquiringWordsData_words? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i2.GuuidBuilder? _id;
  _i2.GuuidBuilder get id => _$this._id ??= new _i2.GuuidBuilder();
  set id(_i2.GuuidBuilder? id) => _$this._id = id;

  bool? _done;
  bool? get done => _$this._done;
  set done(bool? done) => _$this._done = done;

  int? _times;
  int? get times => _$this._times;
  set times(int? times) => _$this._times = times;

  String? _word;
  String? get word => _$this._word;
  set word(String? word) => _$this._word = word;

  GAcquiringWordsData_wordsBuilder() {
    GAcquiringWordsData_words._initializeBuilder(this);
  }

  GAcquiringWordsData_wordsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id.toBuilder();
      _done = $v.done;
      _times = $v.times;
      _word = $v.word;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAcquiringWordsData_words other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAcquiringWordsData_words;
  }

  @override
  void update(void Function(GAcquiringWordsData_wordsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAcquiringWordsData_words build() => _build();

  _$GAcquiringWordsData_words _build() {
    _$GAcquiringWordsData_words _$result;
    try {
      _$result = _$v ??
          new _$GAcquiringWordsData_words._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAcquiringWordsData_words', 'G__typename'),
              id: id.build(),
              done: BuiltValueNullFieldError.checkNotNull(
                  done, r'GAcquiringWordsData_words', 'done'),
              times: BuiltValueNullFieldError.checkNotNull(
                  times, r'GAcquiringWordsData_words', 'times'),
              word: word);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAcquiringWordsData_words', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
