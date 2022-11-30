// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GArticleSentencesVars> _$gArticleSentencesVarsSerializer =
    new _$GArticleSentencesVarsSerializer();

class _$GArticleSentencesVarsSerializer
    implements StructuredSerializer<GArticleSentencesVars> {
  @override
  final Iterable<Type> types = const [
    GArticleSentencesVars,
    _$GArticleSentencesVars
  ];
  @override
  final String wireName = 'GArticleSentencesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GArticleSentencesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i1.Guuid)),
    ];

    return result;
  }

  @override
  GArticleSentencesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GArticleSentencesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i1.Guuid))! as _i1.Guuid);
          break;
      }
    }

    return result.build();
  }
}

class _$GArticleSentencesVars extends GArticleSentencesVars {
  @override
  final _i1.Guuid id;

  factory _$GArticleSentencesVars(
          [void Function(GArticleSentencesVarsBuilder)? updates]) =>
      (new GArticleSentencesVarsBuilder()..update(updates))._build();

  _$GArticleSentencesVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GArticleSentencesVars', 'id');
  }

  @override
  GArticleSentencesVars rebuild(
          void Function(GArticleSentencesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GArticleSentencesVarsBuilder toBuilder() =>
      new GArticleSentencesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GArticleSentencesVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GArticleSentencesVars')
          ..add('id', id))
        .toString();
  }
}

class GArticleSentencesVarsBuilder
    implements Builder<GArticleSentencesVars, GArticleSentencesVarsBuilder> {
  _$GArticleSentencesVars? _$v;

  _i1.GuuidBuilder? _id;
  _i1.GuuidBuilder get id => _$this._id ??= new _i1.GuuidBuilder();
  set id(_i1.GuuidBuilder? id) => _$this._id = id;

  GArticleSentencesVarsBuilder();

  GArticleSentencesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GArticleSentencesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GArticleSentencesVars;
  }

  @override
  void update(void Function(GArticleSentencesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GArticleSentencesVars build() => _build();

  _$GArticleSentencesVars _build() {
    _$GArticleSentencesVars _$result;
    try {
      _$result = _$v ?? new _$GArticleSentencesVars._(id: id.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GArticleSentencesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
