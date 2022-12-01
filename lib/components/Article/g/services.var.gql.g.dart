// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSentencesVars> _$gSentencesVarsSerializer =
    new _$GSentencesVarsSerializer();

class _$GSentencesVarsSerializer
    implements StructuredSerializer<GSentencesVars> {
  @override
  final Iterable<Type> types = const [GSentencesVars, _$GSentencesVars];
  @override
  final String wireName = 'GSentencesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GSentencesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id,
          specifiedType: const FullType(_i1.Guuid)),
    ];

    return result;
  }

  @override
  GSentencesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSentencesVarsBuilder();

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

class _$GSentencesVars extends GSentencesVars {
  @override
  final _i1.Guuid id;

  factory _$GSentencesVars([void Function(GSentencesVarsBuilder)? updates]) =>
      (new GSentencesVarsBuilder()..update(updates))._build();

  _$GSentencesVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GSentencesVars', 'id');
  }

  @override
  GSentencesVars rebuild(void Function(GSentencesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSentencesVarsBuilder toBuilder() =>
      new GSentencesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSentencesVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSentencesVars')..add('id', id))
        .toString();
  }
}

class GSentencesVarsBuilder
    implements Builder<GSentencesVars, GSentencesVarsBuilder> {
  _$GSentencesVars? _$v;

  _i1.GuuidBuilder? _id;
  _i1.GuuidBuilder get id => _$this._id ??= new _i1.GuuidBuilder();
  set id(_i1.GuuidBuilder? id) => _$this._id = id;

  GSentencesVarsBuilder();

  GSentencesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSentencesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSentencesVars;
  }

  @override
  void update(void Function(GSentencesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSentencesVars build() => _build();

  _$GSentencesVars _build() {
    _$GSentencesVars _$result;
    try {
      _$result = _$v ?? new _$GSentencesVars._(id: id.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        id.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSentencesVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
