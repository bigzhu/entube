// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i2;
import 'package:built_value/serializer.dart';
import 'package:entube/graphql/g/serializers.gql.dart' as _i1;
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i3;

part 'schema.schema.gql.g.dart';

abstract class GBoolean_comparison_exp
    implements Built<GBoolean_comparison_exp, GBoolean_comparison_expBuilder> {
  GBoolean_comparison_exp._();

  factory GBoolean_comparison_exp(
          [Function(GBoolean_comparison_expBuilder b) updates]) =
      _$GBoolean_comparison_exp;

  @BuiltValueField(wireName: '_eq')
  bool? get G_eq;
  @BuiltValueField(wireName: '_gt')
  bool? get G_gt;
  @BuiltValueField(wireName: '_gte')
  bool? get G_gte;
  @BuiltValueField(wireName: '_in')
  BuiltList<bool>? get G_in;
  @BuiltValueField(wireName: '_is_null')
  bool? get G_is_null;
  @BuiltValueField(wireName: '_lt')
  bool? get G_lt;
  @BuiltValueField(wireName: '_lte')
  bool? get G_lte;
  @BuiltValueField(wireName: '_neq')
  bool? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<bool>? get G_nin;
  static Serializer<GBoolean_comparison_exp> get serializer =>
      _$gBooleanComparisonExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBoolean_comparison_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static GBoolean_comparison_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBoolean_comparison_exp.serializer,
        json,
      );
}

abstract class GInt_comparison_exp
    implements Built<GInt_comparison_exp, GInt_comparison_expBuilder> {
  GInt_comparison_exp._();

  factory GInt_comparison_exp(
      [Function(GInt_comparison_expBuilder b) updates]) = _$GInt_comparison_exp;

  @BuiltValueField(wireName: '_eq')
  int? get G_eq;
  @BuiltValueField(wireName: '_gt')
  int? get G_gt;
  @BuiltValueField(wireName: '_gte')
  int? get G_gte;
  @BuiltValueField(wireName: '_in')
  BuiltList<int>? get G_in;
  @BuiltValueField(wireName: '_is_null')
  bool? get G_is_null;
  @BuiltValueField(wireName: '_lt')
  int? get G_lt;
  @BuiltValueField(wireName: '_lte')
  int? get G_lte;
  @BuiltValueField(wireName: '_neq')
  int? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<int>? get G_nin;
  static Serializer<GInt_comparison_exp> get serializer =>
      _$gIntComparisonExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GInt_comparison_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static GInt_comparison_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GInt_comparison_exp.serializer,
        json,
      );
}

abstract class GString_comparison_exp
    implements Built<GString_comparison_exp, GString_comparison_expBuilder> {
  GString_comparison_exp._();

  factory GString_comparison_exp(
          [Function(GString_comparison_expBuilder b) updates]) =
      _$GString_comparison_exp;

  @BuiltValueField(wireName: '_eq')
  String? get G_eq;
  @BuiltValueField(wireName: '_gt')
  String? get G_gt;
  @BuiltValueField(wireName: '_gte')
  String? get G_gte;
  @BuiltValueField(wireName: '_ilike')
  String? get G_ilike;
  @BuiltValueField(wireName: '_in')
  BuiltList<String>? get G_in;
  @BuiltValueField(wireName: '_iregex')
  String? get G_iregex;
  @BuiltValueField(wireName: '_is_null')
  bool? get G_is_null;
  @BuiltValueField(wireName: '_like')
  String? get G_like;
  @BuiltValueField(wireName: '_lt')
  String? get G_lt;
  @BuiltValueField(wireName: '_lte')
  String? get G_lte;
  @BuiltValueField(wireName: '_neq')
  String? get G_neq;
  @BuiltValueField(wireName: '_nilike')
  String? get G_nilike;
  @BuiltValueField(wireName: '_nin')
  BuiltList<String>? get G_nin;
  @BuiltValueField(wireName: '_niregex')
  String? get G_niregex;
  @BuiltValueField(wireName: '_nlike')
  String? get G_nlike;
  @BuiltValueField(wireName: '_nregex')
  String? get G_nregex;
  @BuiltValueField(wireName: '_nsimilar')
  String? get G_nsimilar;
  @BuiltValueField(wireName: '_regex')
  String? get G_regex;
  @BuiltValueField(wireName: '_similar')
  String? get G_similar;
  static Serializer<GString_comparison_exp> get serializer =>
      _$gStringComparisonExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GString_comparison_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static GString_comparison_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GString_comparison_exp.serializer,
        json,
      );
}

abstract class Garticles_append_input
    implements Built<Garticles_append_input, Garticles_append_inputBuilder> {
  Garticles_append_input._();

  factory Garticles_append_input(
          [Function(Garticles_append_inputBuilder b) updates]) =
      _$Garticles_append_input;

  _i2.JsonObject? get sentences;
  static Serializer<Garticles_append_input> get serializer =>
      _$garticlesAppendInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Garticles_append_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Garticles_append_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Garticles_append_input.serializer,
        json,
      );
}

abstract class Garticles_bool_exp
    implements Built<Garticles_bool_exp, Garticles_bool_expBuilder> {
  Garticles_bool_exp._();

  factory Garticles_bool_exp([Function(Garticles_bool_expBuilder b) updates]) =
      _$Garticles_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<Garticles_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  Garticles_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<Garticles_bool_exp>? get G_or;
  Gtimestamptz_comparison_exp? get created_at;
  Guuid_comparison_exp? get created_by;
  Gtimestamptz_comparison_exp? get deleted_at;
  GString_comparison_exp? get favicon;
  Guuid_comparison_exp? get id;
  Gjsonb_comparison_exp? get sentences;
  GString_comparison_exp? get thumbnail;
  GString_comparison_exp? get title;
  Gtimestamptz_comparison_exp? get updated_at;
  Guuid_comparison_exp? get updated_by;
  GString_comparison_exp? get url;
  Guser_articles_bool_exp? get user_articles;
  Guser_articles_aggregate_bool_exp? get user_articles_aggregate;
  static Serializer<Garticles_bool_exp> get serializer =>
      _$garticlesBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Garticles_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static Garticles_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Garticles_bool_exp.serializer,
        json,
      );
}

class Garticles_constraint extends EnumClass {
  const Garticles_constraint._(String name) : super(name);

  static const Garticles_constraint article_pkey =
      _$garticlesConstraintarticle_pkey;

  static const Garticles_constraint articles_url_key =
      _$garticlesConstraintarticles_url_key;

  static Serializer<Garticles_constraint> get serializer =>
      _$garticlesConstraintSerializer;
  static BuiltSet<Garticles_constraint> get values =>
      _$garticlesConstraintValues;
  static Garticles_constraint valueOf(String name) =>
      _$garticlesConstraintValueOf(name);
}

abstract class Garticles_delete_at_path_input
    implements
        Built<Garticles_delete_at_path_input,
            Garticles_delete_at_path_inputBuilder> {
  Garticles_delete_at_path_input._();

  factory Garticles_delete_at_path_input(
          [Function(Garticles_delete_at_path_inputBuilder b) updates]) =
      _$Garticles_delete_at_path_input;

  BuiltList<String>? get sentences;
  static Serializer<Garticles_delete_at_path_input> get serializer =>
      _$garticlesDeleteAtPathInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Garticles_delete_at_path_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Garticles_delete_at_path_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Garticles_delete_at_path_input.serializer,
        json,
      );
}

abstract class Garticles_delete_elem_input
    implements
        Built<Garticles_delete_elem_input, Garticles_delete_elem_inputBuilder> {
  Garticles_delete_elem_input._();

  factory Garticles_delete_elem_input(
          [Function(Garticles_delete_elem_inputBuilder b) updates]) =
      _$Garticles_delete_elem_input;

  int? get sentences;
  static Serializer<Garticles_delete_elem_input> get serializer =>
      _$garticlesDeleteElemInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Garticles_delete_elem_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Garticles_delete_elem_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Garticles_delete_elem_input.serializer,
        json,
      );
}

abstract class Garticles_delete_key_input
    implements
        Built<Garticles_delete_key_input, Garticles_delete_key_inputBuilder> {
  Garticles_delete_key_input._();

  factory Garticles_delete_key_input(
          [Function(Garticles_delete_key_inputBuilder b) updates]) =
      _$Garticles_delete_key_input;

  String? get sentences;
  static Serializer<Garticles_delete_key_input> get serializer =>
      _$garticlesDeleteKeyInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Garticles_delete_key_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Garticles_delete_key_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Garticles_delete_key_input.serializer,
        json,
      );
}

abstract class Garticles_insert_input
    implements Built<Garticles_insert_input, Garticles_insert_inputBuilder> {
  Garticles_insert_input._();

  factory Garticles_insert_input(
          [Function(Garticles_insert_inputBuilder b) updates]) =
      _$Garticles_insert_input;

  Gtimestamptz? get created_at;
  Guuid? get created_by;
  Gtimestamptz? get deleted_at;
  String? get favicon;
  Guuid? get id;
  _i2.JsonObject? get sentences;
  String? get thumbnail;
  String? get title;
  Gtimestamptz? get updated_at;
  Guuid? get updated_by;
  String? get url;
  Guser_articles_arr_rel_insert_input? get user_articles;
  static Serializer<Garticles_insert_input> get serializer =>
      _$garticlesInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Garticles_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Garticles_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Garticles_insert_input.serializer,
        json,
      );
}

abstract class Garticles_obj_rel_insert_input
    implements
        Built<Garticles_obj_rel_insert_input,
            Garticles_obj_rel_insert_inputBuilder> {
  Garticles_obj_rel_insert_input._();

  factory Garticles_obj_rel_insert_input(
          [Function(Garticles_obj_rel_insert_inputBuilder b) updates]) =
      _$Garticles_obj_rel_insert_input;

  Garticles_insert_input get data;
  Garticles_on_conflict? get on_conflict;
  static Serializer<Garticles_obj_rel_insert_input> get serializer =>
      _$garticlesObjRelInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Garticles_obj_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Garticles_obj_rel_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Garticles_obj_rel_insert_input.serializer,
        json,
      );
}

abstract class Garticles_on_conflict
    implements Built<Garticles_on_conflict, Garticles_on_conflictBuilder> {
  Garticles_on_conflict._();

  factory Garticles_on_conflict(
          [Function(Garticles_on_conflictBuilder b) updates]) =
      _$Garticles_on_conflict;

  Garticles_constraint get constraint;
  BuiltList<Garticles_update_column> get update_columns;
  Garticles_bool_exp? get where;
  static Serializer<Garticles_on_conflict> get serializer =>
      _$garticlesOnConflictSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Garticles_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);
  static Garticles_on_conflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Garticles_on_conflict.serializer,
        json,
      );
}

abstract class Garticles_order_by
    implements Built<Garticles_order_by, Garticles_order_byBuilder> {
  Garticles_order_by._();

  factory Garticles_order_by([Function(Garticles_order_byBuilder b) updates]) =
      _$Garticles_order_by;

  Gorder_by? get created_at;
  Gorder_by? get created_by;
  Gorder_by? get deleted_at;
  Gorder_by? get favicon;
  Gorder_by? get id;
  Gorder_by? get sentences;
  Gorder_by? get thumbnail;
  Gorder_by? get title;
  Gorder_by? get updated_at;
  Gorder_by? get updated_by;
  Gorder_by? get url;
  Guser_articles_aggregate_order_by? get user_articles_aggregate;
  static Serializer<Garticles_order_by> get serializer =>
      _$garticlesOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Garticles_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Garticles_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Garticles_order_by.serializer,
        json,
      );
}

abstract class Garticles_pk_columns_input
    implements
        Built<Garticles_pk_columns_input, Garticles_pk_columns_inputBuilder> {
  Garticles_pk_columns_input._();

  factory Garticles_pk_columns_input(
          [Function(Garticles_pk_columns_inputBuilder b) updates]) =
      _$Garticles_pk_columns_input;

  Guuid get id;
  static Serializer<Garticles_pk_columns_input> get serializer =>
      _$garticlesPkColumnsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Garticles_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Garticles_pk_columns_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Garticles_pk_columns_input.serializer,
        json,
      );
}

abstract class Garticles_prepend_input
    implements Built<Garticles_prepend_input, Garticles_prepend_inputBuilder> {
  Garticles_prepend_input._();

  factory Garticles_prepend_input(
          [Function(Garticles_prepend_inputBuilder b) updates]) =
      _$Garticles_prepend_input;

  _i2.JsonObject? get sentences;
  static Serializer<Garticles_prepend_input> get serializer =>
      _$garticlesPrependInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Garticles_prepend_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Garticles_prepend_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Garticles_prepend_input.serializer,
        json,
      );
}

class Garticles_select_column extends EnumClass {
  const Garticles_select_column._(String name) : super(name);

  static const Garticles_select_column created_at =
      _$garticlesSelectColumncreated_at;

  static const Garticles_select_column created_by =
      _$garticlesSelectColumncreated_by;

  static const Garticles_select_column deleted_at =
      _$garticlesSelectColumndeleted_at;

  static const Garticles_select_column favicon = _$garticlesSelectColumnfavicon;

  static const Garticles_select_column id = _$garticlesSelectColumnid;

  static const Garticles_select_column sentences =
      _$garticlesSelectColumnsentences;

  static const Garticles_select_column thumbnail =
      _$garticlesSelectColumnthumbnail;

  static const Garticles_select_column title = _$garticlesSelectColumntitle;

  static const Garticles_select_column updated_at =
      _$garticlesSelectColumnupdated_at;

  static const Garticles_select_column updated_by =
      _$garticlesSelectColumnupdated_by;

  static const Garticles_select_column url = _$garticlesSelectColumnurl;

  static Serializer<Garticles_select_column> get serializer =>
      _$garticlesSelectColumnSerializer;
  static BuiltSet<Garticles_select_column> get values =>
      _$garticlesSelectColumnValues;
  static Garticles_select_column valueOf(String name) =>
      _$garticlesSelectColumnValueOf(name);
}

abstract class Garticles_set_input
    implements Built<Garticles_set_input, Garticles_set_inputBuilder> {
  Garticles_set_input._();

  factory Garticles_set_input(
      [Function(Garticles_set_inputBuilder b) updates]) = _$Garticles_set_input;

  Gtimestamptz? get created_at;
  Guuid? get created_by;
  Gtimestamptz? get deleted_at;
  String? get favicon;
  Guuid? get id;
  _i2.JsonObject? get sentences;
  String? get thumbnail;
  String? get title;
  Gtimestamptz? get updated_at;
  Guuid? get updated_by;
  String? get url;
  static Serializer<Garticles_set_input> get serializer =>
      _$garticlesSetInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Garticles_set_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Garticles_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Garticles_set_input.serializer,
        json,
      );
}

abstract class Garticles_stream_cursor_input
    implements
        Built<Garticles_stream_cursor_input,
            Garticles_stream_cursor_inputBuilder> {
  Garticles_stream_cursor_input._();

  factory Garticles_stream_cursor_input(
          [Function(Garticles_stream_cursor_inputBuilder b) updates]) =
      _$Garticles_stream_cursor_input;

  Garticles_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<Garticles_stream_cursor_input> get serializer =>
      _$garticlesStreamCursorInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Garticles_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Garticles_stream_cursor_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Garticles_stream_cursor_input.serializer,
        json,
      );
}

abstract class Garticles_stream_cursor_value_input
    implements
        Built<Garticles_stream_cursor_value_input,
            Garticles_stream_cursor_value_inputBuilder> {
  Garticles_stream_cursor_value_input._();

  factory Garticles_stream_cursor_value_input(
          [Function(Garticles_stream_cursor_value_inputBuilder b) updates]) =
      _$Garticles_stream_cursor_value_input;

  Gtimestamptz? get created_at;
  Guuid? get created_by;
  Gtimestamptz? get deleted_at;
  String? get favicon;
  Guuid? get id;
  _i2.JsonObject? get sentences;
  String? get thumbnail;
  String? get title;
  Gtimestamptz? get updated_at;
  Guuid? get updated_by;
  String? get url;
  static Serializer<Garticles_stream_cursor_value_input> get serializer =>
      _$garticlesStreamCursorValueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Garticles_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Garticles_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Garticles_stream_cursor_value_input.serializer,
        json,
      );
}

class Garticles_update_column extends EnumClass {
  const Garticles_update_column._(String name) : super(name);

  static const Garticles_update_column created_at =
      _$garticlesUpdateColumncreated_at;

  static const Garticles_update_column created_by =
      _$garticlesUpdateColumncreated_by;

  static const Garticles_update_column deleted_at =
      _$garticlesUpdateColumndeleted_at;

  static const Garticles_update_column favicon = _$garticlesUpdateColumnfavicon;

  static const Garticles_update_column id = _$garticlesUpdateColumnid;

  static const Garticles_update_column sentences =
      _$garticlesUpdateColumnsentences;

  static const Garticles_update_column thumbnail =
      _$garticlesUpdateColumnthumbnail;

  static const Garticles_update_column title = _$garticlesUpdateColumntitle;

  static const Garticles_update_column updated_at =
      _$garticlesUpdateColumnupdated_at;

  static const Garticles_update_column updated_by =
      _$garticlesUpdateColumnupdated_by;

  static const Garticles_update_column url = _$garticlesUpdateColumnurl;

  static Serializer<Garticles_update_column> get serializer =>
      _$garticlesUpdateColumnSerializer;
  static BuiltSet<Garticles_update_column> get values =>
      _$garticlesUpdateColumnValues;
  static Garticles_update_column valueOf(String name) =>
      _$garticlesUpdateColumnValueOf(name);
}

abstract class Garticles_updates
    implements Built<Garticles_updates, Garticles_updatesBuilder> {
  Garticles_updates._();

  factory Garticles_updates([Function(Garticles_updatesBuilder b) updates]) =
      _$Garticles_updates;

  @BuiltValueField(wireName: '_append')
  Garticles_append_input? get G_append;
  @BuiltValueField(wireName: '_delete_at_path')
  Garticles_delete_at_path_input? get G_delete_at_path;
  @BuiltValueField(wireName: '_delete_elem')
  Garticles_delete_elem_input? get G_delete_elem;
  @BuiltValueField(wireName: '_delete_key')
  Garticles_delete_key_input? get G_delete_key;
  @BuiltValueField(wireName: '_prepend')
  Garticles_prepend_input? get G_prepend;
  @BuiltValueField(wireName: '_set')
  Garticles_set_input? get G_set;
  Garticles_bool_exp get where;
  static Serializer<Garticles_updates> get serializer =>
      _$garticlesUpdatesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Garticles_updates.serializer,
        this,
      ) as Map<String, dynamic>);
  static Garticles_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Garticles_updates.serializer,
        json,
      );
}

abstract class GauthProviderRequests_append_input
    implements
        Built<GauthProviderRequests_append_input,
            GauthProviderRequests_append_inputBuilder> {
  GauthProviderRequests_append_input._();

  factory GauthProviderRequests_append_input(
          [Function(GauthProviderRequests_append_inputBuilder b) updates]) =
      _$GauthProviderRequests_append_input;

  _i2.JsonObject? get options;
  static Serializer<GauthProviderRequests_append_input> get serializer =>
      _$gauthProviderRequestsAppendInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviderRequests_append_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviderRequests_append_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviderRequests_append_input.serializer,
        json,
      );
}

abstract class GauthProviderRequests_bool_exp
    implements
        Built<GauthProviderRequests_bool_exp,
            GauthProviderRequests_bool_expBuilder> {
  GauthProviderRequests_bool_exp._();

  factory GauthProviderRequests_bool_exp(
          [Function(GauthProviderRequests_bool_expBuilder b) updates]) =
      _$GauthProviderRequests_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GauthProviderRequests_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GauthProviderRequests_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GauthProviderRequests_bool_exp>? get G_or;
  Guuid_comparison_exp? get id;
  Gjsonb_comparison_exp? get options;
  static Serializer<GauthProviderRequests_bool_exp> get serializer =>
      _$gauthProviderRequestsBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviderRequests_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviderRequests_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviderRequests_bool_exp.serializer,
        json,
      );
}

class GauthProviderRequests_constraint extends EnumClass {
  const GauthProviderRequests_constraint._(String name) : super(name);

  static const GauthProviderRequests_constraint provider_requests_pkey =
      _$gauthProviderRequestsConstraintprovider_requests_pkey;

  static Serializer<GauthProviderRequests_constraint> get serializer =>
      _$gauthProviderRequestsConstraintSerializer;
  static BuiltSet<GauthProviderRequests_constraint> get values =>
      _$gauthProviderRequestsConstraintValues;
  static GauthProviderRequests_constraint valueOf(String name) =>
      _$gauthProviderRequestsConstraintValueOf(name);
}

abstract class GauthProviderRequests_delete_at_path_input
    implements
        Built<GauthProviderRequests_delete_at_path_input,
            GauthProviderRequests_delete_at_path_inputBuilder> {
  GauthProviderRequests_delete_at_path_input._();

  factory GauthProviderRequests_delete_at_path_input(
      [Function(GauthProviderRequests_delete_at_path_inputBuilder b)
          updates]) = _$GauthProviderRequests_delete_at_path_input;

  BuiltList<String>? get options;
  static Serializer<GauthProviderRequests_delete_at_path_input>
      get serializer => _$gauthProviderRequestsDeleteAtPathInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviderRequests_delete_at_path_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviderRequests_delete_at_path_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviderRequests_delete_at_path_input.serializer,
        json,
      );
}

abstract class GauthProviderRequests_delete_elem_input
    implements
        Built<GauthProviderRequests_delete_elem_input,
            GauthProviderRequests_delete_elem_inputBuilder> {
  GauthProviderRequests_delete_elem_input._();

  factory GauthProviderRequests_delete_elem_input(
      [Function(GauthProviderRequests_delete_elem_inputBuilder b)
          updates]) = _$GauthProviderRequests_delete_elem_input;

  int? get options;
  static Serializer<GauthProviderRequests_delete_elem_input> get serializer =>
      _$gauthProviderRequestsDeleteElemInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviderRequests_delete_elem_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviderRequests_delete_elem_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviderRequests_delete_elem_input.serializer,
        json,
      );
}

abstract class GauthProviderRequests_delete_key_input
    implements
        Built<GauthProviderRequests_delete_key_input,
            GauthProviderRequests_delete_key_inputBuilder> {
  GauthProviderRequests_delete_key_input._();

  factory GauthProviderRequests_delete_key_input(
          [Function(GauthProviderRequests_delete_key_inputBuilder b) updates]) =
      _$GauthProviderRequests_delete_key_input;

  String? get options;
  static Serializer<GauthProviderRequests_delete_key_input> get serializer =>
      _$gauthProviderRequestsDeleteKeyInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviderRequests_delete_key_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviderRequests_delete_key_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviderRequests_delete_key_input.serializer,
        json,
      );
}

abstract class GauthProviderRequests_insert_input
    implements
        Built<GauthProviderRequests_insert_input,
            GauthProviderRequests_insert_inputBuilder> {
  GauthProviderRequests_insert_input._();

  factory GauthProviderRequests_insert_input(
          [Function(GauthProviderRequests_insert_inputBuilder b) updates]) =
      _$GauthProviderRequests_insert_input;

  Guuid? get id;
  _i2.JsonObject? get options;
  static Serializer<GauthProviderRequests_insert_input> get serializer =>
      _$gauthProviderRequestsInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviderRequests_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviderRequests_insert_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviderRequests_insert_input.serializer,
        json,
      );
}

abstract class GauthProviderRequests_on_conflict
    implements
        Built<GauthProviderRequests_on_conflict,
            GauthProviderRequests_on_conflictBuilder> {
  GauthProviderRequests_on_conflict._();

  factory GauthProviderRequests_on_conflict(
          [Function(GauthProviderRequests_on_conflictBuilder b) updates]) =
      _$GauthProviderRequests_on_conflict;

  GauthProviderRequests_constraint get constraint;
  BuiltList<GauthProviderRequests_update_column> get update_columns;
  GauthProviderRequests_bool_exp? get where;
  static Serializer<GauthProviderRequests_on_conflict> get serializer =>
      _$gauthProviderRequestsOnConflictSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviderRequests_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviderRequests_on_conflict? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviderRequests_on_conflict.serializer,
        json,
      );
}

abstract class GauthProviderRequests_order_by
    implements
        Built<GauthProviderRequests_order_by,
            GauthProviderRequests_order_byBuilder> {
  GauthProviderRequests_order_by._();

  factory GauthProviderRequests_order_by(
          [Function(GauthProviderRequests_order_byBuilder b) updates]) =
      _$GauthProviderRequests_order_by;

  Gorder_by? get id;
  Gorder_by? get options;
  static Serializer<GauthProviderRequests_order_by> get serializer =>
      _$gauthProviderRequestsOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviderRequests_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviderRequests_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviderRequests_order_by.serializer,
        json,
      );
}

abstract class GauthProviderRequests_pk_columns_input
    implements
        Built<GauthProviderRequests_pk_columns_input,
            GauthProviderRequests_pk_columns_inputBuilder> {
  GauthProviderRequests_pk_columns_input._();

  factory GauthProviderRequests_pk_columns_input(
          [Function(GauthProviderRequests_pk_columns_inputBuilder b) updates]) =
      _$GauthProviderRequests_pk_columns_input;

  Guuid get id;
  static Serializer<GauthProviderRequests_pk_columns_input> get serializer =>
      _$gauthProviderRequestsPkColumnsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviderRequests_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviderRequests_pk_columns_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviderRequests_pk_columns_input.serializer,
        json,
      );
}

abstract class GauthProviderRequests_prepend_input
    implements
        Built<GauthProviderRequests_prepend_input,
            GauthProviderRequests_prepend_inputBuilder> {
  GauthProviderRequests_prepend_input._();

  factory GauthProviderRequests_prepend_input(
          [Function(GauthProviderRequests_prepend_inputBuilder b) updates]) =
      _$GauthProviderRequests_prepend_input;

  _i2.JsonObject? get options;
  static Serializer<GauthProviderRequests_prepend_input> get serializer =>
      _$gauthProviderRequestsPrependInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviderRequests_prepend_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviderRequests_prepend_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviderRequests_prepend_input.serializer,
        json,
      );
}

class GauthProviderRequests_select_column extends EnumClass {
  const GauthProviderRequests_select_column._(String name) : super(name);

  static const GauthProviderRequests_select_column id =
      _$gauthProviderRequestsSelectColumnid;

  static const GauthProviderRequests_select_column options =
      _$gauthProviderRequestsSelectColumnoptions;

  static Serializer<GauthProviderRequests_select_column> get serializer =>
      _$gauthProviderRequestsSelectColumnSerializer;
  static BuiltSet<GauthProviderRequests_select_column> get values =>
      _$gauthProviderRequestsSelectColumnValues;
  static GauthProviderRequests_select_column valueOf(String name) =>
      _$gauthProviderRequestsSelectColumnValueOf(name);
}

abstract class GauthProviderRequests_set_input
    implements
        Built<GauthProviderRequests_set_input,
            GauthProviderRequests_set_inputBuilder> {
  GauthProviderRequests_set_input._();

  factory GauthProviderRequests_set_input(
          [Function(GauthProviderRequests_set_inputBuilder b) updates]) =
      _$GauthProviderRequests_set_input;

  Guuid? get id;
  _i2.JsonObject? get options;
  static Serializer<GauthProviderRequests_set_input> get serializer =>
      _$gauthProviderRequestsSetInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviderRequests_set_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviderRequests_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviderRequests_set_input.serializer,
        json,
      );
}

abstract class GauthProviderRequests_stream_cursor_input
    implements
        Built<GauthProviderRequests_stream_cursor_input,
            GauthProviderRequests_stream_cursor_inputBuilder> {
  GauthProviderRequests_stream_cursor_input._();

  factory GauthProviderRequests_stream_cursor_input(
      [Function(GauthProviderRequests_stream_cursor_inputBuilder b)
          updates]) = _$GauthProviderRequests_stream_cursor_input;

  GauthProviderRequests_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<GauthProviderRequests_stream_cursor_input> get serializer =>
      _$gauthProviderRequestsStreamCursorInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviderRequests_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviderRequests_stream_cursor_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviderRequests_stream_cursor_input.serializer,
        json,
      );
}

abstract class GauthProviderRequests_stream_cursor_value_input
    implements
        Built<GauthProviderRequests_stream_cursor_value_input,
            GauthProviderRequests_stream_cursor_value_inputBuilder> {
  GauthProviderRequests_stream_cursor_value_input._();

  factory GauthProviderRequests_stream_cursor_value_input(
      [Function(GauthProviderRequests_stream_cursor_value_inputBuilder b)
          updates]) = _$GauthProviderRequests_stream_cursor_value_input;

  Guuid? get id;
  _i2.JsonObject? get options;
  static Serializer<GauthProviderRequests_stream_cursor_value_input>
      get serializer => _$gauthProviderRequestsStreamCursorValueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviderRequests_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviderRequests_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviderRequests_stream_cursor_value_input.serializer,
        json,
      );
}

class GauthProviderRequests_update_column extends EnumClass {
  const GauthProviderRequests_update_column._(String name) : super(name);

  static const GauthProviderRequests_update_column id =
      _$gauthProviderRequestsUpdateColumnid;

  static const GauthProviderRequests_update_column options =
      _$gauthProviderRequestsUpdateColumnoptions;

  static Serializer<GauthProviderRequests_update_column> get serializer =>
      _$gauthProviderRequestsUpdateColumnSerializer;
  static BuiltSet<GauthProviderRequests_update_column> get values =>
      _$gauthProviderRequestsUpdateColumnValues;
  static GauthProviderRequests_update_column valueOf(String name) =>
      _$gauthProviderRequestsUpdateColumnValueOf(name);
}

abstract class GauthProviderRequests_updates
    implements
        Built<GauthProviderRequests_updates,
            GauthProviderRequests_updatesBuilder> {
  GauthProviderRequests_updates._();

  factory GauthProviderRequests_updates(
          [Function(GauthProviderRequests_updatesBuilder b) updates]) =
      _$GauthProviderRequests_updates;

  @BuiltValueField(wireName: '_append')
  GauthProviderRequests_append_input? get G_append;
  @BuiltValueField(wireName: '_delete_at_path')
  GauthProviderRequests_delete_at_path_input? get G_delete_at_path;
  @BuiltValueField(wireName: '_delete_elem')
  GauthProviderRequests_delete_elem_input? get G_delete_elem;
  @BuiltValueField(wireName: '_delete_key')
  GauthProviderRequests_delete_key_input? get G_delete_key;
  @BuiltValueField(wireName: '_prepend')
  GauthProviderRequests_prepend_input? get G_prepend;
  @BuiltValueField(wireName: '_set')
  GauthProviderRequests_set_input? get G_set;
  GauthProviderRequests_bool_exp get where;
  static Serializer<GauthProviderRequests_updates> get serializer =>
      _$gauthProviderRequestsUpdatesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviderRequests_updates.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviderRequests_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviderRequests_updates.serializer,
        json,
      );
}

abstract class GauthProviders_bool_exp
    implements Built<GauthProviders_bool_exp, GauthProviders_bool_expBuilder> {
  GauthProviders_bool_exp._();

  factory GauthProviders_bool_exp(
          [Function(GauthProviders_bool_expBuilder b) updates]) =
      _$GauthProviders_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GauthProviders_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GauthProviders_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GauthProviders_bool_exp>? get G_or;
  GString_comparison_exp? get id;
  GauthUserProviders_bool_exp? get userProviders;
  GauthUserProviders_aggregate_bool_exp? get userProviders_aggregate;
  static Serializer<GauthProviders_bool_exp> get serializer =>
      _$gauthProvidersBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviders_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviders_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviders_bool_exp.serializer,
        json,
      );
}

class GauthProviders_constraint extends EnumClass {
  const GauthProviders_constraint._(String name) : super(name);

  static const GauthProviders_constraint providers_pkey =
      _$gauthProvidersConstraintproviders_pkey;

  static Serializer<GauthProviders_constraint> get serializer =>
      _$gauthProvidersConstraintSerializer;
  static BuiltSet<GauthProviders_constraint> get values =>
      _$gauthProvidersConstraintValues;
  static GauthProviders_constraint valueOf(String name) =>
      _$gauthProvidersConstraintValueOf(name);
}

abstract class GauthProviders_insert_input
    implements
        Built<GauthProviders_insert_input, GauthProviders_insert_inputBuilder> {
  GauthProviders_insert_input._();

  factory GauthProviders_insert_input(
          [Function(GauthProviders_insert_inputBuilder b) updates]) =
      _$GauthProviders_insert_input;

  String? get id;
  GauthUserProviders_arr_rel_insert_input? get userProviders;
  static Serializer<GauthProviders_insert_input> get serializer =>
      _$gauthProvidersInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviders_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviders_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviders_insert_input.serializer,
        json,
      );
}

abstract class GauthProviders_obj_rel_insert_input
    implements
        Built<GauthProviders_obj_rel_insert_input,
            GauthProviders_obj_rel_insert_inputBuilder> {
  GauthProviders_obj_rel_insert_input._();

  factory GauthProviders_obj_rel_insert_input(
          [Function(GauthProviders_obj_rel_insert_inputBuilder b) updates]) =
      _$GauthProviders_obj_rel_insert_input;

  GauthProviders_insert_input get data;
  GauthProviders_on_conflict? get on_conflict;
  static Serializer<GauthProviders_obj_rel_insert_input> get serializer =>
      _$gauthProvidersObjRelInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviders_obj_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviders_obj_rel_insert_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviders_obj_rel_insert_input.serializer,
        json,
      );
}

abstract class GauthProviders_on_conflict
    implements
        Built<GauthProviders_on_conflict, GauthProviders_on_conflictBuilder> {
  GauthProviders_on_conflict._();

  factory GauthProviders_on_conflict(
          [Function(GauthProviders_on_conflictBuilder b) updates]) =
      _$GauthProviders_on_conflict;

  GauthProviders_constraint get constraint;
  BuiltList<GauthProviders_update_column> get update_columns;
  GauthProviders_bool_exp? get where;
  static Serializer<GauthProviders_on_conflict> get serializer =>
      _$gauthProvidersOnConflictSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviders_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviders_on_conflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviders_on_conflict.serializer,
        json,
      );
}

abstract class GauthProviders_order_by
    implements Built<GauthProviders_order_by, GauthProviders_order_byBuilder> {
  GauthProviders_order_by._();

  factory GauthProviders_order_by(
          [Function(GauthProviders_order_byBuilder b) updates]) =
      _$GauthProviders_order_by;

  Gorder_by? get id;
  GauthUserProviders_aggregate_order_by? get userProviders_aggregate;
  static Serializer<GauthProviders_order_by> get serializer =>
      _$gauthProvidersOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviders_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviders_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviders_order_by.serializer,
        json,
      );
}

abstract class GauthProviders_pk_columns_input
    implements
        Built<GauthProviders_pk_columns_input,
            GauthProviders_pk_columns_inputBuilder> {
  GauthProviders_pk_columns_input._();

  factory GauthProviders_pk_columns_input(
          [Function(GauthProviders_pk_columns_inputBuilder b) updates]) =
      _$GauthProviders_pk_columns_input;

  String get id;
  static Serializer<GauthProviders_pk_columns_input> get serializer =>
      _$gauthProvidersPkColumnsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviders_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviders_pk_columns_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviders_pk_columns_input.serializer,
        json,
      );
}

class GauthProviders_select_column extends EnumClass {
  const GauthProviders_select_column._(String name) : super(name);

  static const GauthProviders_select_column id = _$gauthProvidersSelectColumnid;

  static Serializer<GauthProviders_select_column> get serializer =>
      _$gauthProvidersSelectColumnSerializer;
  static BuiltSet<GauthProviders_select_column> get values =>
      _$gauthProvidersSelectColumnValues;
  static GauthProviders_select_column valueOf(String name) =>
      _$gauthProvidersSelectColumnValueOf(name);
}

abstract class GauthProviders_set_input
    implements
        Built<GauthProviders_set_input, GauthProviders_set_inputBuilder> {
  GauthProviders_set_input._();

  factory GauthProviders_set_input(
          [Function(GauthProviders_set_inputBuilder b) updates]) =
      _$GauthProviders_set_input;

  String? get id;
  static Serializer<GauthProviders_set_input> get serializer =>
      _$gauthProvidersSetInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviders_set_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviders_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviders_set_input.serializer,
        json,
      );
}

abstract class GauthProviders_stream_cursor_input
    implements
        Built<GauthProviders_stream_cursor_input,
            GauthProviders_stream_cursor_inputBuilder> {
  GauthProviders_stream_cursor_input._();

  factory GauthProviders_stream_cursor_input(
          [Function(GauthProviders_stream_cursor_inputBuilder b) updates]) =
      _$GauthProviders_stream_cursor_input;

  GauthProviders_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<GauthProviders_stream_cursor_input> get serializer =>
      _$gauthProvidersStreamCursorInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviders_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviders_stream_cursor_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviders_stream_cursor_input.serializer,
        json,
      );
}

abstract class GauthProviders_stream_cursor_value_input
    implements
        Built<GauthProviders_stream_cursor_value_input,
            GauthProviders_stream_cursor_value_inputBuilder> {
  GauthProviders_stream_cursor_value_input._();

  factory GauthProviders_stream_cursor_value_input(
      [Function(GauthProviders_stream_cursor_value_inputBuilder b)
          updates]) = _$GauthProviders_stream_cursor_value_input;

  String? get id;
  static Serializer<GauthProviders_stream_cursor_value_input> get serializer =>
      _$gauthProvidersStreamCursorValueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviders_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviders_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviders_stream_cursor_value_input.serializer,
        json,
      );
}

class GauthProviders_update_column extends EnumClass {
  const GauthProviders_update_column._(String name) : super(name);

  static const GauthProviders_update_column id = _$gauthProvidersUpdateColumnid;

  static Serializer<GauthProviders_update_column> get serializer =>
      _$gauthProvidersUpdateColumnSerializer;
  static BuiltSet<GauthProviders_update_column> get values =>
      _$gauthProvidersUpdateColumnValues;
  static GauthProviders_update_column valueOf(String name) =>
      _$gauthProvidersUpdateColumnValueOf(name);
}

abstract class GauthProviders_updates
    implements Built<GauthProviders_updates, GauthProviders_updatesBuilder> {
  GauthProviders_updates._();

  factory GauthProviders_updates(
          [Function(GauthProviders_updatesBuilder b) updates]) =
      _$GauthProviders_updates;

  @BuiltValueField(wireName: '_set')
  GauthProviders_set_input? get G_set;
  GauthProviders_bool_exp get where;
  static Serializer<GauthProviders_updates> get serializer =>
      _$gauthProvidersUpdatesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthProviders_updates.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthProviders_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthProviders_updates.serializer,
        json,
      );
}

abstract class GauthRefreshTokens_aggregate_bool_exp
    implements
        Built<GauthRefreshTokens_aggregate_bool_exp,
            GauthRefreshTokens_aggregate_bool_expBuilder> {
  GauthRefreshTokens_aggregate_bool_exp._();

  factory GauthRefreshTokens_aggregate_bool_exp(
          [Function(GauthRefreshTokens_aggregate_bool_expBuilder b) updates]) =
      _$GauthRefreshTokens_aggregate_bool_exp;

  GauthRefreshTokens_aggregate_bool_exp_count? get count;
  static Serializer<GauthRefreshTokens_aggregate_bool_exp> get serializer =>
      _$gauthRefreshTokensAggregateBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRefreshTokens_aggregate_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRefreshTokens_aggregate_bool_exp? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRefreshTokens_aggregate_bool_exp.serializer,
        json,
      );
}

abstract class GauthRefreshTokens_aggregate_bool_exp_count
    implements
        Built<GauthRefreshTokens_aggregate_bool_exp_count,
            GauthRefreshTokens_aggregate_bool_exp_countBuilder> {
  GauthRefreshTokens_aggregate_bool_exp_count._();

  factory GauthRefreshTokens_aggregate_bool_exp_count(
      [Function(GauthRefreshTokens_aggregate_bool_exp_countBuilder b)
          updates]) = _$GauthRefreshTokens_aggregate_bool_exp_count;

  BuiltList<GauthRefreshTokens_select_column>? get arguments;
  bool? get distinct;
  GauthRefreshTokens_bool_exp? get filter;
  GInt_comparison_exp get predicate;
  static Serializer<GauthRefreshTokens_aggregate_bool_exp_count>
      get serializer => _$gauthRefreshTokensAggregateBoolExpCountSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRefreshTokens_aggregate_bool_exp_count.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRefreshTokens_aggregate_bool_exp_count? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRefreshTokens_aggregate_bool_exp_count.serializer,
        json,
      );
}

abstract class GauthRefreshTokens_aggregate_order_by
    implements
        Built<GauthRefreshTokens_aggregate_order_by,
            GauthRefreshTokens_aggregate_order_byBuilder> {
  GauthRefreshTokens_aggregate_order_by._();

  factory GauthRefreshTokens_aggregate_order_by(
          [Function(GauthRefreshTokens_aggregate_order_byBuilder b) updates]) =
      _$GauthRefreshTokens_aggregate_order_by;

  Gorder_by? get count;
  GauthRefreshTokens_max_order_by? get max;
  GauthRefreshTokens_min_order_by? get min;
  static Serializer<GauthRefreshTokens_aggregate_order_by> get serializer =>
      _$gauthRefreshTokensAggregateOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRefreshTokens_aggregate_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRefreshTokens_aggregate_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRefreshTokens_aggregate_order_by.serializer,
        json,
      );
}

abstract class GauthRefreshTokens_arr_rel_insert_input
    implements
        Built<GauthRefreshTokens_arr_rel_insert_input,
            GauthRefreshTokens_arr_rel_insert_inputBuilder> {
  GauthRefreshTokens_arr_rel_insert_input._();

  factory GauthRefreshTokens_arr_rel_insert_input(
      [Function(GauthRefreshTokens_arr_rel_insert_inputBuilder b)
          updates]) = _$GauthRefreshTokens_arr_rel_insert_input;

  BuiltList<GauthRefreshTokens_insert_input> get data;
  GauthRefreshTokens_on_conflict? get on_conflict;
  static Serializer<GauthRefreshTokens_arr_rel_insert_input> get serializer =>
      _$gauthRefreshTokensArrRelInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRefreshTokens_arr_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRefreshTokens_arr_rel_insert_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRefreshTokens_arr_rel_insert_input.serializer,
        json,
      );
}

abstract class GauthRefreshTokens_bool_exp
    implements
        Built<GauthRefreshTokens_bool_exp, GauthRefreshTokens_bool_expBuilder> {
  GauthRefreshTokens_bool_exp._();

  factory GauthRefreshTokens_bool_exp(
          [Function(GauthRefreshTokens_bool_expBuilder b) updates]) =
      _$GauthRefreshTokens_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GauthRefreshTokens_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GauthRefreshTokens_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GauthRefreshTokens_bool_exp>? get G_or;
  Gtimestamptz_comparison_exp? get createdAt;
  Gtimestamptz_comparison_exp? get expiresAt;
  Guuid_comparison_exp? get refreshToken;
  Gusers_bool_exp? get user;
  Guuid_comparison_exp? get userId;
  static Serializer<GauthRefreshTokens_bool_exp> get serializer =>
      _$gauthRefreshTokensBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRefreshTokens_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRefreshTokens_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRefreshTokens_bool_exp.serializer,
        json,
      );
}

class GauthRefreshTokens_constraint extends EnumClass {
  const GauthRefreshTokens_constraint._(String name) : super(name);

  static const GauthRefreshTokens_constraint refresh_tokens_pkey =
      _$gauthRefreshTokensConstraintrefresh_tokens_pkey;

  static Serializer<GauthRefreshTokens_constraint> get serializer =>
      _$gauthRefreshTokensConstraintSerializer;
  static BuiltSet<GauthRefreshTokens_constraint> get values =>
      _$gauthRefreshTokensConstraintValues;
  static GauthRefreshTokens_constraint valueOf(String name) =>
      _$gauthRefreshTokensConstraintValueOf(name);
}

abstract class GauthRefreshTokens_insert_input
    implements
        Built<GauthRefreshTokens_insert_input,
            GauthRefreshTokens_insert_inputBuilder> {
  GauthRefreshTokens_insert_input._();

  factory GauthRefreshTokens_insert_input(
          [Function(GauthRefreshTokens_insert_inputBuilder b) updates]) =
      _$GauthRefreshTokens_insert_input;

  Gtimestamptz? get createdAt;
  Gtimestamptz? get expiresAt;
  Guuid? get refreshToken;
  Gusers_obj_rel_insert_input? get user;
  Guuid? get userId;
  static Serializer<GauthRefreshTokens_insert_input> get serializer =>
      _$gauthRefreshTokensInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRefreshTokens_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRefreshTokens_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRefreshTokens_insert_input.serializer,
        json,
      );
}

abstract class GauthRefreshTokens_max_order_by
    implements
        Built<GauthRefreshTokens_max_order_by,
            GauthRefreshTokens_max_order_byBuilder> {
  GauthRefreshTokens_max_order_by._();

  factory GauthRefreshTokens_max_order_by(
          [Function(GauthRefreshTokens_max_order_byBuilder b) updates]) =
      _$GauthRefreshTokens_max_order_by;

  Gorder_by? get createdAt;
  Gorder_by? get expiresAt;
  Gorder_by? get refreshToken;
  Gorder_by? get userId;
  static Serializer<GauthRefreshTokens_max_order_by> get serializer =>
      _$gauthRefreshTokensMaxOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRefreshTokens_max_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRefreshTokens_max_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRefreshTokens_max_order_by.serializer,
        json,
      );
}

abstract class GauthRefreshTokens_min_order_by
    implements
        Built<GauthRefreshTokens_min_order_by,
            GauthRefreshTokens_min_order_byBuilder> {
  GauthRefreshTokens_min_order_by._();

  factory GauthRefreshTokens_min_order_by(
          [Function(GauthRefreshTokens_min_order_byBuilder b) updates]) =
      _$GauthRefreshTokens_min_order_by;

  Gorder_by? get createdAt;
  Gorder_by? get expiresAt;
  Gorder_by? get refreshToken;
  Gorder_by? get userId;
  static Serializer<GauthRefreshTokens_min_order_by> get serializer =>
      _$gauthRefreshTokensMinOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRefreshTokens_min_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRefreshTokens_min_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRefreshTokens_min_order_by.serializer,
        json,
      );
}

abstract class GauthRefreshTokens_on_conflict
    implements
        Built<GauthRefreshTokens_on_conflict,
            GauthRefreshTokens_on_conflictBuilder> {
  GauthRefreshTokens_on_conflict._();

  factory GauthRefreshTokens_on_conflict(
          [Function(GauthRefreshTokens_on_conflictBuilder b) updates]) =
      _$GauthRefreshTokens_on_conflict;

  GauthRefreshTokens_constraint get constraint;
  BuiltList<GauthRefreshTokens_update_column> get update_columns;
  GauthRefreshTokens_bool_exp? get where;
  static Serializer<GauthRefreshTokens_on_conflict> get serializer =>
      _$gauthRefreshTokensOnConflictSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRefreshTokens_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRefreshTokens_on_conflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRefreshTokens_on_conflict.serializer,
        json,
      );
}

abstract class GauthRefreshTokens_order_by
    implements
        Built<GauthRefreshTokens_order_by, GauthRefreshTokens_order_byBuilder> {
  GauthRefreshTokens_order_by._();

  factory GauthRefreshTokens_order_by(
          [Function(GauthRefreshTokens_order_byBuilder b) updates]) =
      _$GauthRefreshTokens_order_by;

  Gorder_by? get createdAt;
  Gorder_by? get expiresAt;
  Gorder_by? get refreshToken;
  Gusers_order_by? get user;
  Gorder_by? get userId;
  static Serializer<GauthRefreshTokens_order_by> get serializer =>
      _$gauthRefreshTokensOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRefreshTokens_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRefreshTokens_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRefreshTokens_order_by.serializer,
        json,
      );
}

abstract class GauthRefreshTokens_pk_columns_input
    implements
        Built<GauthRefreshTokens_pk_columns_input,
            GauthRefreshTokens_pk_columns_inputBuilder> {
  GauthRefreshTokens_pk_columns_input._();

  factory GauthRefreshTokens_pk_columns_input(
          [Function(GauthRefreshTokens_pk_columns_inputBuilder b) updates]) =
      _$GauthRefreshTokens_pk_columns_input;

  Guuid get refreshToken;
  static Serializer<GauthRefreshTokens_pk_columns_input> get serializer =>
      _$gauthRefreshTokensPkColumnsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRefreshTokens_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRefreshTokens_pk_columns_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRefreshTokens_pk_columns_input.serializer,
        json,
      );
}

class GauthRefreshTokens_select_column extends EnumClass {
  const GauthRefreshTokens_select_column._(String name) : super(name);

  static const GauthRefreshTokens_select_column createdAt =
      _$gauthRefreshTokensSelectColumncreatedAt;

  static const GauthRefreshTokens_select_column expiresAt =
      _$gauthRefreshTokensSelectColumnexpiresAt;

  static const GauthRefreshTokens_select_column refreshToken =
      _$gauthRefreshTokensSelectColumnrefreshToken;

  static const GauthRefreshTokens_select_column userId =
      _$gauthRefreshTokensSelectColumnuserId;

  static Serializer<GauthRefreshTokens_select_column> get serializer =>
      _$gauthRefreshTokensSelectColumnSerializer;
  static BuiltSet<GauthRefreshTokens_select_column> get values =>
      _$gauthRefreshTokensSelectColumnValues;
  static GauthRefreshTokens_select_column valueOf(String name) =>
      _$gauthRefreshTokensSelectColumnValueOf(name);
}

abstract class GauthRefreshTokens_set_input
    implements
        Built<GauthRefreshTokens_set_input,
            GauthRefreshTokens_set_inputBuilder> {
  GauthRefreshTokens_set_input._();

  factory GauthRefreshTokens_set_input(
          [Function(GauthRefreshTokens_set_inputBuilder b) updates]) =
      _$GauthRefreshTokens_set_input;

  Gtimestamptz? get createdAt;
  Gtimestamptz? get expiresAt;
  Guuid? get refreshToken;
  Guuid? get userId;
  static Serializer<GauthRefreshTokens_set_input> get serializer =>
      _$gauthRefreshTokensSetInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRefreshTokens_set_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRefreshTokens_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRefreshTokens_set_input.serializer,
        json,
      );
}

abstract class GauthRefreshTokens_stream_cursor_input
    implements
        Built<GauthRefreshTokens_stream_cursor_input,
            GauthRefreshTokens_stream_cursor_inputBuilder> {
  GauthRefreshTokens_stream_cursor_input._();

  factory GauthRefreshTokens_stream_cursor_input(
          [Function(GauthRefreshTokens_stream_cursor_inputBuilder b) updates]) =
      _$GauthRefreshTokens_stream_cursor_input;

  GauthRefreshTokens_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<GauthRefreshTokens_stream_cursor_input> get serializer =>
      _$gauthRefreshTokensStreamCursorInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRefreshTokens_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRefreshTokens_stream_cursor_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRefreshTokens_stream_cursor_input.serializer,
        json,
      );
}

abstract class GauthRefreshTokens_stream_cursor_value_input
    implements
        Built<GauthRefreshTokens_stream_cursor_value_input,
            GauthRefreshTokens_stream_cursor_value_inputBuilder> {
  GauthRefreshTokens_stream_cursor_value_input._();

  factory GauthRefreshTokens_stream_cursor_value_input(
      [Function(GauthRefreshTokens_stream_cursor_value_inputBuilder b)
          updates]) = _$GauthRefreshTokens_stream_cursor_value_input;

  Gtimestamptz? get createdAt;
  Gtimestamptz? get expiresAt;
  Guuid? get refreshToken;
  Guuid? get userId;
  static Serializer<GauthRefreshTokens_stream_cursor_value_input>
      get serializer => _$gauthRefreshTokensStreamCursorValueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRefreshTokens_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRefreshTokens_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRefreshTokens_stream_cursor_value_input.serializer,
        json,
      );
}

class GauthRefreshTokens_update_column extends EnumClass {
  const GauthRefreshTokens_update_column._(String name) : super(name);

  static const GauthRefreshTokens_update_column createdAt =
      _$gauthRefreshTokensUpdateColumncreatedAt;

  static const GauthRefreshTokens_update_column expiresAt =
      _$gauthRefreshTokensUpdateColumnexpiresAt;

  static const GauthRefreshTokens_update_column refreshToken =
      _$gauthRefreshTokensUpdateColumnrefreshToken;

  static const GauthRefreshTokens_update_column userId =
      _$gauthRefreshTokensUpdateColumnuserId;

  static Serializer<GauthRefreshTokens_update_column> get serializer =>
      _$gauthRefreshTokensUpdateColumnSerializer;
  static BuiltSet<GauthRefreshTokens_update_column> get values =>
      _$gauthRefreshTokensUpdateColumnValues;
  static GauthRefreshTokens_update_column valueOf(String name) =>
      _$gauthRefreshTokensUpdateColumnValueOf(name);
}

abstract class GauthRefreshTokens_updates
    implements
        Built<GauthRefreshTokens_updates, GauthRefreshTokens_updatesBuilder> {
  GauthRefreshTokens_updates._();

  factory GauthRefreshTokens_updates(
          [Function(GauthRefreshTokens_updatesBuilder b) updates]) =
      _$GauthRefreshTokens_updates;

  @BuiltValueField(wireName: '_set')
  GauthRefreshTokens_set_input? get G_set;
  GauthRefreshTokens_bool_exp get where;
  static Serializer<GauthRefreshTokens_updates> get serializer =>
      _$gauthRefreshTokensUpdatesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRefreshTokens_updates.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRefreshTokens_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRefreshTokens_updates.serializer,
        json,
      );
}

abstract class GauthRoles_bool_exp
    implements Built<GauthRoles_bool_exp, GauthRoles_bool_expBuilder> {
  GauthRoles_bool_exp._();

  factory GauthRoles_bool_exp(
      [Function(GauthRoles_bool_expBuilder b) updates]) = _$GauthRoles_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GauthRoles_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GauthRoles_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GauthRoles_bool_exp>? get G_or;
  GString_comparison_exp? get role;
  GauthUserRoles_bool_exp? get userRoles;
  GauthUserRoles_aggregate_bool_exp? get userRoles_aggregate;
  Gusers_bool_exp? get usersByDefaultRole;
  Gusers_aggregate_bool_exp? get usersByDefaultRole_aggregate;
  static Serializer<GauthRoles_bool_exp> get serializer =>
      _$gauthRolesBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRoles_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRoles_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRoles_bool_exp.serializer,
        json,
      );
}

class GauthRoles_constraint extends EnumClass {
  const GauthRoles_constraint._(String name) : super(name);

  static const GauthRoles_constraint roles_pkey =
      _$gauthRolesConstraintroles_pkey;

  static Serializer<GauthRoles_constraint> get serializer =>
      _$gauthRolesConstraintSerializer;
  static BuiltSet<GauthRoles_constraint> get values =>
      _$gauthRolesConstraintValues;
  static GauthRoles_constraint valueOf(String name) =>
      _$gauthRolesConstraintValueOf(name);
}

abstract class GauthRoles_insert_input
    implements Built<GauthRoles_insert_input, GauthRoles_insert_inputBuilder> {
  GauthRoles_insert_input._();

  factory GauthRoles_insert_input(
          [Function(GauthRoles_insert_inputBuilder b) updates]) =
      _$GauthRoles_insert_input;

  String? get role;
  GauthUserRoles_arr_rel_insert_input? get userRoles;
  Gusers_arr_rel_insert_input? get usersByDefaultRole;
  static Serializer<GauthRoles_insert_input> get serializer =>
      _$gauthRolesInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRoles_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRoles_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRoles_insert_input.serializer,
        json,
      );
}

abstract class GauthRoles_obj_rel_insert_input
    implements
        Built<GauthRoles_obj_rel_insert_input,
            GauthRoles_obj_rel_insert_inputBuilder> {
  GauthRoles_obj_rel_insert_input._();

  factory GauthRoles_obj_rel_insert_input(
          [Function(GauthRoles_obj_rel_insert_inputBuilder b) updates]) =
      _$GauthRoles_obj_rel_insert_input;

  GauthRoles_insert_input get data;
  GauthRoles_on_conflict? get on_conflict;
  static Serializer<GauthRoles_obj_rel_insert_input> get serializer =>
      _$gauthRolesObjRelInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRoles_obj_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRoles_obj_rel_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRoles_obj_rel_insert_input.serializer,
        json,
      );
}

abstract class GauthRoles_on_conflict
    implements Built<GauthRoles_on_conflict, GauthRoles_on_conflictBuilder> {
  GauthRoles_on_conflict._();

  factory GauthRoles_on_conflict(
          [Function(GauthRoles_on_conflictBuilder b) updates]) =
      _$GauthRoles_on_conflict;

  GauthRoles_constraint get constraint;
  BuiltList<GauthRoles_update_column> get update_columns;
  GauthRoles_bool_exp? get where;
  static Serializer<GauthRoles_on_conflict> get serializer =>
      _$gauthRolesOnConflictSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRoles_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRoles_on_conflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRoles_on_conflict.serializer,
        json,
      );
}

abstract class GauthRoles_order_by
    implements Built<GauthRoles_order_by, GauthRoles_order_byBuilder> {
  GauthRoles_order_by._();

  factory GauthRoles_order_by(
      [Function(GauthRoles_order_byBuilder b) updates]) = _$GauthRoles_order_by;

  Gorder_by? get role;
  GauthUserRoles_aggregate_order_by? get userRoles_aggregate;
  Gusers_aggregate_order_by? get usersByDefaultRole_aggregate;
  static Serializer<GauthRoles_order_by> get serializer =>
      _$gauthRolesOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRoles_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRoles_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRoles_order_by.serializer,
        json,
      );
}

abstract class GauthRoles_pk_columns_input
    implements
        Built<GauthRoles_pk_columns_input, GauthRoles_pk_columns_inputBuilder> {
  GauthRoles_pk_columns_input._();

  factory GauthRoles_pk_columns_input(
          [Function(GauthRoles_pk_columns_inputBuilder b) updates]) =
      _$GauthRoles_pk_columns_input;

  String get role;
  static Serializer<GauthRoles_pk_columns_input> get serializer =>
      _$gauthRolesPkColumnsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRoles_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRoles_pk_columns_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRoles_pk_columns_input.serializer,
        json,
      );
}

class GauthRoles_select_column extends EnumClass {
  const GauthRoles_select_column._(String name) : super(name);

  static const GauthRoles_select_column role = _$gauthRolesSelectColumnrole;

  static Serializer<GauthRoles_select_column> get serializer =>
      _$gauthRolesSelectColumnSerializer;
  static BuiltSet<GauthRoles_select_column> get values =>
      _$gauthRolesSelectColumnValues;
  static GauthRoles_select_column valueOf(String name) =>
      _$gauthRolesSelectColumnValueOf(name);
}

abstract class GauthRoles_set_input
    implements Built<GauthRoles_set_input, GauthRoles_set_inputBuilder> {
  GauthRoles_set_input._();

  factory GauthRoles_set_input(
          [Function(GauthRoles_set_inputBuilder b) updates]) =
      _$GauthRoles_set_input;

  String? get role;
  static Serializer<GauthRoles_set_input> get serializer =>
      _$gauthRolesSetInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRoles_set_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRoles_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRoles_set_input.serializer,
        json,
      );
}

abstract class GauthRoles_stream_cursor_input
    implements
        Built<GauthRoles_stream_cursor_input,
            GauthRoles_stream_cursor_inputBuilder> {
  GauthRoles_stream_cursor_input._();

  factory GauthRoles_stream_cursor_input(
          [Function(GauthRoles_stream_cursor_inputBuilder b) updates]) =
      _$GauthRoles_stream_cursor_input;

  GauthRoles_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<GauthRoles_stream_cursor_input> get serializer =>
      _$gauthRolesStreamCursorInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRoles_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRoles_stream_cursor_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRoles_stream_cursor_input.serializer,
        json,
      );
}

abstract class GauthRoles_stream_cursor_value_input
    implements
        Built<GauthRoles_stream_cursor_value_input,
            GauthRoles_stream_cursor_value_inputBuilder> {
  GauthRoles_stream_cursor_value_input._();

  factory GauthRoles_stream_cursor_value_input(
          [Function(GauthRoles_stream_cursor_value_inputBuilder b) updates]) =
      _$GauthRoles_stream_cursor_value_input;

  String? get role;
  static Serializer<GauthRoles_stream_cursor_value_input> get serializer =>
      _$gauthRolesStreamCursorValueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRoles_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRoles_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRoles_stream_cursor_value_input.serializer,
        json,
      );
}

class GauthRoles_update_column extends EnumClass {
  const GauthRoles_update_column._(String name) : super(name);

  static const GauthRoles_update_column role = _$gauthRolesUpdateColumnrole;

  static Serializer<GauthRoles_update_column> get serializer =>
      _$gauthRolesUpdateColumnSerializer;
  static BuiltSet<GauthRoles_update_column> get values =>
      _$gauthRolesUpdateColumnValues;
  static GauthRoles_update_column valueOf(String name) =>
      _$gauthRolesUpdateColumnValueOf(name);
}

abstract class GauthRoles_updates
    implements Built<GauthRoles_updates, GauthRoles_updatesBuilder> {
  GauthRoles_updates._();

  factory GauthRoles_updates([Function(GauthRoles_updatesBuilder b) updates]) =
      _$GauthRoles_updates;

  @BuiltValueField(wireName: '_set')
  GauthRoles_set_input? get G_set;
  GauthRoles_bool_exp get where;
  static Serializer<GauthRoles_updates> get serializer =>
      _$gauthRolesUpdatesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthRoles_updates.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthRoles_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthRoles_updates.serializer,
        json,
      );
}

abstract class GauthUserProviders_aggregate_bool_exp
    implements
        Built<GauthUserProviders_aggregate_bool_exp,
            GauthUserProviders_aggregate_bool_expBuilder> {
  GauthUserProviders_aggregate_bool_exp._();

  factory GauthUserProviders_aggregate_bool_exp(
          [Function(GauthUserProviders_aggregate_bool_expBuilder b) updates]) =
      _$GauthUserProviders_aggregate_bool_exp;

  GauthUserProviders_aggregate_bool_exp_count? get count;
  static Serializer<GauthUserProviders_aggregate_bool_exp> get serializer =>
      _$gauthUserProvidersAggregateBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserProviders_aggregate_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserProviders_aggregate_bool_exp? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserProviders_aggregate_bool_exp.serializer,
        json,
      );
}

abstract class GauthUserProviders_aggregate_bool_exp_count
    implements
        Built<GauthUserProviders_aggregate_bool_exp_count,
            GauthUserProviders_aggregate_bool_exp_countBuilder> {
  GauthUserProviders_aggregate_bool_exp_count._();

  factory GauthUserProviders_aggregate_bool_exp_count(
      [Function(GauthUserProviders_aggregate_bool_exp_countBuilder b)
          updates]) = _$GauthUserProviders_aggregate_bool_exp_count;

  BuiltList<GauthUserProviders_select_column>? get arguments;
  bool? get distinct;
  GauthUserProviders_bool_exp? get filter;
  GInt_comparison_exp get predicate;
  static Serializer<GauthUserProviders_aggregate_bool_exp_count>
      get serializer => _$gauthUserProvidersAggregateBoolExpCountSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserProviders_aggregate_bool_exp_count.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserProviders_aggregate_bool_exp_count? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserProviders_aggregate_bool_exp_count.serializer,
        json,
      );
}

abstract class GauthUserProviders_aggregate_order_by
    implements
        Built<GauthUserProviders_aggregate_order_by,
            GauthUserProviders_aggregate_order_byBuilder> {
  GauthUserProviders_aggregate_order_by._();

  factory GauthUserProviders_aggregate_order_by(
          [Function(GauthUserProviders_aggregate_order_byBuilder b) updates]) =
      _$GauthUserProviders_aggregate_order_by;

  Gorder_by? get count;
  GauthUserProviders_max_order_by? get max;
  GauthUserProviders_min_order_by? get min;
  static Serializer<GauthUserProviders_aggregate_order_by> get serializer =>
      _$gauthUserProvidersAggregateOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserProviders_aggregate_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserProviders_aggregate_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserProviders_aggregate_order_by.serializer,
        json,
      );
}

abstract class GauthUserProviders_arr_rel_insert_input
    implements
        Built<GauthUserProviders_arr_rel_insert_input,
            GauthUserProviders_arr_rel_insert_inputBuilder> {
  GauthUserProviders_arr_rel_insert_input._();

  factory GauthUserProviders_arr_rel_insert_input(
      [Function(GauthUserProviders_arr_rel_insert_inputBuilder b)
          updates]) = _$GauthUserProviders_arr_rel_insert_input;

  BuiltList<GauthUserProviders_insert_input> get data;
  GauthUserProviders_on_conflict? get on_conflict;
  static Serializer<GauthUserProviders_arr_rel_insert_input> get serializer =>
      _$gauthUserProvidersArrRelInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserProviders_arr_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserProviders_arr_rel_insert_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserProviders_arr_rel_insert_input.serializer,
        json,
      );
}

abstract class GauthUserProviders_bool_exp
    implements
        Built<GauthUserProviders_bool_exp, GauthUserProviders_bool_expBuilder> {
  GauthUserProviders_bool_exp._();

  factory GauthUserProviders_bool_exp(
          [Function(GauthUserProviders_bool_expBuilder b) updates]) =
      _$GauthUserProviders_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GauthUserProviders_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GauthUserProviders_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GauthUserProviders_bool_exp>? get G_or;
  GString_comparison_exp? get accessToken;
  Gtimestamptz_comparison_exp? get createdAt;
  Guuid_comparison_exp? get id;
  GauthProviders_bool_exp? get provider;
  GString_comparison_exp? get providerId;
  GString_comparison_exp? get providerUserId;
  GString_comparison_exp? get refreshToken;
  Gtimestamptz_comparison_exp? get updatedAt;
  Gusers_bool_exp? get user;
  Guuid_comparison_exp? get userId;
  static Serializer<GauthUserProviders_bool_exp> get serializer =>
      _$gauthUserProvidersBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserProviders_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserProviders_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserProviders_bool_exp.serializer,
        json,
      );
}

class GauthUserProviders_constraint extends EnumClass {
  const GauthUserProviders_constraint._(String name) : super(name);

  static const GauthUserProviders_constraint user_providers_pkey =
      _$gauthUserProvidersConstraintuser_providers_pkey;

  static const GauthUserProviders_constraint
      user_providers_provider_id_provider_user_id_key =
      _$gauthUserProvidersConstraintuser_providers_provider_id_provider_user_id_key;

  static const GauthUserProviders_constraint
      user_providers_user_id_provider_id_key =
      _$gauthUserProvidersConstraintuser_providers_user_id_provider_id_key;

  static Serializer<GauthUserProviders_constraint> get serializer =>
      _$gauthUserProvidersConstraintSerializer;
  static BuiltSet<GauthUserProviders_constraint> get values =>
      _$gauthUserProvidersConstraintValues;
  static GauthUserProviders_constraint valueOf(String name) =>
      _$gauthUserProvidersConstraintValueOf(name);
}

abstract class GauthUserProviders_insert_input
    implements
        Built<GauthUserProviders_insert_input,
            GauthUserProviders_insert_inputBuilder> {
  GauthUserProviders_insert_input._();

  factory GauthUserProviders_insert_input(
          [Function(GauthUserProviders_insert_inputBuilder b) updates]) =
      _$GauthUserProviders_insert_input;

  String? get accessToken;
  Gtimestamptz? get createdAt;
  Guuid? get id;
  GauthProviders_obj_rel_insert_input? get provider;
  String? get providerId;
  String? get providerUserId;
  String? get refreshToken;
  Gtimestamptz? get updatedAt;
  Gusers_obj_rel_insert_input? get user;
  Guuid? get userId;
  static Serializer<GauthUserProviders_insert_input> get serializer =>
      _$gauthUserProvidersInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserProviders_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserProviders_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserProviders_insert_input.serializer,
        json,
      );
}

abstract class GauthUserProviders_max_order_by
    implements
        Built<GauthUserProviders_max_order_by,
            GauthUserProviders_max_order_byBuilder> {
  GauthUserProviders_max_order_by._();

  factory GauthUserProviders_max_order_by(
          [Function(GauthUserProviders_max_order_byBuilder b) updates]) =
      _$GauthUserProviders_max_order_by;

  Gorder_by? get accessToken;
  Gorder_by? get createdAt;
  Gorder_by? get id;
  Gorder_by? get providerId;
  Gorder_by? get providerUserId;
  Gorder_by? get refreshToken;
  Gorder_by? get updatedAt;
  Gorder_by? get userId;
  static Serializer<GauthUserProviders_max_order_by> get serializer =>
      _$gauthUserProvidersMaxOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserProviders_max_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserProviders_max_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserProviders_max_order_by.serializer,
        json,
      );
}

abstract class GauthUserProviders_min_order_by
    implements
        Built<GauthUserProviders_min_order_by,
            GauthUserProviders_min_order_byBuilder> {
  GauthUserProviders_min_order_by._();

  factory GauthUserProviders_min_order_by(
          [Function(GauthUserProviders_min_order_byBuilder b) updates]) =
      _$GauthUserProviders_min_order_by;

  Gorder_by? get accessToken;
  Gorder_by? get createdAt;
  Gorder_by? get id;
  Gorder_by? get providerId;
  Gorder_by? get providerUserId;
  Gorder_by? get refreshToken;
  Gorder_by? get updatedAt;
  Gorder_by? get userId;
  static Serializer<GauthUserProviders_min_order_by> get serializer =>
      _$gauthUserProvidersMinOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserProviders_min_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserProviders_min_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserProviders_min_order_by.serializer,
        json,
      );
}

abstract class GauthUserProviders_on_conflict
    implements
        Built<GauthUserProviders_on_conflict,
            GauthUserProviders_on_conflictBuilder> {
  GauthUserProviders_on_conflict._();

  factory GauthUserProviders_on_conflict(
          [Function(GauthUserProviders_on_conflictBuilder b) updates]) =
      _$GauthUserProviders_on_conflict;

  GauthUserProviders_constraint get constraint;
  BuiltList<GauthUserProviders_update_column> get update_columns;
  GauthUserProviders_bool_exp? get where;
  static Serializer<GauthUserProviders_on_conflict> get serializer =>
      _$gauthUserProvidersOnConflictSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserProviders_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserProviders_on_conflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserProviders_on_conflict.serializer,
        json,
      );
}

abstract class GauthUserProviders_order_by
    implements
        Built<GauthUserProviders_order_by, GauthUserProviders_order_byBuilder> {
  GauthUserProviders_order_by._();

  factory GauthUserProviders_order_by(
          [Function(GauthUserProviders_order_byBuilder b) updates]) =
      _$GauthUserProviders_order_by;

  Gorder_by? get accessToken;
  Gorder_by? get createdAt;
  Gorder_by? get id;
  GauthProviders_order_by? get provider;
  Gorder_by? get providerId;
  Gorder_by? get providerUserId;
  Gorder_by? get refreshToken;
  Gorder_by? get updatedAt;
  Gusers_order_by? get user;
  Gorder_by? get userId;
  static Serializer<GauthUserProviders_order_by> get serializer =>
      _$gauthUserProvidersOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserProviders_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserProviders_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserProviders_order_by.serializer,
        json,
      );
}

abstract class GauthUserProviders_pk_columns_input
    implements
        Built<GauthUserProviders_pk_columns_input,
            GauthUserProviders_pk_columns_inputBuilder> {
  GauthUserProviders_pk_columns_input._();

  factory GauthUserProviders_pk_columns_input(
          [Function(GauthUserProviders_pk_columns_inputBuilder b) updates]) =
      _$GauthUserProviders_pk_columns_input;

  Guuid get id;
  static Serializer<GauthUserProviders_pk_columns_input> get serializer =>
      _$gauthUserProvidersPkColumnsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserProviders_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserProviders_pk_columns_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserProviders_pk_columns_input.serializer,
        json,
      );
}

class GauthUserProviders_select_column extends EnumClass {
  const GauthUserProviders_select_column._(String name) : super(name);

  static const GauthUserProviders_select_column accessToken =
      _$gauthUserProvidersSelectColumnaccessToken;

  static const GauthUserProviders_select_column createdAt =
      _$gauthUserProvidersSelectColumncreatedAt;

  static const GauthUserProviders_select_column id =
      _$gauthUserProvidersSelectColumnid;

  static const GauthUserProviders_select_column providerId =
      _$gauthUserProvidersSelectColumnproviderId;

  static const GauthUserProviders_select_column providerUserId =
      _$gauthUserProvidersSelectColumnproviderUserId;

  static const GauthUserProviders_select_column refreshToken =
      _$gauthUserProvidersSelectColumnrefreshToken;

  static const GauthUserProviders_select_column updatedAt =
      _$gauthUserProvidersSelectColumnupdatedAt;

  static const GauthUserProviders_select_column userId =
      _$gauthUserProvidersSelectColumnuserId;

  static Serializer<GauthUserProviders_select_column> get serializer =>
      _$gauthUserProvidersSelectColumnSerializer;
  static BuiltSet<GauthUserProviders_select_column> get values =>
      _$gauthUserProvidersSelectColumnValues;
  static GauthUserProviders_select_column valueOf(String name) =>
      _$gauthUserProvidersSelectColumnValueOf(name);
}

abstract class GauthUserProviders_set_input
    implements
        Built<GauthUserProviders_set_input,
            GauthUserProviders_set_inputBuilder> {
  GauthUserProviders_set_input._();

  factory GauthUserProviders_set_input(
          [Function(GauthUserProviders_set_inputBuilder b) updates]) =
      _$GauthUserProviders_set_input;

  String? get accessToken;
  Gtimestamptz? get createdAt;
  Guuid? get id;
  String? get providerId;
  String? get providerUserId;
  String? get refreshToken;
  Gtimestamptz? get updatedAt;
  Guuid? get userId;
  static Serializer<GauthUserProviders_set_input> get serializer =>
      _$gauthUserProvidersSetInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserProviders_set_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserProviders_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserProviders_set_input.serializer,
        json,
      );
}

abstract class GauthUserProviders_stream_cursor_input
    implements
        Built<GauthUserProviders_stream_cursor_input,
            GauthUserProviders_stream_cursor_inputBuilder> {
  GauthUserProviders_stream_cursor_input._();

  factory GauthUserProviders_stream_cursor_input(
          [Function(GauthUserProviders_stream_cursor_inputBuilder b) updates]) =
      _$GauthUserProviders_stream_cursor_input;

  GauthUserProviders_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<GauthUserProviders_stream_cursor_input> get serializer =>
      _$gauthUserProvidersStreamCursorInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserProviders_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserProviders_stream_cursor_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserProviders_stream_cursor_input.serializer,
        json,
      );
}

abstract class GauthUserProviders_stream_cursor_value_input
    implements
        Built<GauthUserProviders_stream_cursor_value_input,
            GauthUserProviders_stream_cursor_value_inputBuilder> {
  GauthUserProviders_stream_cursor_value_input._();

  factory GauthUserProviders_stream_cursor_value_input(
      [Function(GauthUserProviders_stream_cursor_value_inputBuilder b)
          updates]) = _$GauthUserProviders_stream_cursor_value_input;

  String? get accessToken;
  Gtimestamptz? get createdAt;
  Guuid? get id;
  String? get providerId;
  String? get providerUserId;
  String? get refreshToken;
  Gtimestamptz? get updatedAt;
  Guuid? get userId;
  static Serializer<GauthUserProviders_stream_cursor_value_input>
      get serializer => _$gauthUserProvidersStreamCursorValueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserProviders_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserProviders_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserProviders_stream_cursor_value_input.serializer,
        json,
      );
}

class GauthUserProviders_update_column extends EnumClass {
  const GauthUserProviders_update_column._(String name) : super(name);

  static const GauthUserProviders_update_column accessToken =
      _$gauthUserProvidersUpdateColumnaccessToken;

  static const GauthUserProviders_update_column createdAt =
      _$gauthUserProvidersUpdateColumncreatedAt;

  static const GauthUserProviders_update_column id =
      _$gauthUserProvidersUpdateColumnid;

  static const GauthUserProviders_update_column providerId =
      _$gauthUserProvidersUpdateColumnproviderId;

  static const GauthUserProviders_update_column providerUserId =
      _$gauthUserProvidersUpdateColumnproviderUserId;

  static const GauthUserProviders_update_column refreshToken =
      _$gauthUserProvidersUpdateColumnrefreshToken;

  static const GauthUserProviders_update_column updatedAt =
      _$gauthUserProvidersUpdateColumnupdatedAt;

  static const GauthUserProviders_update_column userId =
      _$gauthUserProvidersUpdateColumnuserId;

  static Serializer<GauthUserProviders_update_column> get serializer =>
      _$gauthUserProvidersUpdateColumnSerializer;
  static BuiltSet<GauthUserProviders_update_column> get values =>
      _$gauthUserProvidersUpdateColumnValues;
  static GauthUserProviders_update_column valueOf(String name) =>
      _$gauthUserProvidersUpdateColumnValueOf(name);
}

abstract class GauthUserProviders_updates
    implements
        Built<GauthUserProviders_updates, GauthUserProviders_updatesBuilder> {
  GauthUserProviders_updates._();

  factory GauthUserProviders_updates(
          [Function(GauthUserProviders_updatesBuilder b) updates]) =
      _$GauthUserProviders_updates;

  @BuiltValueField(wireName: '_set')
  GauthUserProviders_set_input? get G_set;
  GauthUserProviders_bool_exp get where;
  static Serializer<GauthUserProviders_updates> get serializer =>
      _$gauthUserProvidersUpdatesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserProviders_updates.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserProviders_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserProviders_updates.serializer,
        json,
      );
}

abstract class GauthUserRoles_aggregate_bool_exp
    implements
        Built<GauthUserRoles_aggregate_bool_exp,
            GauthUserRoles_aggregate_bool_expBuilder> {
  GauthUserRoles_aggregate_bool_exp._();

  factory GauthUserRoles_aggregate_bool_exp(
          [Function(GauthUserRoles_aggregate_bool_expBuilder b) updates]) =
      _$GauthUserRoles_aggregate_bool_exp;

  GauthUserRoles_aggregate_bool_exp_count? get count;
  static Serializer<GauthUserRoles_aggregate_bool_exp> get serializer =>
      _$gauthUserRolesAggregateBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserRoles_aggregate_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserRoles_aggregate_bool_exp? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserRoles_aggregate_bool_exp.serializer,
        json,
      );
}

abstract class GauthUserRoles_aggregate_bool_exp_count
    implements
        Built<GauthUserRoles_aggregate_bool_exp_count,
            GauthUserRoles_aggregate_bool_exp_countBuilder> {
  GauthUserRoles_aggregate_bool_exp_count._();

  factory GauthUserRoles_aggregate_bool_exp_count(
      [Function(GauthUserRoles_aggregate_bool_exp_countBuilder b)
          updates]) = _$GauthUserRoles_aggregate_bool_exp_count;

  BuiltList<GauthUserRoles_select_column>? get arguments;
  bool? get distinct;
  GauthUserRoles_bool_exp? get filter;
  GInt_comparison_exp get predicate;
  static Serializer<GauthUserRoles_aggregate_bool_exp_count> get serializer =>
      _$gauthUserRolesAggregateBoolExpCountSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserRoles_aggregate_bool_exp_count.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserRoles_aggregate_bool_exp_count? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserRoles_aggregate_bool_exp_count.serializer,
        json,
      );
}

abstract class GauthUserRoles_aggregate_order_by
    implements
        Built<GauthUserRoles_aggregate_order_by,
            GauthUserRoles_aggregate_order_byBuilder> {
  GauthUserRoles_aggregate_order_by._();

  factory GauthUserRoles_aggregate_order_by(
          [Function(GauthUserRoles_aggregate_order_byBuilder b) updates]) =
      _$GauthUserRoles_aggregate_order_by;

  Gorder_by? get count;
  GauthUserRoles_max_order_by? get max;
  GauthUserRoles_min_order_by? get min;
  static Serializer<GauthUserRoles_aggregate_order_by> get serializer =>
      _$gauthUserRolesAggregateOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserRoles_aggregate_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserRoles_aggregate_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserRoles_aggregate_order_by.serializer,
        json,
      );
}

abstract class GauthUserRoles_arr_rel_insert_input
    implements
        Built<GauthUserRoles_arr_rel_insert_input,
            GauthUserRoles_arr_rel_insert_inputBuilder> {
  GauthUserRoles_arr_rel_insert_input._();

  factory GauthUserRoles_arr_rel_insert_input(
          [Function(GauthUserRoles_arr_rel_insert_inputBuilder b) updates]) =
      _$GauthUserRoles_arr_rel_insert_input;

  BuiltList<GauthUserRoles_insert_input> get data;
  GauthUserRoles_on_conflict? get on_conflict;
  static Serializer<GauthUserRoles_arr_rel_insert_input> get serializer =>
      _$gauthUserRolesArrRelInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserRoles_arr_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserRoles_arr_rel_insert_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserRoles_arr_rel_insert_input.serializer,
        json,
      );
}

abstract class GauthUserRoles_bool_exp
    implements Built<GauthUserRoles_bool_exp, GauthUserRoles_bool_expBuilder> {
  GauthUserRoles_bool_exp._();

  factory GauthUserRoles_bool_exp(
          [Function(GauthUserRoles_bool_expBuilder b) updates]) =
      _$GauthUserRoles_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GauthUserRoles_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GauthUserRoles_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GauthUserRoles_bool_exp>? get G_or;
  Gtimestamptz_comparison_exp? get createdAt;
  Guuid_comparison_exp? get id;
  GString_comparison_exp? get role;
  GauthRoles_bool_exp? get roleByRole;
  Gusers_bool_exp? get user;
  Guuid_comparison_exp? get userId;
  static Serializer<GauthUserRoles_bool_exp> get serializer =>
      _$gauthUserRolesBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserRoles_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserRoles_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserRoles_bool_exp.serializer,
        json,
      );
}

class GauthUserRoles_constraint extends EnumClass {
  const GauthUserRoles_constraint._(String name) : super(name);

  static const GauthUserRoles_constraint user_roles_pkey =
      _$gauthUserRolesConstraintuser_roles_pkey;

  static const GauthUserRoles_constraint user_roles_user_id_role_key =
      _$gauthUserRolesConstraintuser_roles_user_id_role_key;

  static Serializer<GauthUserRoles_constraint> get serializer =>
      _$gauthUserRolesConstraintSerializer;
  static BuiltSet<GauthUserRoles_constraint> get values =>
      _$gauthUserRolesConstraintValues;
  static GauthUserRoles_constraint valueOf(String name) =>
      _$gauthUserRolesConstraintValueOf(name);
}

abstract class GauthUserRoles_insert_input
    implements
        Built<GauthUserRoles_insert_input, GauthUserRoles_insert_inputBuilder> {
  GauthUserRoles_insert_input._();

  factory GauthUserRoles_insert_input(
          [Function(GauthUserRoles_insert_inputBuilder b) updates]) =
      _$GauthUserRoles_insert_input;

  Gtimestamptz? get createdAt;
  Guuid? get id;
  String? get role;
  GauthRoles_obj_rel_insert_input? get roleByRole;
  Gusers_obj_rel_insert_input? get user;
  Guuid? get userId;
  static Serializer<GauthUserRoles_insert_input> get serializer =>
      _$gauthUserRolesInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserRoles_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserRoles_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserRoles_insert_input.serializer,
        json,
      );
}

abstract class GauthUserRoles_max_order_by
    implements
        Built<GauthUserRoles_max_order_by, GauthUserRoles_max_order_byBuilder> {
  GauthUserRoles_max_order_by._();

  factory GauthUserRoles_max_order_by(
          [Function(GauthUserRoles_max_order_byBuilder b) updates]) =
      _$GauthUserRoles_max_order_by;

  Gorder_by? get createdAt;
  Gorder_by? get id;
  Gorder_by? get role;
  Gorder_by? get userId;
  static Serializer<GauthUserRoles_max_order_by> get serializer =>
      _$gauthUserRolesMaxOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserRoles_max_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserRoles_max_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserRoles_max_order_by.serializer,
        json,
      );
}

abstract class GauthUserRoles_min_order_by
    implements
        Built<GauthUserRoles_min_order_by, GauthUserRoles_min_order_byBuilder> {
  GauthUserRoles_min_order_by._();

  factory GauthUserRoles_min_order_by(
          [Function(GauthUserRoles_min_order_byBuilder b) updates]) =
      _$GauthUserRoles_min_order_by;

  Gorder_by? get createdAt;
  Gorder_by? get id;
  Gorder_by? get role;
  Gorder_by? get userId;
  static Serializer<GauthUserRoles_min_order_by> get serializer =>
      _$gauthUserRolesMinOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserRoles_min_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserRoles_min_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserRoles_min_order_by.serializer,
        json,
      );
}

abstract class GauthUserRoles_on_conflict
    implements
        Built<GauthUserRoles_on_conflict, GauthUserRoles_on_conflictBuilder> {
  GauthUserRoles_on_conflict._();

  factory GauthUserRoles_on_conflict(
          [Function(GauthUserRoles_on_conflictBuilder b) updates]) =
      _$GauthUserRoles_on_conflict;

  GauthUserRoles_constraint get constraint;
  BuiltList<GauthUserRoles_update_column> get update_columns;
  GauthUserRoles_bool_exp? get where;
  static Serializer<GauthUserRoles_on_conflict> get serializer =>
      _$gauthUserRolesOnConflictSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserRoles_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserRoles_on_conflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserRoles_on_conflict.serializer,
        json,
      );
}

abstract class GauthUserRoles_order_by
    implements Built<GauthUserRoles_order_by, GauthUserRoles_order_byBuilder> {
  GauthUserRoles_order_by._();

  factory GauthUserRoles_order_by(
          [Function(GauthUserRoles_order_byBuilder b) updates]) =
      _$GauthUserRoles_order_by;

  Gorder_by? get createdAt;
  Gorder_by? get id;
  Gorder_by? get role;
  GauthRoles_order_by? get roleByRole;
  Gusers_order_by? get user;
  Gorder_by? get userId;
  static Serializer<GauthUserRoles_order_by> get serializer =>
      _$gauthUserRolesOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserRoles_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserRoles_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserRoles_order_by.serializer,
        json,
      );
}

abstract class GauthUserRoles_pk_columns_input
    implements
        Built<GauthUserRoles_pk_columns_input,
            GauthUserRoles_pk_columns_inputBuilder> {
  GauthUserRoles_pk_columns_input._();

  factory GauthUserRoles_pk_columns_input(
          [Function(GauthUserRoles_pk_columns_inputBuilder b) updates]) =
      _$GauthUserRoles_pk_columns_input;

  Guuid get id;
  static Serializer<GauthUserRoles_pk_columns_input> get serializer =>
      _$gauthUserRolesPkColumnsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserRoles_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserRoles_pk_columns_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserRoles_pk_columns_input.serializer,
        json,
      );
}

class GauthUserRoles_select_column extends EnumClass {
  const GauthUserRoles_select_column._(String name) : super(name);

  static const GauthUserRoles_select_column createdAt =
      _$gauthUserRolesSelectColumncreatedAt;

  static const GauthUserRoles_select_column id = _$gauthUserRolesSelectColumnid;

  static const GauthUserRoles_select_column role =
      _$gauthUserRolesSelectColumnrole;

  static const GauthUserRoles_select_column userId =
      _$gauthUserRolesSelectColumnuserId;

  static Serializer<GauthUserRoles_select_column> get serializer =>
      _$gauthUserRolesSelectColumnSerializer;
  static BuiltSet<GauthUserRoles_select_column> get values =>
      _$gauthUserRolesSelectColumnValues;
  static GauthUserRoles_select_column valueOf(String name) =>
      _$gauthUserRolesSelectColumnValueOf(name);
}

abstract class GauthUserRoles_set_input
    implements
        Built<GauthUserRoles_set_input, GauthUserRoles_set_inputBuilder> {
  GauthUserRoles_set_input._();

  factory GauthUserRoles_set_input(
          [Function(GauthUserRoles_set_inputBuilder b) updates]) =
      _$GauthUserRoles_set_input;

  Gtimestamptz? get createdAt;
  Guuid? get id;
  String? get role;
  Guuid? get userId;
  static Serializer<GauthUserRoles_set_input> get serializer =>
      _$gauthUserRolesSetInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserRoles_set_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserRoles_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserRoles_set_input.serializer,
        json,
      );
}

abstract class GauthUserRoles_stream_cursor_input
    implements
        Built<GauthUserRoles_stream_cursor_input,
            GauthUserRoles_stream_cursor_inputBuilder> {
  GauthUserRoles_stream_cursor_input._();

  factory GauthUserRoles_stream_cursor_input(
          [Function(GauthUserRoles_stream_cursor_inputBuilder b) updates]) =
      _$GauthUserRoles_stream_cursor_input;

  GauthUserRoles_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<GauthUserRoles_stream_cursor_input> get serializer =>
      _$gauthUserRolesStreamCursorInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserRoles_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserRoles_stream_cursor_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserRoles_stream_cursor_input.serializer,
        json,
      );
}

abstract class GauthUserRoles_stream_cursor_value_input
    implements
        Built<GauthUserRoles_stream_cursor_value_input,
            GauthUserRoles_stream_cursor_value_inputBuilder> {
  GauthUserRoles_stream_cursor_value_input._();

  factory GauthUserRoles_stream_cursor_value_input(
      [Function(GauthUserRoles_stream_cursor_value_inputBuilder b)
          updates]) = _$GauthUserRoles_stream_cursor_value_input;

  Gtimestamptz? get createdAt;
  Guuid? get id;
  String? get role;
  Guuid? get userId;
  static Serializer<GauthUserRoles_stream_cursor_value_input> get serializer =>
      _$gauthUserRolesStreamCursorValueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserRoles_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserRoles_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserRoles_stream_cursor_value_input.serializer,
        json,
      );
}

class GauthUserRoles_update_column extends EnumClass {
  const GauthUserRoles_update_column._(String name) : super(name);

  static const GauthUserRoles_update_column createdAt =
      _$gauthUserRolesUpdateColumncreatedAt;

  static const GauthUserRoles_update_column id = _$gauthUserRolesUpdateColumnid;

  static const GauthUserRoles_update_column role =
      _$gauthUserRolesUpdateColumnrole;

  static const GauthUserRoles_update_column userId =
      _$gauthUserRolesUpdateColumnuserId;

  static Serializer<GauthUserRoles_update_column> get serializer =>
      _$gauthUserRolesUpdateColumnSerializer;
  static BuiltSet<GauthUserRoles_update_column> get values =>
      _$gauthUserRolesUpdateColumnValues;
  static GauthUserRoles_update_column valueOf(String name) =>
      _$gauthUserRolesUpdateColumnValueOf(name);
}

abstract class GauthUserRoles_updates
    implements Built<GauthUserRoles_updates, GauthUserRoles_updatesBuilder> {
  GauthUserRoles_updates._();

  factory GauthUserRoles_updates(
          [Function(GauthUserRoles_updatesBuilder b) updates]) =
      _$GauthUserRoles_updates;

  @BuiltValueField(wireName: '_set')
  GauthUserRoles_set_input? get G_set;
  GauthUserRoles_bool_exp get where;
  static Serializer<GauthUserRoles_updates> get serializer =>
      _$gauthUserRolesUpdatesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserRoles_updates.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserRoles_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserRoles_updates.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_aggregate_bool_exp
    implements
        Built<GauthUserSecurityKeys_aggregate_bool_exp,
            GauthUserSecurityKeys_aggregate_bool_expBuilder> {
  GauthUserSecurityKeys_aggregate_bool_exp._();

  factory GauthUserSecurityKeys_aggregate_bool_exp(
      [Function(GauthUserSecurityKeys_aggregate_bool_expBuilder b)
          updates]) = _$GauthUserSecurityKeys_aggregate_bool_exp;

  GauthUserSecurityKeys_aggregate_bool_exp_count? get count;
  static Serializer<GauthUserSecurityKeys_aggregate_bool_exp> get serializer =>
      _$gauthUserSecurityKeysAggregateBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_aggregate_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_aggregate_bool_exp? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_aggregate_bool_exp.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_aggregate_bool_exp_count
    implements
        Built<GauthUserSecurityKeys_aggregate_bool_exp_count,
            GauthUserSecurityKeys_aggregate_bool_exp_countBuilder> {
  GauthUserSecurityKeys_aggregate_bool_exp_count._();

  factory GauthUserSecurityKeys_aggregate_bool_exp_count(
      [Function(GauthUserSecurityKeys_aggregate_bool_exp_countBuilder b)
          updates]) = _$GauthUserSecurityKeys_aggregate_bool_exp_count;

  BuiltList<GauthUserSecurityKeys_select_column>? get arguments;
  bool? get distinct;
  GauthUserSecurityKeys_bool_exp? get filter;
  GInt_comparison_exp get predicate;
  static Serializer<GauthUserSecurityKeys_aggregate_bool_exp_count>
      get serializer => _$gauthUserSecurityKeysAggregateBoolExpCountSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_aggregate_bool_exp_count.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_aggregate_bool_exp_count? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_aggregate_bool_exp_count.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_aggregate_order_by
    implements
        Built<GauthUserSecurityKeys_aggregate_order_by,
            GauthUserSecurityKeys_aggregate_order_byBuilder> {
  GauthUserSecurityKeys_aggregate_order_by._();

  factory GauthUserSecurityKeys_aggregate_order_by(
      [Function(GauthUserSecurityKeys_aggregate_order_byBuilder b)
          updates]) = _$GauthUserSecurityKeys_aggregate_order_by;

  GauthUserSecurityKeys_avg_order_by? get avg;
  Gorder_by? get count;
  GauthUserSecurityKeys_max_order_by? get max;
  GauthUserSecurityKeys_min_order_by? get min;
  GauthUserSecurityKeys_stddev_order_by? get stddev;
  GauthUserSecurityKeys_stddev_pop_order_by? get stddev_pop;
  GauthUserSecurityKeys_stddev_samp_order_by? get stddev_samp;
  GauthUserSecurityKeys_sum_order_by? get sum;
  GauthUserSecurityKeys_var_pop_order_by? get var_pop;
  GauthUserSecurityKeys_var_samp_order_by? get var_samp;
  GauthUserSecurityKeys_variance_order_by? get variance;
  static Serializer<GauthUserSecurityKeys_aggregate_order_by> get serializer =>
      _$gauthUserSecurityKeysAggregateOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_aggregate_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_aggregate_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_aggregate_order_by.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_arr_rel_insert_input
    implements
        Built<GauthUserSecurityKeys_arr_rel_insert_input,
            GauthUserSecurityKeys_arr_rel_insert_inputBuilder> {
  GauthUserSecurityKeys_arr_rel_insert_input._();

  factory GauthUserSecurityKeys_arr_rel_insert_input(
      [Function(GauthUserSecurityKeys_arr_rel_insert_inputBuilder b)
          updates]) = _$GauthUserSecurityKeys_arr_rel_insert_input;

  BuiltList<GauthUserSecurityKeys_insert_input> get data;
  GauthUserSecurityKeys_on_conflict? get on_conflict;
  static Serializer<GauthUserSecurityKeys_arr_rel_insert_input>
      get serializer => _$gauthUserSecurityKeysArrRelInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_arr_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_arr_rel_insert_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_arr_rel_insert_input.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_avg_order_by
    implements
        Built<GauthUserSecurityKeys_avg_order_by,
            GauthUserSecurityKeys_avg_order_byBuilder> {
  GauthUserSecurityKeys_avg_order_by._();

  factory GauthUserSecurityKeys_avg_order_by(
          [Function(GauthUserSecurityKeys_avg_order_byBuilder b) updates]) =
      _$GauthUserSecurityKeys_avg_order_by;

  Gorder_by? get counter;
  static Serializer<GauthUserSecurityKeys_avg_order_by> get serializer =>
      _$gauthUserSecurityKeysAvgOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_avg_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_avg_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_avg_order_by.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_bool_exp
    implements
        Built<GauthUserSecurityKeys_bool_exp,
            GauthUserSecurityKeys_bool_expBuilder> {
  GauthUserSecurityKeys_bool_exp._();

  factory GauthUserSecurityKeys_bool_exp(
          [Function(GauthUserSecurityKeys_bool_expBuilder b) updates]) =
      _$GauthUserSecurityKeys_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<GauthUserSecurityKeys_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  GauthUserSecurityKeys_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<GauthUserSecurityKeys_bool_exp>? get G_or;
  Gbigint_comparison_exp? get counter;
  GString_comparison_exp? get credentialId;
  Gbytea_comparison_exp? get credentialPublicKey;
  Guuid_comparison_exp? get id;
  GString_comparison_exp? get nickname;
  GString_comparison_exp? get transports;
  Gusers_bool_exp? get user;
  Guuid_comparison_exp? get userId;
  static Serializer<GauthUserSecurityKeys_bool_exp> get serializer =>
      _$gauthUserSecurityKeysBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_bool_exp.serializer,
        json,
      );
}

class GauthUserSecurityKeys_constraint extends EnumClass {
  const GauthUserSecurityKeys_constraint._(String name) : super(name);

  static const GauthUserSecurityKeys_constraint
      user_security_key_credential_id_key =
      _$gauthUserSecurityKeysConstraintuser_security_key_credential_id_key;

  static const GauthUserSecurityKeys_constraint user_security_keys_pkey =
      _$gauthUserSecurityKeysConstraintuser_security_keys_pkey;

  static Serializer<GauthUserSecurityKeys_constraint> get serializer =>
      _$gauthUserSecurityKeysConstraintSerializer;
  static BuiltSet<GauthUserSecurityKeys_constraint> get values =>
      _$gauthUserSecurityKeysConstraintValues;
  static GauthUserSecurityKeys_constraint valueOf(String name) =>
      _$gauthUserSecurityKeysConstraintValueOf(name);
}

abstract class GauthUserSecurityKeys_inc_input
    implements
        Built<GauthUserSecurityKeys_inc_input,
            GauthUserSecurityKeys_inc_inputBuilder> {
  GauthUserSecurityKeys_inc_input._();

  factory GauthUserSecurityKeys_inc_input(
          [Function(GauthUserSecurityKeys_inc_inputBuilder b) updates]) =
      _$GauthUserSecurityKeys_inc_input;

  Gbigint? get counter;
  static Serializer<GauthUserSecurityKeys_inc_input> get serializer =>
      _$gauthUserSecurityKeysIncInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_inc_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_inc_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_inc_input.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_insert_input
    implements
        Built<GauthUserSecurityKeys_insert_input,
            GauthUserSecurityKeys_insert_inputBuilder> {
  GauthUserSecurityKeys_insert_input._();

  factory GauthUserSecurityKeys_insert_input(
          [Function(GauthUserSecurityKeys_insert_inputBuilder b) updates]) =
      _$GauthUserSecurityKeys_insert_input;

  Gbigint? get counter;
  String? get credentialId;
  Gbytea? get credentialPublicKey;
  Guuid? get id;
  String? get nickname;
  String? get transports;
  Gusers_obj_rel_insert_input? get user;
  Guuid? get userId;
  static Serializer<GauthUserSecurityKeys_insert_input> get serializer =>
      _$gauthUserSecurityKeysInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_insert_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_insert_input.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_max_order_by
    implements
        Built<GauthUserSecurityKeys_max_order_by,
            GauthUserSecurityKeys_max_order_byBuilder> {
  GauthUserSecurityKeys_max_order_by._();

  factory GauthUserSecurityKeys_max_order_by(
          [Function(GauthUserSecurityKeys_max_order_byBuilder b) updates]) =
      _$GauthUserSecurityKeys_max_order_by;

  Gorder_by? get counter;
  Gorder_by? get credentialId;
  Gorder_by? get id;
  Gorder_by? get nickname;
  Gorder_by? get transports;
  Gorder_by? get userId;
  static Serializer<GauthUserSecurityKeys_max_order_by> get serializer =>
      _$gauthUserSecurityKeysMaxOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_max_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_max_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_max_order_by.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_min_order_by
    implements
        Built<GauthUserSecurityKeys_min_order_by,
            GauthUserSecurityKeys_min_order_byBuilder> {
  GauthUserSecurityKeys_min_order_by._();

  factory GauthUserSecurityKeys_min_order_by(
          [Function(GauthUserSecurityKeys_min_order_byBuilder b) updates]) =
      _$GauthUserSecurityKeys_min_order_by;

  Gorder_by? get counter;
  Gorder_by? get credentialId;
  Gorder_by? get id;
  Gorder_by? get nickname;
  Gorder_by? get transports;
  Gorder_by? get userId;
  static Serializer<GauthUserSecurityKeys_min_order_by> get serializer =>
      _$gauthUserSecurityKeysMinOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_min_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_min_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_min_order_by.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_on_conflict
    implements
        Built<GauthUserSecurityKeys_on_conflict,
            GauthUserSecurityKeys_on_conflictBuilder> {
  GauthUserSecurityKeys_on_conflict._();

  factory GauthUserSecurityKeys_on_conflict(
          [Function(GauthUserSecurityKeys_on_conflictBuilder b) updates]) =
      _$GauthUserSecurityKeys_on_conflict;

  GauthUserSecurityKeys_constraint get constraint;
  BuiltList<GauthUserSecurityKeys_update_column> get update_columns;
  GauthUserSecurityKeys_bool_exp? get where;
  static Serializer<GauthUserSecurityKeys_on_conflict> get serializer =>
      _$gauthUserSecurityKeysOnConflictSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_on_conflict? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_on_conflict.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_order_by
    implements
        Built<GauthUserSecurityKeys_order_by,
            GauthUserSecurityKeys_order_byBuilder> {
  GauthUserSecurityKeys_order_by._();

  factory GauthUserSecurityKeys_order_by(
          [Function(GauthUserSecurityKeys_order_byBuilder b) updates]) =
      _$GauthUserSecurityKeys_order_by;

  Gorder_by? get counter;
  Gorder_by? get credentialId;
  Gorder_by? get credentialPublicKey;
  Gorder_by? get id;
  Gorder_by? get nickname;
  Gorder_by? get transports;
  Gusers_order_by? get user;
  Gorder_by? get userId;
  static Serializer<GauthUserSecurityKeys_order_by> get serializer =>
      _$gauthUserSecurityKeysOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_order_by.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_pk_columns_input
    implements
        Built<GauthUserSecurityKeys_pk_columns_input,
            GauthUserSecurityKeys_pk_columns_inputBuilder> {
  GauthUserSecurityKeys_pk_columns_input._();

  factory GauthUserSecurityKeys_pk_columns_input(
          [Function(GauthUserSecurityKeys_pk_columns_inputBuilder b) updates]) =
      _$GauthUserSecurityKeys_pk_columns_input;

  Guuid get id;
  static Serializer<GauthUserSecurityKeys_pk_columns_input> get serializer =>
      _$gauthUserSecurityKeysPkColumnsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_pk_columns_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_pk_columns_input.serializer,
        json,
      );
}

class GauthUserSecurityKeys_select_column extends EnumClass {
  const GauthUserSecurityKeys_select_column._(String name) : super(name);

  static const GauthUserSecurityKeys_select_column counter =
      _$gauthUserSecurityKeysSelectColumncounter;

  static const GauthUserSecurityKeys_select_column credentialId =
      _$gauthUserSecurityKeysSelectColumncredentialId;

  static const GauthUserSecurityKeys_select_column credentialPublicKey =
      _$gauthUserSecurityKeysSelectColumncredentialPublicKey;

  static const GauthUserSecurityKeys_select_column id =
      _$gauthUserSecurityKeysSelectColumnid;

  static const GauthUserSecurityKeys_select_column nickname =
      _$gauthUserSecurityKeysSelectColumnnickname;

  static const GauthUserSecurityKeys_select_column transports =
      _$gauthUserSecurityKeysSelectColumntransports;

  static const GauthUserSecurityKeys_select_column userId =
      _$gauthUserSecurityKeysSelectColumnuserId;

  static Serializer<GauthUserSecurityKeys_select_column> get serializer =>
      _$gauthUserSecurityKeysSelectColumnSerializer;
  static BuiltSet<GauthUserSecurityKeys_select_column> get values =>
      _$gauthUserSecurityKeysSelectColumnValues;
  static GauthUserSecurityKeys_select_column valueOf(String name) =>
      _$gauthUserSecurityKeysSelectColumnValueOf(name);
}

abstract class GauthUserSecurityKeys_set_input
    implements
        Built<GauthUserSecurityKeys_set_input,
            GauthUserSecurityKeys_set_inputBuilder> {
  GauthUserSecurityKeys_set_input._();

  factory GauthUserSecurityKeys_set_input(
          [Function(GauthUserSecurityKeys_set_inputBuilder b) updates]) =
      _$GauthUserSecurityKeys_set_input;

  Gbigint? get counter;
  String? get credentialId;
  Gbytea? get credentialPublicKey;
  Guuid? get id;
  String? get nickname;
  String? get transports;
  Guuid? get userId;
  static Serializer<GauthUserSecurityKeys_set_input> get serializer =>
      _$gauthUserSecurityKeysSetInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_set_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_set_input.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_stddev_order_by
    implements
        Built<GauthUserSecurityKeys_stddev_order_by,
            GauthUserSecurityKeys_stddev_order_byBuilder> {
  GauthUserSecurityKeys_stddev_order_by._();

  factory GauthUserSecurityKeys_stddev_order_by(
          [Function(GauthUserSecurityKeys_stddev_order_byBuilder b) updates]) =
      _$GauthUserSecurityKeys_stddev_order_by;

  Gorder_by? get counter;
  static Serializer<GauthUserSecurityKeys_stddev_order_by> get serializer =>
      _$gauthUserSecurityKeysStddevOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_stddev_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_stddev_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_stddev_order_by.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_stddev_pop_order_by
    implements
        Built<GauthUserSecurityKeys_stddev_pop_order_by,
            GauthUserSecurityKeys_stddev_pop_order_byBuilder> {
  GauthUserSecurityKeys_stddev_pop_order_by._();

  factory GauthUserSecurityKeys_stddev_pop_order_by(
      [Function(GauthUserSecurityKeys_stddev_pop_order_byBuilder b)
          updates]) = _$GauthUserSecurityKeys_stddev_pop_order_by;

  Gorder_by? get counter;
  static Serializer<GauthUserSecurityKeys_stddev_pop_order_by> get serializer =>
      _$gauthUserSecurityKeysStddevPopOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_stddev_pop_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_stddev_pop_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_stddev_pop_order_by.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_stddev_samp_order_by
    implements
        Built<GauthUserSecurityKeys_stddev_samp_order_by,
            GauthUserSecurityKeys_stddev_samp_order_byBuilder> {
  GauthUserSecurityKeys_stddev_samp_order_by._();

  factory GauthUserSecurityKeys_stddev_samp_order_by(
      [Function(GauthUserSecurityKeys_stddev_samp_order_byBuilder b)
          updates]) = _$GauthUserSecurityKeys_stddev_samp_order_by;

  Gorder_by? get counter;
  static Serializer<GauthUserSecurityKeys_stddev_samp_order_by>
      get serializer => _$gauthUserSecurityKeysStddevSampOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_stddev_samp_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_stddev_samp_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_stddev_samp_order_by.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_stream_cursor_input
    implements
        Built<GauthUserSecurityKeys_stream_cursor_input,
            GauthUserSecurityKeys_stream_cursor_inputBuilder> {
  GauthUserSecurityKeys_stream_cursor_input._();

  factory GauthUserSecurityKeys_stream_cursor_input(
      [Function(GauthUserSecurityKeys_stream_cursor_inputBuilder b)
          updates]) = _$GauthUserSecurityKeys_stream_cursor_input;

  GauthUserSecurityKeys_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<GauthUserSecurityKeys_stream_cursor_input> get serializer =>
      _$gauthUserSecurityKeysStreamCursorInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_stream_cursor_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_stream_cursor_input.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_stream_cursor_value_input
    implements
        Built<GauthUserSecurityKeys_stream_cursor_value_input,
            GauthUserSecurityKeys_stream_cursor_value_inputBuilder> {
  GauthUserSecurityKeys_stream_cursor_value_input._();

  factory GauthUserSecurityKeys_stream_cursor_value_input(
      [Function(GauthUserSecurityKeys_stream_cursor_value_inputBuilder b)
          updates]) = _$GauthUserSecurityKeys_stream_cursor_value_input;

  Gbigint? get counter;
  String? get credentialId;
  Gbytea? get credentialPublicKey;
  Guuid? get id;
  String? get nickname;
  String? get transports;
  Guuid? get userId;
  static Serializer<GauthUserSecurityKeys_stream_cursor_value_input>
      get serializer => _$gauthUserSecurityKeysStreamCursorValueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_stream_cursor_value_input.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_sum_order_by
    implements
        Built<GauthUserSecurityKeys_sum_order_by,
            GauthUserSecurityKeys_sum_order_byBuilder> {
  GauthUserSecurityKeys_sum_order_by._();

  factory GauthUserSecurityKeys_sum_order_by(
          [Function(GauthUserSecurityKeys_sum_order_byBuilder b) updates]) =
      _$GauthUserSecurityKeys_sum_order_by;

  Gorder_by? get counter;
  static Serializer<GauthUserSecurityKeys_sum_order_by> get serializer =>
      _$gauthUserSecurityKeysSumOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_sum_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_sum_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_sum_order_by.serializer,
        json,
      );
}

class GauthUserSecurityKeys_update_column extends EnumClass {
  const GauthUserSecurityKeys_update_column._(String name) : super(name);

  static const GauthUserSecurityKeys_update_column counter =
      _$gauthUserSecurityKeysUpdateColumncounter;

  static const GauthUserSecurityKeys_update_column credentialId =
      _$gauthUserSecurityKeysUpdateColumncredentialId;

  static const GauthUserSecurityKeys_update_column credentialPublicKey =
      _$gauthUserSecurityKeysUpdateColumncredentialPublicKey;

  static const GauthUserSecurityKeys_update_column id =
      _$gauthUserSecurityKeysUpdateColumnid;

  static const GauthUserSecurityKeys_update_column nickname =
      _$gauthUserSecurityKeysUpdateColumnnickname;

  static const GauthUserSecurityKeys_update_column transports =
      _$gauthUserSecurityKeysUpdateColumntransports;

  static const GauthUserSecurityKeys_update_column userId =
      _$gauthUserSecurityKeysUpdateColumnuserId;

  static Serializer<GauthUserSecurityKeys_update_column> get serializer =>
      _$gauthUserSecurityKeysUpdateColumnSerializer;
  static BuiltSet<GauthUserSecurityKeys_update_column> get values =>
      _$gauthUserSecurityKeysUpdateColumnValues;
  static GauthUserSecurityKeys_update_column valueOf(String name) =>
      _$gauthUserSecurityKeysUpdateColumnValueOf(name);
}

abstract class GauthUserSecurityKeys_updates
    implements
        Built<GauthUserSecurityKeys_updates,
            GauthUserSecurityKeys_updatesBuilder> {
  GauthUserSecurityKeys_updates._();

  factory GauthUserSecurityKeys_updates(
          [Function(GauthUserSecurityKeys_updatesBuilder b) updates]) =
      _$GauthUserSecurityKeys_updates;

  @BuiltValueField(wireName: '_inc')
  GauthUserSecurityKeys_inc_input? get G_inc;
  @BuiltValueField(wireName: '_set')
  GauthUserSecurityKeys_set_input? get G_set;
  GauthUserSecurityKeys_bool_exp get where;
  static Serializer<GauthUserSecurityKeys_updates> get serializer =>
      _$gauthUserSecurityKeysUpdatesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_updates.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_updates.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_var_pop_order_by
    implements
        Built<GauthUserSecurityKeys_var_pop_order_by,
            GauthUserSecurityKeys_var_pop_order_byBuilder> {
  GauthUserSecurityKeys_var_pop_order_by._();

  factory GauthUserSecurityKeys_var_pop_order_by(
          [Function(GauthUserSecurityKeys_var_pop_order_byBuilder b) updates]) =
      _$GauthUserSecurityKeys_var_pop_order_by;

  Gorder_by? get counter;
  static Serializer<GauthUserSecurityKeys_var_pop_order_by> get serializer =>
      _$gauthUserSecurityKeysVarPopOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_var_pop_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_var_pop_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_var_pop_order_by.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_var_samp_order_by
    implements
        Built<GauthUserSecurityKeys_var_samp_order_by,
            GauthUserSecurityKeys_var_samp_order_byBuilder> {
  GauthUserSecurityKeys_var_samp_order_by._();

  factory GauthUserSecurityKeys_var_samp_order_by(
      [Function(GauthUserSecurityKeys_var_samp_order_byBuilder b)
          updates]) = _$GauthUserSecurityKeys_var_samp_order_by;

  Gorder_by? get counter;
  static Serializer<GauthUserSecurityKeys_var_samp_order_by> get serializer =>
      _$gauthUserSecurityKeysVarSampOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_var_samp_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_var_samp_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_var_samp_order_by.serializer,
        json,
      );
}

abstract class GauthUserSecurityKeys_variance_order_by
    implements
        Built<GauthUserSecurityKeys_variance_order_by,
            GauthUserSecurityKeys_variance_order_byBuilder> {
  GauthUserSecurityKeys_variance_order_by._();

  factory GauthUserSecurityKeys_variance_order_by(
      [Function(GauthUserSecurityKeys_variance_order_byBuilder b)
          updates]) = _$GauthUserSecurityKeys_variance_order_by;

  Gorder_by? get counter;
  static Serializer<GauthUserSecurityKeys_variance_order_by> get serializer =>
      _$gauthUserSecurityKeysVarianceOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GauthUserSecurityKeys_variance_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static GauthUserSecurityKeys_variance_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GauthUserSecurityKeys_variance_order_by.serializer,
        json,
      );
}

abstract class Gbigint implements Built<Gbigint, GbigintBuilder> {
  Gbigint._();

  factory Gbigint([String? value]) =>
      _$Gbigint((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<Gbigint> get serializer =>
      _i3.DefaultScalarSerializer<Gbigint>(
          (Object serialized) => Gbigint((serialized as String?)));
}

abstract class Gbigint_comparison_exp
    implements Built<Gbigint_comparison_exp, Gbigint_comparison_expBuilder> {
  Gbigint_comparison_exp._();

  factory Gbigint_comparison_exp(
          [Function(Gbigint_comparison_expBuilder b) updates]) =
      _$Gbigint_comparison_exp;

  @BuiltValueField(wireName: '_eq')
  Gbigint? get G_eq;
  @BuiltValueField(wireName: '_gt')
  Gbigint? get G_gt;
  @BuiltValueField(wireName: '_gte')
  Gbigint? get G_gte;
  @BuiltValueField(wireName: '_in')
  BuiltList<Gbigint>? get G_in;
  @BuiltValueField(wireName: '_is_null')
  bool? get G_is_null;
  @BuiltValueField(wireName: '_lt')
  Gbigint? get G_lt;
  @BuiltValueField(wireName: '_lte')
  Gbigint? get G_lte;
  @BuiltValueField(wireName: '_neq')
  Gbigint? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<Gbigint>? get G_nin;
  static Serializer<Gbigint_comparison_exp> get serializer =>
      _$gbigintComparisonExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gbigint_comparison_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gbigint_comparison_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gbigint_comparison_exp.serializer,
        json,
      );
}

abstract class Gbuckets_bool_exp
    implements Built<Gbuckets_bool_exp, Gbuckets_bool_expBuilder> {
  Gbuckets_bool_exp._();

  factory Gbuckets_bool_exp([Function(Gbuckets_bool_expBuilder b) updates]) =
      _$Gbuckets_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<Gbuckets_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  Gbuckets_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<Gbuckets_bool_exp>? get G_or;
  GString_comparison_exp? get cacheControl;
  Gtimestamptz_comparison_exp? get createdAt;
  GInt_comparison_exp? get downloadExpiration;
  Gfiles_bool_exp? get files;
  Gfiles_aggregate_bool_exp? get files_aggregate;
  GString_comparison_exp? get id;
  GInt_comparison_exp? get maxUploadFileSize;
  GInt_comparison_exp? get minUploadFileSize;
  GBoolean_comparison_exp? get presignedUrlsEnabled;
  Gtimestamptz_comparison_exp? get updatedAt;
  static Serializer<Gbuckets_bool_exp> get serializer =>
      _$gbucketsBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gbuckets_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gbuckets_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gbuckets_bool_exp.serializer,
        json,
      );
}

class Gbuckets_constraint extends EnumClass {
  const Gbuckets_constraint._(String name) : super(name);

  static const Gbuckets_constraint buckets_pkey =
      _$gbucketsConstraintbuckets_pkey;

  static Serializer<Gbuckets_constraint> get serializer =>
      _$gbucketsConstraintSerializer;
  static BuiltSet<Gbuckets_constraint> get values => _$gbucketsConstraintValues;
  static Gbuckets_constraint valueOf(String name) =>
      _$gbucketsConstraintValueOf(name);
}

abstract class Gbuckets_inc_input
    implements Built<Gbuckets_inc_input, Gbuckets_inc_inputBuilder> {
  Gbuckets_inc_input._();

  factory Gbuckets_inc_input([Function(Gbuckets_inc_inputBuilder b) updates]) =
      _$Gbuckets_inc_input;

  int? get downloadExpiration;
  int? get maxUploadFileSize;
  int? get minUploadFileSize;
  static Serializer<Gbuckets_inc_input> get serializer =>
      _$gbucketsIncInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gbuckets_inc_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gbuckets_inc_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gbuckets_inc_input.serializer,
        json,
      );
}

abstract class Gbuckets_insert_input
    implements Built<Gbuckets_insert_input, Gbuckets_insert_inputBuilder> {
  Gbuckets_insert_input._();

  factory Gbuckets_insert_input(
          [Function(Gbuckets_insert_inputBuilder b) updates]) =
      _$Gbuckets_insert_input;

  String? get cacheControl;
  Gtimestamptz? get createdAt;
  int? get downloadExpiration;
  Gfiles_arr_rel_insert_input? get files;
  String? get id;
  int? get maxUploadFileSize;
  int? get minUploadFileSize;
  bool? get presignedUrlsEnabled;
  Gtimestamptz? get updatedAt;
  static Serializer<Gbuckets_insert_input> get serializer =>
      _$gbucketsInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gbuckets_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gbuckets_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gbuckets_insert_input.serializer,
        json,
      );
}

abstract class Gbuckets_obj_rel_insert_input
    implements
        Built<Gbuckets_obj_rel_insert_input,
            Gbuckets_obj_rel_insert_inputBuilder> {
  Gbuckets_obj_rel_insert_input._();

  factory Gbuckets_obj_rel_insert_input(
          [Function(Gbuckets_obj_rel_insert_inputBuilder b) updates]) =
      _$Gbuckets_obj_rel_insert_input;

  Gbuckets_insert_input get data;
  Gbuckets_on_conflict? get on_conflict;
  static Serializer<Gbuckets_obj_rel_insert_input> get serializer =>
      _$gbucketsObjRelInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gbuckets_obj_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gbuckets_obj_rel_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gbuckets_obj_rel_insert_input.serializer,
        json,
      );
}

abstract class Gbuckets_on_conflict
    implements Built<Gbuckets_on_conflict, Gbuckets_on_conflictBuilder> {
  Gbuckets_on_conflict._();

  factory Gbuckets_on_conflict(
          [Function(Gbuckets_on_conflictBuilder b) updates]) =
      _$Gbuckets_on_conflict;

  Gbuckets_constraint get constraint;
  BuiltList<Gbuckets_update_column> get update_columns;
  Gbuckets_bool_exp? get where;
  static Serializer<Gbuckets_on_conflict> get serializer =>
      _$gbucketsOnConflictSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gbuckets_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gbuckets_on_conflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gbuckets_on_conflict.serializer,
        json,
      );
}

abstract class Gbuckets_order_by
    implements Built<Gbuckets_order_by, Gbuckets_order_byBuilder> {
  Gbuckets_order_by._();

  factory Gbuckets_order_by([Function(Gbuckets_order_byBuilder b) updates]) =
      _$Gbuckets_order_by;

  Gorder_by? get cacheControl;
  Gorder_by? get createdAt;
  Gorder_by? get downloadExpiration;
  Gfiles_aggregate_order_by? get files_aggregate;
  Gorder_by? get id;
  Gorder_by? get maxUploadFileSize;
  Gorder_by? get minUploadFileSize;
  Gorder_by? get presignedUrlsEnabled;
  Gorder_by? get updatedAt;
  static Serializer<Gbuckets_order_by> get serializer =>
      _$gbucketsOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gbuckets_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gbuckets_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gbuckets_order_by.serializer,
        json,
      );
}

abstract class Gbuckets_pk_columns_input
    implements
        Built<Gbuckets_pk_columns_input, Gbuckets_pk_columns_inputBuilder> {
  Gbuckets_pk_columns_input._();

  factory Gbuckets_pk_columns_input(
          [Function(Gbuckets_pk_columns_inputBuilder b) updates]) =
      _$Gbuckets_pk_columns_input;

  String get id;
  static Serializer<Gbuckets_pk_columns_input> get serializer =>
      _$gbucketsPkColumnsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gbuckets_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gbuckets_pk_columns_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gbuckets_pk_columns_input.serializer,
        json,
      );
}

class Gbuckets_select_column extends EnumClass {
  const Gbuckets_select_column._(String name) : super(name);

  static const Gbuckets_select_column cacheControl =
      _$gbucketsSelectColumncacheControl;

  static const Gbuckets_select_column createdAt =
      _$gbucketsSelectColumncreatedAt;

  static const Gbuckets_select_column downloadExpiration =
      _$gbucketsSelectColumndownloadExpiration;

  static const Gbuckets_select_column id = _$gbucketsSelectColumnid;

  static const Gbuckets_select_column maxUploadFileSize =
      _$gbucketsSelectColumnmaxUploadFileSize;

  static const Gbuckets_select_column minUploadFileSize =
      _$gbucketsSelectColumnminUploadFileSize;

  static const Gbuckets_select_column presignedUrlsEnabled =
      _$gbucketsSelectColumnpresignedUrlsEnabled;

  static const Gbuckets_select_column updatedAt =
      _$gbucketsSelectColumnupdatedAt;

  static Serializer<Gbuckets_select_column> get serializer =>
      _$gbucketsSelectColumnSerializer;
  static BuiltSet<Gbuckets_select_column> get values =>
      _$gbucketsSelectColumnValues;
  static Gbuckets_select_column valueOf(String name) =>
      _$gbucketsSelectColumnValueOf(name);
}

abstract class Gbuckets_set_input
    implements Built<Gbuckets_set_input, Gbuckets_set_inputBuilder> {
  Gbuckets_set_input._();

  factory Gbuckets_set_input([Function(Gbuckets_set_inputBuilder b) updates]) =
      _$Gbuckets_set_input;

  String? get cacheControl;
  Gtimestamptz? get createdAt;
  int? get downloadExpiration;
  String? get id;
  int? get maxUploadFileSize;
  int? get minUploadFileSize;
  bool? get presignedUrlsEnabled;
  Gtimestamptz? get updatedAt;
  static Serializer<Gbuckets_set_input> get serializer =>
      _$gbucketsSetInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gbuckets_set_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gbuckets_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gbuckets_set_input.serializer,
        json,
      );
}

abstract class Gbuckets_stream_cursor_input
    implements
        Built<Gbuckets_stream_cursor_input,
            Gbuckets_stream_cursor_inputBuilder> {
  Gbuckets_stream_cursor_input._();

  factory Gbuckets_stream_cursor_input(
          [Function(Gbuckets_stream_cursor_inputBuilder b) updates]) =
      _$Gbuckets_stream_cursor_input;

  Gbuckets_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<Gbuckets_stream_cursor_input> get serializer =>
      _$gbucketsStreamCursorInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gbuckets_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gbuckets_stream_cursor_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gbuckets_stream_cursor_input.serializer,
        json,
      );
}

abstract class Gbuckets_stream_cursor_value_input
    implements
        Built<Gbuckets_stream_cursor_value_input,
            Gbuckets_stream_cursor_value_inputBuilder> {
  Gbuckets_stream_cursor_value_input._();

  factory Gbuckets_stream_cursor_value_input(
          [Function(Gbuckets_stream_cursor_value_inputBuilder b) updates]) =
      _$Gbuckets_stream_cursor_value_input;

  String? get cacheControl;
  Gtimestamptz? get createdAt;
  int? get downloadExpiration;
  String? get id;
  int? get maxUploadFileSize;
  int? get minUploadFileSize;
  bool? get presignedUrlsEnabled;
  Gtimestamptz? get updatedAt;
  static Serializer<Gbuckets_stream_cursor_value_input> get serializer =>
      _$gbucketsStreamCursorValueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gbuckets_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gbuckets_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gbuckets_stream_cursor_value_input.serializer,
        json,
      );
}

class Gbuckets_update_column extends EnumClass {
  const Gbuckets_update_column._(String name) : super(name);

  static const Gbuckets_update_column cacheControl =
      _$gbucketsUpdateColumncacheControl;

  static const Gbuckets_update_column createdAt =
      _$gbucketsUpdateColumncreatedAt;

  static const Gbuckets_update_column downloadExpiration =
      _$gbucketsUpdateColumndownloadExpiration;

  static const Gbuckets_update_column id = _$gbucketsUpdateColumnid;

  static const Gbuckets_update_column maxUploadFileSize =
      _$gbucketsUpdateColumnmaxUploadFileSize;

  static const Gbuckets_update_column minUploadFileSize =
      _$gbucketsUpdateColumnminUploadFileSize;

  static const Gbuckets_update_column presignedUrlsEnabled =
      _$gbucketsUpdateColumnpresignedUrlsEnabled;

  static const Gbuckets_update_column updatedAt =
      _$gbucketsUpdateColumnupdatedAt;

  static Serializer<Gbuckets_update_column> get serializer =>
      _$gbucketsUpdateColumnSerializer;
  static BuiltSet<Gbuckets_update_column> get values =>
      _$gbucketsUpdateColumnValues;
  static Gbuckets_update_column valueOf(String name) =>
      _$gbucketsUpdateColumnValueOf(name);
}

abstract class Gbuckets_updates
    implements Built<Gbuckets_updates, Gbuckets_updatesBuilder> {
  Gbuckets_updates._();

  factory Gbuckets_updates([Function(Gbuckets_updatesBuilder b) updates]) =
      _$Gbuckets_updates;

  @BuiltValueField(wireName: '_inc')
  Gbuckets_inc_input? get G_inc;
  @BuiltValueField(wireName: '_set')
  Gbuckets_set_input? get G_set;
  Gbuckets_bool_exp get where;
  static Serializer<Gbuckets_updates> get serializer =>
      _$gbucketsUpdatesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gbuckets_updates.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gbuckets_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gbuckets_updates.serializer,
        json,
      );
}

abstract class Gbytea implements Built<Gbytea, GbyteaBuilder> {
  Gbytea._();

  factory Gbytea([String? value]) =>
      _$Gbytea((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<Gbytea> get serializer =>
      _i3.DefaultScalarSerializer<Gbytea>(
          (Object serialized) => Gbytea((serialized as String?)));
}

abstract class Gbytea_comparison_exp
    implements Built<Gbytea_comparison_exp, Gbytea_comparison_expBuilder> {
  Gbytea_comparison_exp._();

  factory Gbytea_comparison_exp(
          [Function(Gbytea_comparison_expBuilder b) updates]) =
      _$Gbytea_comparison_exp;

  @BuiltValueField(wireName: '_eq')
  Gbytea? get G_eq;
  @BuiltValueField(wireName: '_gt')
  Gbytea? get G_gt;
  @BuiltValueField(wireName: '_gte')
  Gbytea? get G_gte;
  @BuiltValueField(wireName: '_in')
  BuiltList<Gbytea>? get G_in;
  @BuiltValueField(wireName: '_is_null')
  bool? get G_is_null;
  @BuiltValueField(wireName: '_lt')
  Gbytea? get G_lt;
  @BuiltValueField(wireName: '_lte')
  Gbytea? get G_lte;
  @BuiltValueField(wireName: '_neq')
  Gbytea? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<Gbytea>? get G_nin;
  static Serializer<Gbytea_comparison_exp> get serializer =>
      _$gbyteaComparisonExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gbytea_comparison_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gbytea_comparison_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gbytea_comparison_exp.serializer,
        json,
      );
}

abstract class Gcitext implements Built<Gcitext, GcitextBuilder> {
  Gcitext._();

  factory Gcitext([String? value]) =>
      _$Gcitext((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<Gcitext> get serializer =>
      _i3.DefaultScalarSerializer<Gcitext>(
          (Object serialized) => Gcitext((serialized as String?)));
}

abstract class Gcitext_comparison_exp
    implements Built<Gcitext_comparison_exp, Gcitext_comparison_expBuilder> {
  Gcitext_comparison_exp._();

  factory Gcitext_comparison_exp(
          [Function(Gcitext_comparison_expBuilder b) updates]) =
      _$Gcitext_comparison_exp;

  @BuiltValueField(wireName: '_eq')
  Gcitext? get G_eq;
  @BuiltValueField(wireName: '_gt')
  Gcitext? get G_gt;
  @BuiltValueField(wireName: '_gte')
  Gcitext? get G_gte;
  @BuiltValueField(wireName: '_ilike')
  Gcitext? get G_ilike;
  @BuiltValueField(wireName: '_in')
  BuiltList<Gcitext>? get G_in;
  @BuiltValueField(wireName: '_iregex')
  Gcitext? get G_iregex;
  @BuiltValueField(wireName: '_is_null')
  bool? get G_is_null;
  @BuiltValueField(wireName: '_like')
  Gcitext? get G_like;
  @BuiltValueField(wireName: '_lt')
  Gcitext? get G_lt;
  @BuiltValueField(wireName: '_lte')
  Gcitext? get G_lte;
  @BuiltValueField(wireName: '_neq')
  Gcitext? get G_neq;
  @BuiltValueField(wireName: '_nilike')
  Gcitext? get G_nilike;
  @BuiltValueField(wireName: '_nin')
  BuiltList<Gcitext>? get G_nin;
  @BuiltValueField(wireName: '_niregex')
  Gcitext? get G_niregex;
  @BuiltValueField(wireName: '_nlike')
  Gcitext? get G_nlike;
  @BuiltValueField(wireName: '_nregex')
  Gcitext? get G_nregex;
  @BuiltValueField(wireName: '_nsimilar')
  Gcitext? get G_nsimilar;
  @BuiltValueField(wireName: '_regex')
  Gcitext? get G_regex;
  @BuiltValueField(wireName: '_similar')
  Gcitext? get G_similar;
  static Serializer<Gcitext_comparison_exp> get serializer =>
      _$gcitextComparisonExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcitext_comparison_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gcitext_comparison_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcitext_comparison_exp.serializer,
        json,
      );
}

class Gcursor_ordering extends EnumClass {
  const Gcursor_ordering._(String name) : super(name);

  static const Gcursor_ordering ASC = _$gcursorOrderingASC;

  static const Gcursor_ordering DESC = _$gcursorOrderingDESC;

  static Serializer<Gcursor_ordering> get serializer =>
      _$gcursorOrderingSerializer;
  static BuiltSet<Gcursor_ordering> get values => _$gcursorOrderingValues;
  static Gcursor_ordering valueOf(String name) =>
      _$gcursorOrderingValueOf(name);
}

abstract class Gfiles_aggregate_bool_exp
    implements
        Built<Gfiles_aggregate_bool_exp, Gfiles_aggregate_bool_expBuilder> {
  Gfiles_aggregate_bool_exp._();

  factory Gfiles_aggregate_bool_exp(
          [Function(Gfiles_aggregate_bool_expBuilder b) updates]) =
      _$Gfiles_aggregate_bool_exp;

  Gfiles_aggregate_bool_exp_bool_and? get bool_and;
  Gfiles_aggregate_bool_exp_bool_or? get bool_or;
  Gfiles_aggregate_bool_exp_count? get count;
  static Serializer<Gfiles_aggregate_bool_exp> get serializer =>
      _$gfilesAggregateBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_aggregate_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_aggregate_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_aggregate_bool_exp.serializer,
        json,
      );
}

abstract class Gfiles_aggregate_bool_exp_bool_and
    implements
        Built<Gfiles_aggregate_bool_exp_bool_and,
            Gfiles_aggregate_bool_exp_bool_andBuilder> {
  Gfiles_aggregate_bool_exp_bool_and._();

  factory Gfiles_aggregate_bool_exp_bool_and(
          [Function(Gfiles_aggregate_bool_exp_bool_andBuilder b) updates]) =
      _$Gfiles_aggregate_bool_exp_bool_and;

  Gfiles_select_column_files_aggregate_bool_exp_bool_and_arguments_columns
      get arguments;
  bool? get distinct;
  Gfiles_bool_exp? get filter;
  GBoolean_comparison_exp get predicate;
  static Serializer<Gfiles_aggregate_bool_exp_bool_and> get serializer =>
      _$gfilesAggregateBoolExpBoolAndSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_aggregate_bool_exp_bool_and.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_aggregate_bool_exp_bool_and? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_aggregate_bool_exp_bool_and.serializer,
        json,
      );
}

abstract class Gfiles_aggregate_bool_exp_bool_or
    implements
        Built<Gfiles_aggregate_bool_exp_bool_or,
            Gfiles_aggregate_bool_exp_bool_orBuilder> {
  Gfiles_aggregate_bool_exp_bool_or._();

  factory Gfiles_aggregate_bool_exp_bool_or(
          [Function(Gfiles_aggregate_bool_exp_bool_orBuilder b) updates]) =
      _$Gfiles_aggregate_bool_exp_bool_or;

  Gfiles_select_column_files_aggregate_bool_exp_bool_or_arguments_columns
      get arguments;
  bool? get distinct;
  Gfiles_bool_exp? get filter;
  GBoolean_comparison_exp get predicate;
  static Serializer<Gfiles_aggregate_bool_exp_bool_or> get serializer =>
      _$gfilesAggregateBoolExpBoolOrSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_aggregate_bool_exp_bool_or.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_aggregate_bool_exp_bool_or? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_aggregate_bool_exp_bool_or.serializer,
        json,
      );
}

abstract class Gfiles_aggregate_bool_exp_count
    implements
        Built<Gfiles_aggregate_bool_exp_count,
            Gfiles_aggregate_bool_exp_countBuilder> {
  Gfiles_aggregate_bool_exp_count._();

  factory Gfiles_aggregate_bool_exp_count(
          [Function(Gfiles_aggregate_bool_exp_countBuilder b) updates]) =
      _$Gfiles_aggregate_bool_exp_count;

  BuiltList<Gfiles_select_column>? get arguments;
  bool? get distinct;
  Gfiles_bool_exp? get filter;
  GInt_comparison_exp get predicate;
  static Serializer<Gfiles_aggregate_bool_exp_count> get serializer =>
      _$gfilesAggregateBoolExpCountSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_aggregate_bool_exp_count.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_aggregate_bool_exp_count? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_aggregate_bool_exp_count.serializer,
        json,
      );
}

abstract class Gfiles_aggregate_order_by
    implements
        Built<Gfiles_aggregate_order_by, Gfiles_aggregate_order_byBuilder> {
  Gfiles_aggregate_order_by._();

  factory Gfiles_aggregate_order_by(
          [Function(Gfiles_aggregate_order_byBuilder b) updates]) =
      _$Gfiles_aggregate_order_by;

  Gfiles_avg_order_by? get avg;
  Gorder_by? get count;
  Gfiles_max_order_by? get max;
  Gfiles_min_order_by? get min;
  Gfiles_stddev_order_by? get stddev;
  Gfiles_stddev_pop_order_by? get stddev_pop;
  Gfiles_stddev_samp_order_by? get stddev_samp;
  Gfiles_sum_order_by? get sum;
  Gfiles_var_pop_order_by? get var_pop;
  Gfiles_var_samp_order_by? get var_samp;
  Gfiles_variance_order_by? get variance;
  static Serializer<Gfiles_aggregate_order_by> get serializer =>
      _$gfilesAggregateOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_aggregate_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_aggregate_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_aggregate_order_by.serializer,
        json,
      );
}

abstract class Gfiles_arr_rel_insert_input
    implements
        Built<Gfiles_arr_rel_insert_input, Gfiles_arr_rel_insert_inputBuilder> {
  Gfiles_arr_rel_insert_input._();

  factory Gfiles_arr_rel_insert_input(
          [Function(Gfiles_arr_rel_insert_inputBuilder b) updates]) =
      _$Gfiles_arr_rel_insert_input;

  BuiltList<Gfiles_insert_input> get data;
  Gfiles_on_conflict? get on_conflict;
  static Serializer<Gfiles_arr_rel_insert_input> get serializer =>
      _$gfilesArrRelInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_arr_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_arr_rel_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_arr_rel_insert_input.serializer,
        json,
      );
}

abstract class Gfiles_avg_order_by
    implements Built<Gfiles_avg_order_by, Gfiles_avg_order_byBuilder> {
  Gfiles_avg_order_by._();

  factory Gfiles_avg_order_by(
      [Function(Gfiles_avg_order_byBuilder b) updates]) = _$Gfiles_avg_order_by;

  Gorder_by? get size;
  static Serializer<Gfiles_avg_order_by> get serializer =>
      _$gfilesAvgOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_avg_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_avg_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_avg_order_by.serializer,
        json,
      );
}

abstract class Gfiles_bool_exp
    implements Built<Gfiles_bool_exp, Gfiles_bool_expBuilder> {
  Gfiles_bool_exp._();

  factory Gfiles_bool_exp([Function(Gfiles_bool_expBuilder b) updates]) =
      _$Gfiles_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<Gfiles_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  Gfiles_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<Gfiles_bool_exp>? get G_or;
  Gbuckets_bool_exp? get bucket;
  GString_comparison_exp? get bucketId;
  Gtimestamptz_comparison_exp? get createdAt;
  GString_comparison_exp? get etag;
  Guuid_comparison_exp? get id;
  GBoolean_comparison_exp? get isUploaded;
  GString_comparison_exp? get mimeType;
  GString_comparison_exp? get name;
  GInt_comparison_exp? get size;
  Gtimestamptz_comparison_exp? get updatedAt;
  Guuid_comparison_exp? get uploadedByUserId;
  static Serializer<Gfiles_bool_exp> get serializer =>
      _$gfilesBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_bool_exp.serializer,
        json,
      );
}

class Gfiles_constraint extends EnumClass {
  const Gfiles_constraint._(String name) : super(name);

  static const Gfiles_constraint files_pkey = _$gfilesConstraintfiles_pkey;

  static Serializer<Gfiles_constraint> get serializer =>
      _$gfilesConstraintSerializer;
  static BuiltSet<Gfiles_constraint> get values => _$gfilesConstraintValues;
  static Gfiles_constraint valueOf(String name) =>
      _$gfilesConstraintValueOf(name);
}

abstract class Gfiles_inc_input
    implements Built<Gfiles_inc_input, Gfiles_inc_inputBuilder> {
  Gfiles_inc_input._();

  factory Gfiles_inc_input([Function(Gfiles_inc_inputBuilder b) updates]) =
      _$Gfiles_inc_input;

  int? get size;
  static Serializer<Gfiles_inc_input> get serializer =>
      _$gfilesIncInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_inc_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_inc_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_inc_input.serializer,
        json,
      );
}

abstract class Gfiles_insert_input
    implements Built<Gfiles_insert_input, Gfiles_insert_inputBuilder> {
  Gfiles_insert_input._();

  factory Gfiles_insert_input(
      [Function(Gfiles_insert_inputBuilder b) updates]) = _$Gfiles_insert_input;

  Gbuckets_obj_rel_insert_input? get bucket;
  String? get bucketId;
  Gtimestamptz? get createdAt;
  String? get etag;
  Guuid? get id;
  bool? get isUploaded;
  String? get mimeType;
  String? get name;
  int? get size;
  Gtimestamptz? get updatedAt;
  Guuid? get uploadedByUserId;
  static Serializer<Gfiles_insert_input> get serializer =>
      _$gfilesInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_insert_input.serializer,
        json,
      );
}

abstract class Gfiles_max_order_by
    implements Built<Gfiles_max_order_by, Gfiles_max_order_byBuilder> {
  Gfiles_max_order_by._();

  factory Gfiles_max_order_by(
      [Function(Gfiles_max_order_byBuilder b) updates]) = _$Gfiles_max_order_by;

  Gorder_by? get bucketId;
  Gorder_by? get createdAt;
  Gorder_by? get etag;
  Gorder_by? get id;
  Gorder_by? get mimeType;
  Gorder_by? get name;
  Gorder_by? get size;
  Gorder_by? get updatedAt;
  Gorder_by? get uploadedByUserId;
  static Serializer<Gfiles_max_order_by> get serializer =>
      _$gfilesMaxOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_max_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_max_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_max_order_by.serializer,
        json,
      );
}

abstract class Gfiles_min_order_by
    implements Built<Gfiles_min_order_by, Gfiles_min_order_byBuilder> {
  Gfiles_min_order_by._();

  factory Gfiles_min_order_by(
      [Function(Gfiles_min_order_byBuilder b) updates]) = _$Gfiles_min_order_by;

  Gorder_by? get bucketId;
  Gorder_by? get createdAt;
  Gorder_by? get etag;
  Gorder_by? get id;
  Gorder_by? get mimeType;
  Gorder_by? get name;
  Gorder_by? get size;
  Gorder_by? get updatedAt;
  Gorder_by? get uploadedByUserId;
  static Serializer<Gfiles_min_order_by> get serializer =>
      _$gfilesMinOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_min_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_min_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_min_order_by.serializer,
        json,
      );
}

abstract class Gfiles_on_conflict
    implements Built<Gfiles_on_conflict, Gfiles_on_conflictBuilder> {
  Gfiles_on_conflict._();

  factory Gfiles_on_conflict([Function(Gfiles_on_conflictBuilder b) updates]) =
      _$Gfiles_on_conflict;

  Gfiles_constraint get constraint;
  BuiltList<Gfiles_update_column> get update_columns;
  Gfiles_bool_exp? get where;
  static Serializer<Gfiles_on_conflict> get serializer =>
      _$gfilesOnConflictSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_on_conflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_on_conflict.serializer,
        json,
      );
}

abstract class Gfiles_order_by
    implements Built<Gfiles_order_by, Gfiles_order_byBuilder> {
  Gfiles_order_by._();

  factory Gfiles_order_by([Function(Gfiles_order_byBuilder b) updates]) =
      _$Gfiles_order_by;

  Gbuckets_order_by? get bucket;
  Gorder_by? get bucketId;
  Gorder_by? get createdAt;
  Gorder_by? get etag;
  Gorder_by? get id;
  Gorder_by? get isUploaded;
  Gorder_by? get mimeType;
  Gorder_by? get name;
  Gorder_by? get size;
  Gorder_by? get updatedAt;
  Gorder_by? get uploadedByUserId;
  static Serializer<Gfiles_order_by> get serializer =>
      _$gfilesOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_order_by.serializer,
        json,
      );
}

abstract class Gfiles_pk_columns_input
    implements Built<Gfiles_pk_columns_input, Gfiles_pk_columns_inputBuilder> {
  Gfiles_pk_columns_input._();

  factory Gfiles_pk_columns_input(
          [Function(Gfiles_pk_columns_inputBuilder b) updates]) =
      _$Gfiles_pk_columns_input;

  Guuid get id;
  static Serializer<Gfiles_pk_columns_input> get serializer =>
      _$gfilesPkColumnsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_pk_columns_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_pk_columns_input.serializer,
        json,
      );
}

class Gfiles_select_column extends EnumClass {
  const Gfiles_select_column._(String name) : super(name);

  static const Gfiles_select_column bucketId = _$gfilesSelectColumnbucketId;

  static const Gfiles_select_column createdAt = _$gfilesSelectColumncreatedAt;

  static const Gfiles_select_column etag = _$gfilesSelectColumnetag;

  static const Gfiles_select_column id = _$gfilesSelectColumnid;

  static const Gfiles_select_column isUploaded = _$gfilesSelectColumnisUploaded;

  static const Gfiles_select_column mimeType = _$gfilesSelectColumnmimeType;

  @BuiltValueEnumConst(wireName: 'name')
  static const Gfiles_select_column Gname = _$gfilesSelectColumnGname;

  static const Gfiles_select_column size = _$gfilesSelectColumnsize;

  static const Gfiles_select_column updatedAt = _$gfilesSelectColumnupdatedAt;

  static const Gfiles_select_column uploadedByUserId =
      _$gfilesSelectColumnuploadedByUserId;

  static Serializer<Gfiles_select_column> get serializer =>
      _$gfilesSelectColumnSerializer;
  static BuiltSet<Gfiles_select_column> get values =>
      _$gfilesSelectColumnValues;
  static Gfiles_select_column valueOf(String name) =>
      _$gfilesSelectColumnValueOf(name);
}

class Gfiles_select_column_files_aggregate_bool_exp_bool_and_arguments_columns
    extends EnumClass {
  const Gfiles_select_column_files_aggregate_bool_exp_bool_and_arguments_columns._(
      String name)
      : super(name);

  static const Gfiles_select_column_files_aggregate_bool_exp_bool_and_arguments_columns
      isUploaded =
      _$gfilesSelectColumnFilesAggregateBoolExpBoolAndArgumentsColumnsisUploaded;

  static Serializer<
          Gfiles_select_column_files_aggregate_bool_exp_bool_and_arguments_columns>
      get serializer =>
          _$gfilesSelectColumnFilesAggregateBoolExpBoolAndArgumentsColumnsSerializer;
  static BuiltSet<
          Gfiles_select_column_files_aggregate_bool_exp_bool_and_arguments_columns>
      get values =>
          _$gfilesSelectColumnFilesAggregateBoolExpBoolAndArgumentsColumnsValues;
  static Gfiles_select_column_files_aggregate_bool_exp_bool_and_arguments_columns
      valueOf(String name) =>
          _$gfilesSelectColumnFilesAggregateBoolExpBoolAndArgumentsColumnsValueOf(
              name);
}

class Gfiles_select_column_files_aggregate_bool_exp_bool_or_arguments_columns
    extends EnumClass {
  const Gfiles_select_column_files_aggregate_bool_exp_bool_or_arguments_columns._(
      String name)
      : super(name);

  static const Gfiles_select_column_files_aggregate_bool_exp_bool_or_arguments_columns
      isUploaded =
      _$gfilesSelectColumnFilesAggregateBoolExpBoolOrArgumentsColumnsisUploaded;

  static Serializer<
          Gfiles_select_column_files_aggregate_bool_exp_bool_or_arguments_columns>
      get serializer =>
          _$gfilesSelectColumnFilesAggregateBoolExpBoolOrArgumentsColumnsSerializer;
  static BuiltSet<
          Gfiles_select_column_files_aggregate_bool_exp_bool_or_arguments_columns>
      get values =>
          _$gfilesSelectColumnFilesAggregateBoolExpBoolOrArgumentsColumnsValues;
  static Gfiles_select_column_files_aggregate_bool_exp_bool_or_arguments_columns
      valueOf(String name) =>
          _$gfilesSelectColumnFilesAggregateBoolExpBoolOrArgumentsColumnsValueOf(
              name);
}

abstract class Gfiles_set_input
    implements Built<Gfiles_set_input, Gfiles_set_inputBuilder> {
  Gfiles_set_input._();

  factory Gfiles_set_input([Function(Gfiles_set_inputBuilder b) updates]) =
      _$Gfiles_set_input;

  String? get bucketId;
  Gtimestamptz? get createdAt;
  String? get etag;
  Guuid? get id;
  bool? get isUploaded;
  String? get mimeType;
  String? get name;
  int? get size;
  Gtimestamptz? get updatedAt;
  Guuid? get uploadedByUserId;
  static Serializer<Gfiles_set_input> get serializer =>
      _$gfilesSetInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_set_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_set_input.serializer,
        json,
      );
}

abstract class Gfiles_stddev_order_by
    implements Built<Gfiles_stddev_order_by, Gfiles_stddev_order_byBuilder> {
  Gfiles_stddev_order_by._();

  factory Gfiles_stddev_order_by(
          [Function(Gfiles_stddev_order_byBuilder b) updates]) =
      _$Gfiles_stddev_order_by;

  Gorder_by? get size;
  static Serializer<Gfiles_stddev_order_by> get serializer =>
      _$gfilesStddevOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_stddev_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_stddev_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_stddev_order_by.serializer,
        json,
      );
}

abstract class Gfiles_stddev_pop_order_by
    implements
        Built<Gfiles_stddev_pop_order_by, Gfiles_stddev_pop_order_byBuilder> {
  Gfiles_stddev_pop_order_by._();

  factory Gfiles_stddev_pop_order_by(
          [Function(Gfiles_stddev_pop_order_byBuilder b) updates]) =
      _$Gfiles_stddev_pop_order_by;

  Gorder_by? get size;
  static Serializer<Gfiles_stddev_pop_order_by> get serializer =>
      _$gfilesStddevPopOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_stddev_pop_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_stddev_pop_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_stddev_pop_order_by.serializer,
        json,
      );
}

abstract class Gfiles_stddev_samp_order_by
    implements
        Built<Gfiles_stddev_samp_order_by, Gfiles_stddev_samp_order_byBuilder> {
  Gfiles_stddev_samp_order_by._();

  factory Gfiles_stddev_samp_order_by(
          [Function(Gfiles_stddev_samp_order_byBuilder b) updates]) =
      _$Gfiles_stddev_samp_order_by;

  Gorder_by? get size;
  static Serializer<Gfiles_stddev_samp_order_by> get serializer =>
      _$gfilesStddevSampOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_stddev_samp_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_stddev_samp_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_stddev_samp_order_by.serializer,
        json,
      );
}

abstract class Gfiles_stream_cursor_input
    implements
        Built<Gfiles_stream_cursor_input, Gfiles_stream_cursor_inputBuilder> {
  Gfiles_stream_cursor_input._();

  factory Gfiles_stream_cursor_input(
          [Function(Gfiles_stream_cursor_inputBuilder b) updates]) =
      _$Gfiles_stream_cursor_input;

  Gfiles_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<Gfiles_stream_cursor_input> get serializer =>
      _$gfilesStreamCursorInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_stream_cursor_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_stream_cursor_input.serializer,
        json,
      );
}

abstract class Gfiles_stream_cursor_value_input
    implements
        Built<Gfiles_stream_cursor_value_input,
            Gfiles_stream_cursor_value_inputBuilder> {
  Gfiles_stream_cursor_value_input._();

  factory Gfiles_stream_cursor_value_input(
          [Function(Gfiles_stream_cursor_value_inputBuilder b) updates]) =
      _$Gfiles_stream_cursor_value_input;

  String? get bucketId;
  Gtimestamptz? get createdAt;
  String? get etag;
  Guuid? get id;
  bool? get isUploaded;
  String? get mimeType;
  String? get name;
  int? get size;
  Gtimestamptz? get updatedAt;
  Guuid? get uploadedByUserId;
  static Serializer<Gfiles_stream_cursor_value_input> get serializer =>
      _$gfilesStreamCursorValueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_stream_cursor_value_input.serializer,
        json,
      );
}

abstract class Gfiles_sum_order_by
    implements Built<Gfiles_sum_order_by, Gfiles_sum_order_byBuilder> {
  Gfiles_sum_order_by._();

  factory Gfiles_sum_order_by(
      [Function(Gfiles_sum_order_byBuilder b) updates]) = _$Gfiles_sum_order_by;

  Gorder_by? get size;
  static Serializer<Gfiles_sum_order_by> get serializer =>
      _$gfilesSumOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_sum_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_sum_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_sum_order_by.serializer,
        json,
      );
}

class Gfiles_update_column extends EnumClass {
  const Gfiles_update_column._(String name) : super(name);

  static const Gfiles_update_column bucketId = _$gfilesUpdateColumnbucketId;

  static const Gfiles_update_column createdAt = _$gfilesUpdateColumncreatedAt;

  static const Gfiles_update_column etag = _$gfilesUpdateColumnetag;

  static const Gfiles_update_column id = _$gfilesUpdateColumnid;

  static const Gfiles_update_column isUploaded = _$gfilesUpdateColumnisUploaded;

  static const Gfiles_update_column mimeType = _$gfilesUpdateColumnmimeType;

  @BuiltValueEnumConst(wireName: 'name')
  static const Gfiles_update_column Gname = _$gfilesUpdateColumnGname;

  static const Gfiles_update_column size = _$gfilesUpdateColumnsize;

  static const Gfiles_update_column updatedAt = _$gfilesUpdateColumnupdatedAt;

  static const Gfiles_update_column uploadedByUserId =
      _$gfilesUpdateColumnuploadedByUserId;

  static Serializer<Gfiles_update_column> get serializer =>
      _$gfilesUpdateColumnSerializer;
  static BuiltSet<Gfiles_update_column> get values =>
      _$gfilesUpdateColumnValues;
  static Gfiles_update_column valueOf(String name) =>
      _$gfilesUpdateColumnValueOf(name);
}

abstract class Gfiles_updates
    implements Built<Gfiles_updates, Gfiles_updatesBuilder> {
  Gfiles_updates._();

  factory Gfiles_updates([Function(Gfiles_updatesBuilder b) updates]) =
      _$Gfiles_updates;

  @BuiltValueField(wireName: '_inc')
  Gfiles_inc_input? get G_inc;
  @BuiltValueField(wireName: '_set')
  Gfiles_set_input? get G_set;
  Gfiles_bool_exp get where;
  static Serializer<Gfiles_updates> get serializer => _$gfilesUpdatesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_updates.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_updates.serializer,
        json,
      );
}

abstract class Gfiles_var_pop_order_by
    implements Built<Gfiles_var_pop_order_by, Gfiles_var_pop_order_byBuilder> {
  Gfiles_var_pop_order_by._();

  factory Gfiles_var_pop_order_by(
          [Function(Gfiles_var_pop_order_byBuilder b) updates]) =
      _$Gfiles_var_pop_order_by;

  Gorder_by? get size;
  static Serializer<Gfiles_var_pop_order_by> get serializer =>
      _$gfilesVarPopOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_var_pop_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_var_pop_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_var_pop_order_by.serializer,
        json,
      );
}

abstract class Gfiles_var_samp_order_by
    implements
        Built<Gfiles_var_samp_order_by, Gfiles_var_samp_order_byBuilder> {
  Gfiles_var_samp_order_by._();

  factory Gfiles_var_samp_order_by(
          [Function(Gfiles_var_samp_order_byBuilder b) updates]) =
      _$Gfiles_var_samp_order_by;

  Gorder_by? get size;
  static Serializer<Gfiles_var_samp_order_by> get serializer =>
      _$gfilesVarSampOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_var_samp_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_var_samp_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_var_samp_order_by.serializer,
        json,
      );
}

abstract class Gfiles_variance_order_by
    implements
        Built<Gfiles_variance_order_by, Gfiles_variance_order_byBuilder> {
  Gfiles_variance_order_by._();

  factory Gfiles_variance_order_by(
          [Function(Gfiles_variance_order_byBuilder b) updates]) =
      _$Gfiles_variance_order_by;

  Gorder_by? get size;
  static Serializer<Gfiles_variance_order_by> get serializer =>
      _$gfilesVarianceOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gfiles_variance_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gfiles_variance_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gfiles_variance_order_by.serializer,
        json,
      );
}

abstract class Gjsonb_cast_exp
    implements Built<Gjsonb_cast_exp, Gjsonb_cast_expBuilder> {
  Gjsonb_cast_exp._();

  factory Gjsonb_cast_exp([Function(Gjsonb_cast_expBuilder b) updates]) =
      _$Gjsonb_cast_exp;

  @BuiltValueField(wireName: 'String')
  GString_comparison_exp? get GString;
  static Serializer<Gjsonb_cast_exp> get serializer =>
      _$gjsonbCastExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gjsonb_cast_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gjsonb_cast_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gjsonb_cast_exp.serializer,
        json,
      );
}

abstract class Gjsonb_comparison_exp
    implements Built<Gjsonb_comparison_exp, Gjsonb_comparison_expBuilder> {
  Gjsonb_comparison_exp._();

  factory Gjsonb_comparison_exp(
          [Function(Gjsonb_comparison_expBuilder b) updates]) =
      _$Gjsonb_comparison_exp;

  @BuiltValueField(wireName: '_cast')
  Gjsonb_cast_exp? get G_cast;
  @BuiltValueField(wireName: '_contained_in')
  _i2.JsonObject? get G_contained_in;
  @BuiltValueField(wireName: '_contains')
  _i2.JsonObject? get G_contains;
  @BuiltValueField(wireName: '_eq')
  _i2.JsonObject? get G_eq;
  @BuiltValueField(wireName: '_gt')
  _i2.JsonObject? get G_gt;
  @BuiltValueField(wireName: '_gte')
  _i2.JsonObject? get G_gte;
  @BuiltValueField(wireName: '_has_key')
  String? get G_has_key;
  @BuiltValueField(wireName: '_has_keys_all')
  BuiltList<String>? get G_has_keys_all;
  @BuiltValueField(wireName: '_has_keys_any')
  BuiltList<String>? get G_has_keys_any;
  @BuiltValueField(wireName: '_in')
  BuiltList<_i2.JsonObject>? get G_in;
  @BuiltValueField(wireName: '_is_null')
  bool? get G_is_null;
  @BuiltValueField(wireName: '_lt')
  _i2.JsonObject? get G_lt;
  @BuiltValueField(wireName: '_lte')
  _i2.JsonObject? get G_lte;
  @BuiltValueField(wireName: '_neq')
  _i2.JsonObject? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<_i2.JsonObject>? get G_nin;
  static Serializer<Gjsonb_comparison_exp> get serializer =>
      _$gjsonbComparisonExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gjsonb_comparison_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gjsonb_comparison_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gjsonb_comparison_exp.serializer,
        json,
      );
}

class Gorder_by extends EnumClass {
  const Gorder_by._(String name) : super(name);

  static const Gorder_by asc = _$gorderByasc;

  static const Gorder_by asc_nulls_first = _$gorderByasc_nulls_first;

  static const Gorder_by asc_nulls_last = _$gorderByasc_nulls_last;

  static const Gorder_by desc = _$gorderBydesc;

  static const Gorder_by desc_nulls_first = _$gorderBydesc_nulls_first;

  static const Gorder_by desc_nulls_last = _$gorderBydesc_nulls_last;

  static Serializer<Gorder_by> get serializer => _$gorderBySerializer;
  static BuiltSet<Gorder_by> get values => _$gorderByValues;
  static Gorder_by valueOf(String name) => _$gorderByValueOf(name);
}

abstract class Gtimestamptz
    implements Built<Gtimestamptz, GtimestamptzBuilder> {
  Gtimestamptz._();

  factory Gtimestamptz([String? value]) =>
      _$Gtimestamptz((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<Gtimestamptz> get serializer =>
      _i3.DefaultScalarSerializer<Gtimestamptz>(
          (Object serialized) => Gtimestamptz((serialized as String?)));
}

abstract class Gtimestamptz_comparison_exp
    implements
        Built<Gtimestamptz_comparison_exp, Gtimestamptz_comparison_expBuilder> {
  Gtimestamptz_comparison_exp._();

  factory Gtimestamptz_comparison_exp(
          [Function(Gtimestamptz_comparison_expBuilder b) updates]) =
      _$Gtimestamptz_comparison_exp;

  @BuiltValueField(wireName: '_eq')
  Gtimestamptz? get G_eq;
  @BuiltValueField(wireName: '_gt')
  Gtimestamptz? get G_gt;
  @BuiltValueField(wireName: '_gte')
  Gtimestamptz? get G_gte;
  @BuiltValueField(wireName: '_in')
  BuiltList<Gtimestamptz>? get G_in;
  @BuiltValueField(wireName: '_is_null')
  bool? get G_is_null;
  @BuiltValueField(wireName: '_lt')
  Gtimestamptz? get G_lt;
  @BuiltValueField(wireName: '_lte')
  Gtimestamptz? get G_lte;
  @BuiltValueField(wireName: '_neq')
  Gtimestamptz? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<Gtimestamptz>? get G_nin;
  static Serializer<Gtimestamptz_comparison_exp> get serializer =>
      _$gtimestamptzComparisonExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gtimestamptz_comparison_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gtimestamptz_comparison_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gtimestamptz_comparison_exp.serializer,
        json,
      );
}

abstract class Guser_articles_aggregate_bool_exp
    implements
        Built<Guser_articles_aggregate_bool_exp,
            Guser_articles_aggregate_bool_expBuilder> {
  Guser_articles_aggregate_bool_exp._();

  factory Guser_articles_aggregate_bool_exp(
          [Function(Guser_articles_aggregate_bool_expBuilder b) updates]) =
      _$Guser_articles_aggregate_bool_exp;

  Guser_articles_aggregate_bool_exp_count? get count;
  static Serializer<Guser_articles_aggregate_bool_exp> get serializer =>
      _$guserArticlesAggregateBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_aggregate_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_aggregate_bool_exp? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_aggregate_bool_exp.serializer,
        json,
      );
}

abstract class Guser_articles_aggregate_bool_exp_count
    implements
        Built<Guser_articles_aggregate_bool_exp_count,
            Guser_articles_aggregate_bool_exp_countBuilder> {
  Guser_articles_aggregate_bool_exp_count._();

  factory Guser_articles_aggregate_bool_exp_count(
      [Function(Guser_articles_aggregate_bool_exp_countBuilder b)
          updates]) = _$Guser_articles_aggregate_bool_exp_count;

  BuiltList<Guser_articles_select_column>? get arguments;
  bool? get distinct;
  Guser_articles_bool_exp? get filter;
  GInt_comparison_exp get predicate;
  static Serializer<Guser_articles_aggregate_bool_exp_count> get serializer =>
      _$guserArticlesAggregateBoolExpCountSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_aggregate_bool_exp_count.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_aggregate_bool_exp_count? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_aggregate_bool_exp_count.serializer,
        json,
      );
}

abstract class Guser_articles_aggregate_order_by
    implements
        Built<Guser_articles_aggregate_order_by,
            Guser_articles_aggregate_order_byBuilder> {
  Guser_articles_aggregate_order_by._();

  factory Guser_articles_aggregate_order_by(
          [Function(Guser_articles_aggregate_order_byBuilder b) updates]) =
      _$Guser_articles_aggregate_order_by;

  Guser_articles_avg_order_by? get avg;
  Gorder_by? get count;
  Guser_articles_max_order_by? get max;
  Guser_articles_min_order_by? get min;
  Guser_articles_stddev_order_by? get stddev;
  Guser_articles_stddev_pop_order_by? get stddev_pop;
  Guser_articles_stddev_samp_order_by? get stddev_samp;
  Guser_articles_sum_order_by? get sum;
  Guser_articles_var_pop_order_by? get var_pop;
  Guser_articles_var_samp_order_by? get var_samp;
  Guser_articles_variance_order_by? get variance;
  static Serializer<Guser_articles_aggregate_order_by> get serializer =>
      _$guserArticlesAggregateOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_aggregate_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_aggregate_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_aggregate_order_by.serializer,
        json,
      );
}

abstract class Guser_articles_arr_rel_insert_input
    implements
        Built<Guser_articles_arr_rel_insert_input,
            Guser_articles_arr_rel_insert_inputBuilder> {
  Guser_articles_arr_rel_insert_input._();

  factory Guser_articles_arr_rel_insert_input(
          [Function(Guser_articles_arr_rel_insert_inputBuilder b) updates]) =
      _$Guser_articles_arr_rel_insert_input;

  BuiltList<Guser_articles_insert_input> get data;
  Guser_articles_on_conflict? get on_conflict;
  static Serializer<Guser_articles_arr_rel_insert_input> get serializer =>
      _$guserArticlesArrRelInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_arr_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_arr_rel_insert_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_arr_rel_insert_input.serializer,
        json,
      );
}

abstract class Guser_articles_avg_order_by
    implements
        Built<Guser_articles_avg_order_by, Guser_articles_avg_order_byBuilder> {
  Guser_articles_avg_order_by._();

  factory Guser_articles_avg_order_by(
          [Function(Guser_articles_avg_order_byBuilder b) updates]) =
      _$Guser_articles_avg_order_by;

  Gorder_by? get play_at;
  static Serializer<Guser_articles_avg_order_by> get serializer =>
      _$guserArticlesAvgOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_avg_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_avg_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_avg_order_by.serializer,
        json,
      );
}

abstract class Guser_articles_bool_exp
    implements Built<Guser_articles_bool_exp, Guser_articles_bool_expBuilder> {
  Guser_articles_bool_exp._();

  factory Guser_articles_bool_exp(
          [Function(Guser_articles_bool_expBuilder b) updates]) =
      _$Guser_articles_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<Guser_articles_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  Guser_articles_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<Guser_articles_bool_exp>? get G_or;
  Garticles_bool_exp? get article;
  Guuid_comparison_exp? get article_id;
  Gtimestamptz_comparison_exp? get created_at;
  Guuid_comparison_exp? get created_by;
  Gtimestamptz_comparison_exp? get deleted_at;
  Guuid_comparison_exp? get id;
  GInt_comparison_exp? get play_at;
  Gtimestamptz_comparison_exp? get updated_at;
  Guuid_comparison_exp? get updated_by;
  static Serializer<Guser_articles_bool_exp> get serializer =>
      _$guserArticlesBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_bool_exp.serializer,
        json,
      );
}

class Guser_articles_constraint extends EnumClass {
  const Guser_articles_constraint._(String name) : super(name);

  static const Guser_articles_constraint
      user_articles_article_id_created_by_key =
      _$guserArticlesConstraintuser_articles_article_id_created_by_key;

  static const Guser_articles_constraint user_articles_pkey =
      _$guserArticlesConstraintuser_articles_pkey;

  static Serializer<Guser_articles_constraint> get serializer =>
      _$guserArticlesConstraintSerializer;
  static BuiltSet<Guser_articles_constraint> get values =>
      _$guserArticlesConstraintValues;
  static Guser_articles_constraint valueOf(String name) =>
      _$guserArticlesConstraintValueOf(name);
}

abstract class Guser_articles_inc_input
    implements
        Built<Guser_articles_inc_input, Guser_articles_inc_inputBuilder> {
  Guser_articles_inc_input._();

  factory Guser_articles_inc_input(
          [Function(Guser_articles_inc_inputBuilder b) updates]) =
      _$Guser_articles_inc_input;

  int? get play_at;
  static Serializer<Guser_articles_inc_input> get serializer =>
      _$guserArticlesIncInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_inc_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_inc_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_inc_input.serializer,
        json,
      );
}

abstract class Guser_articles_insert_input
    implements
        Built<Guser_articles_insert_input, Guser_articles_insert_inputBuilder> {
  Guser_articles_insert_input._();

  factory Guser_articles_insert_input(
          [Function(Guser_articles_insert_inputBuilder b) updates]) =
      _$Guser_articles_insert_input;

  Garticles_obj_rel_insert_input? get article;
  Guuid? get article_id;
  Gtimestamptz? get created_at;
  Guuid? get created_by;
  Gtimestamptz? get deleted_at;
  Guuid? get id;
  int? get play_at;
  Gtimestamptz? get updated_at;
  Guuid? get updated_by;
  static Serializer<Guser_articles_insert_input> get serializer =>
      _$guserArticlesInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_insert_input.serializer,
        json,
      );
}

abstract class Guser_articles_max_order_by
    implements
        Built<Guser_articles_max_order_by, Guser_articles_max_order_byBuilder> {
  Guser_articles_max_order_by._();

  factory Guser_articles_max_order_by(
          [Function(Guser_articles_max_order_byBuilder b) updates]) =
      _$Guser_articles_max_order_by;

  Gorder_by? get article_id;
  Gorder_by? get created_at;
  Gorder_by? get created_by;
  Gorder_by? get deleted_at;
  Gorder_by? get id;
  Gorder_by? get play_at;
  Gorder_by? get updated_at;
  Gorder_by? get updated_by;
  static Serializer<Guser_articles_max_order_by> get serializer =>
      _$guserArticlesMaxOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_max_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_max_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_max_order_by.serializer,
        json,
      );
}

abstract class Guser_articles_min_order_by
    implements
        Built<Guser_articles_min_order_by, Guser_articles_min_order_byBuilder> {
  Guser_articles_min_order_by._();

  factory Guser_articles_min_order_by(
          [Function(Guser_articles_min_order_byBuilder b) updates]) =
      _$Guser_articles_min_order_by;

  Gorder_by? get article_id;
  Gorder_by? get created_at;
  Gorder_by? get created_by;
  Gorder_by? get deleted_at;
  Gorder_by? get id;
  Gorder_by? get play_at;
  Gorder_by? get updated_at;
  Gorder_by? get updated_by;
  static Serializer<Guser_articles_min_order_by> get serializer =>
      _$guserArticlesMinOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_min_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_min_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_min_order_by.serializer,
        json,
      );
}

abstract class Guser_articles_on_conflict
    implements
        Built<Guser_articles_on_conflict, Guser_articles_on_conflictBuilder> {
  Guser_articles_on_conflict._();

  factory Guser_articles_on_conflict(
          [Function(Guser_articles_on_conflictBuilder b) updates]) =
      _$Guser_articles_on_conflict;

  Guser_articles_constraint get constraint;
  BuiltList<Guser_articles_update_column> get update_columns;
  Guser_articles_bool_exp? get where;
  static Serializer<Guser_articles_on_conflict> get serializer =>
      _$guserArticlesOnConflictSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_on_conflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_on_conflict.serializer,
        json,
      );
}

abstract class Guser_articles_order_by
    implements Built<Guser_articles_order_by, Guser_articles_order_byBuilder> {
  Guser_articles_order_by._();

  factory Guser_articles_order_by(
          [Function(Guser_articles_order_byBuilder b) updates]) =
      _$Guser_articles_order_by;

  Garticles_order_by? get article;
  Gorder_by? get article_id;
  Gorder_by? get created_at;
  Gorder_by? get created_by;
  Gorder_by? get deleted_at;
  Gorder_by? get id;
  Gorder_by? get play_at;
  Gorder_by? get updated_at;
  Gorder_by? get updated_by;
  static Serializer<Guser_articles_order_by> get serializer =>
      _$guserArticlesOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_order_by.serializer,
        json,
      );
}

abstract class Guser_articles_pk_columns_input
    implements
        Built<Guser_articles_pk_columns_input,
            Guser_articles_pk_columns_inputBuilder> {
  Guser_articles_pk_columns_input._();

  factory Guser_articles_pk_columns_input(
          [Function(Guser_articles_pk_columns_inputBuilder b) updates]) =
      _$Guser_articles_pk_columns_input;

  Guuid get id;
  static Serializer<Guser_articles_pk_columns_input> get serializer =>
      _$guserArticlesPkColumnsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_pk_columns_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_pk_columns_input.serializer,
        json,
      );
}

class Guser_articles_select_column extends EnumClass {
  const Guser_articles_select_column._(String name) : super(name);

  static const Guser_articles_select_column article_id =
      _$guserArticlesSelectColumnarticle_id;

  static const Guser_articles_select_column created_at =
      _$guserArticlesSelectColumncreated_at;

  static const Guser_articles_select_column created_by =
      _$guserArticlesSelectColumncreated_by;

  static const Guser_articles_select_column deleted_at =
      _$guserArticlesSelectColumndeleted_at;

  static const Guser_articles_select_column id = _$guserArticlesSelectColumnid;

  static const Guser_articles_select_column play_at =
      _$guserArticlesSelectColumnplay_at;

  static const Guser_articles_select_column updated_at =
      _$guserArticlesSelectColumnupdated_at;

  static const Guser_articles_select_column updated_by =
      _$guserArticlesSelectColumnupdated_by;

  static Serializer<Guser_articles_select_column> get serializer =>
      _$guserArticlesSelectColumnSerializer;
  static BuiltSet<Guser_articles_select_column> get values =>
      _$guserArticlesSelectColumnValues;
  static Guser_articles_select_column valueOf(String name) =>
      _$guserArticlesSelectColumnValueOf(name);
}

abstract class Guser_articles_set_input
    implements
        Built<Guser_articles_set_input, Guser_articles_set_inputBuilder> {
  Guser_articles_set_input._();

  factory Guser_articles_set_input(
          [Function(Guser_articles_set_inputBuilder b) updates]) =
      _$Guser_articles_set_input;

  Guuid? get article_id;
  Gtimestamptz? get created_at;
  Guuid? get created_by;
  Gtimestamptz? get deleted_at;
  Guuid? get id;
  int? get play_at;
  Gtimestamptz? get updated_at;
  Guuid? get updated_by;
  static Serializer<Guser_articles_set_input> get serializer =>
      _$guserArticlesSetInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_set_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_set_input.serializer,
        json,
      );
}

abstract class Guser_articles_stddev_order_by
    implements
        Built<Guser_articles_stddev_order_by,
            Guser_articles_stddev_order_byBuilder> {
  Guser_articles_stddev_order_by._();

  factory Guser_articles_stddev_order_by(
          [Function(Guser_articles_stddev_order_byBuilder b) updates]) =
      _$Guser_articles_stddev_order_by;

  Gorder_by? get play_at;
  static Serializer<Guser_articles_stddev_order_by> get serializer =>
      _$guserArticlesStddevOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_stddev_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_stddev_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_stddev_order_by.serializer,
        json,
      );
}

abstract class Guser_articles_stddev_pop_order_by
    implements
        Built<Guser_articles_stddev_pop_order_by,
            Guser_articles_stddev_pop_order_byBuilder> {
  Guser_articles_stddev_pop_order_by._();

  factory Guser_articles_stddev_pop_order_by(
          [Function(Guser_articles_stddev_pop_order_byBuilder b) updates]) =
      _$Guser_articles_stddev_pop_order_by;

  Gorder_by? get play_at;
  static Serializer<Guser_articles_stddev_pop_order_by> get serializer =>
      _$guserArticlesStddevPopOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_stddev_pop_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_stddev_pop_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_stddev_pop_order_by.serializer,
        json,
      );
}

abstract class Guser_articles_stddev_samp_order_by
    implements
        Built<Guser_articles_stddev_samp_order_by,
            Guser_articles_stddev_samp_order_byBuilder> {
  Guser_articles_stddev_samp_order_by._();

  factory Guser_articles_stddev_samp_order_by(
          [Function(Guser_articles_stddev_samp_order_byBuilder b) updates]) =
      _$Guser_articles_stddev_samp_order_by;

  Gorder_by? get play_at;
  static Serializer<Guser_articles_stddev_samp_order_by> get serializer =>
      _$guserArticlesStddevSampOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_stddev_samp_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_stddev_samp_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_stddev_samp_order_by.serializer,
        json,
      );
}

abstract class Guser_articles_stream_cursor_input
    implements
        Built<Guser_articles_stream_cursor_input,
            Guser_articles_stream_cursor_inputBuilder> {
  Guser_articles_stream_cursor_input._();

  factory Guser_articles_stream_cursor_input(
          [Function(Guser_articles_stream_cursor_inputBuilder b) updates]) =
      _$Guser_articles_stream_cursor_input;

  Guser_articles_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<Guser_articles_stream_cursor_input> get serializer =>
      _$guserArticlesStreamCursorInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_stream_cursor_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_stream_cursor_input.serializer,
        json,
      );
}

abstract class Guser_articles_stream_cursor_value_input
    implements
        Built<Guser_articles_stream_cursor_value_input,
            Guser_articles_stream_cursor_value_inputBuilder> {
  Guser_articles_stream_cursor_value_input._();

  factory Guser_articles_stream_cursor_value_input(
      [Function(Guser_articles_stream_cursor_value_inputBuilder b)
          updates]) = _$Guser_articles_stream_cursor_value_input;

  Guuid? get article_id;
  Gtimestamptz? get created_at;
  Guuid? get created_by;
  Gtimestamptz? get deleted_at;
  Guuid? get id;
  int? get play_at;
  Gtimestamptz? get updated_at;
  Guuid? get updated_by;
  static Serializer<Guser_articles_stream_cursor_value_input> get serializer =>
      _$guserArticlesStreamCursorValueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_stream_cursor_value_input.serializer,
        json,
      );
}

abstract class Guser_articles_sum_order_by
    implements
        Built<Guser_articles_sum_order_by, Guser_articles_sum_order_byBuilder> {
  Guser_articles_sum_order_by._();

  factory Guser_articles_sum_order_by(
          [Function(Guser_articles_sum_order_byBuilder b) updates]) =
      _$Guser_articles_sum_order_by;

  Gorder_by? get play_at;
  static Serializer<Guser_articles_sum_order_by> get serializer =>
      _$guserArticlesSumOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_sum_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_sum_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_sum_order_by.serializer,
        json,
      );
}

class Guser_articles_update_column extends EnumClass {
  const Guser_articles_update_column._(String name) : super(name);

  static const Guser_articles_update_column article_id =
      _$guserArticlesUpdateColumnarticle_id;

  static const Guser_articles_update_column created_at =
      _$guserArticlesUpdateColumncreated_at;

  static const Guser_articles_update_column created_by =
      _$guserArticlesUpdateColumncreated_by;

  static const Guser_articles_update_column deleted_at =
      _$guserArticlesUpdateColumndeleted_at;

  static const Guser_articles_update_column id = _$guserArticlesUpdateColumnid;

  static const Guser_articles_update_column play_at =
      _$guserArticlesUpdateColumnplay_at;

  static const Guser_articles_update_column updated_at =
      _$guserArticlesUpdateColumnupdated_at;

  static const Guser_articles_update_column updated_by =
      _$guserArticlesUpdateColumnupdated_by;

  static Serializer<Guser_articles_update_column> get serializer =>
      _$guserArticlesUpdateColumnSerializer;
  static BuiltSet<Guser_articles_update_column> get values =>
      _$guserArticlesUpdateColumnValues;
  static Guser_articles_update_column valueOf(String name) =>
      _$guserArticlesUpdateColumnValueOf(name);
}

abstract class Guser_articles_updates
    implements Built<Guser_articles_updates, Guser_articles_updatesBuilder> {
  Guser_articles_updates._();

  factory Guser_articles_updates(
          [Function(Guser_articles_updatesBuilder b) updates]) =
      _$Guser_articles_updates;

  @BuiltValueField(wireName: '_inc')
  Guser_articles_inc_input? get G_inc;
  @BuiltValueField(wireName: '_set')
  Guser_articles_set_input? get G_set;
  Guser_articles_bool_exp get where;
  static Serializer<Guser_articles_updates> get serializer =>
      _$guserArticlesUpdatesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_updates.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_updates.serializer,
        json,
      );
}

abstract class Guser_articles_var_pop_order_by
    implements
        Built<Guser_articles_var_pop_order_by,
            Guser_articles_var_pop_order_byBuilder> {
  Guser_articles_var_pop_order_by._();

  factory Guser_articles_var_pop_order_by(
          [Function(Guser_articles_var_pop_order_byBuilder b) updates]) =
      _$Guser_articles_var_pop_order_by;

  Gorder_by? get play_at;
  static Serializer<Guser_articles_var_pop_order_by> get serializer =>
      _$guserArticlesVarPopOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_var_pop_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_var_pop_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_var_pop_order_by.serializer,
        json,
      );
}

abstract class Guser_articles_var_samp_order_by
    implements
        Built<Guser_articles_var_samp_order_by,
            Guser_articles_var_samp_order_byBuilder> {
  Guser_articles_var_samp_order_by._();

  factory Guser_articles_var_samp_order_by(
          [Function(Guser_articles_var_samp_order_byBuilder b) updates]) =
      _$Guser_articles_var_samp_order_by;

  Gorder_by? get play_at;
  static Serializer<Guser_articles_var_samp_order_by> get serializer =>
      _$guserArticlesVarSampOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_var_samp_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_var_samp_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_var_samp_order_by.serializer,
        json,
      );
}

abstract class Guser_articles_variance_order_by
    implements
        Built<Guser_articles_variance_order_by,
            Guser_articles_variance_order_byBuilder> {
  Guser_articles_variance_order_by._();

  factory Guser_articles_variance_order_by(
          [Function(Guser_articles_variance_order_byBuilder b) updates]) =
      _$Guser_articles_variance_order_by;

  Gorder_by? get play_at;
  static Serializer<Guser_articles_variance_order_by> get serializer =>
      _$guserArticlesVarianceOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guser_articles_variance_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guser_articles_variance_order_by? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guser_articles_variance_order_by.serializer,
        json,
      );
}

abstract class Gusers_aggregate_bool_exp
    implements
        Built<Gusers_aggregate_bool_exp, Gusers_aggregate_bool_expBuilder> {
  Gusers_aggregate_bool_exp._();

  factory Gusers_aggregate_bool_exp(
          [Function(Gusers_aggregate_bool_expBuilder b) updates]) =
      _$Gusers_aggregate_bool_exp;

  Gusers_aggregate_bool_exp_bool_and? get bool_and;
  Gusers_aggregate_bool_exp_bool_or? get bool_or;
  Gusers_aggregate_bool_exp_count? get count;
  static Serializer<Gusers_aggregate_bool_exp> get serializer =>
      _$gusersAggregateBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_aggregate_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_aggregate_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_aggregate_bool_exp.serializer,
        json,
      );
}

abstract class Gusers_aggregate_bool_exp_bool_and
    implements
        Built<Gusers_aggregate_bool_exp_bool_and,
            Gusers_aggregate_bool_exp_bool_andBuilder> {
  Gusers_aggregate_bool_exp_bool_and._();

  factory Gusers_aggregate_bool_exp_bool_and(
          [Function(Gusers_aggregate_bool_exp_bool_andBuilder b) updates]) =
      _$Gusers_aggregate_bool_exp_bool_and;

  Gusers_select_column_users_aggregate_bool_exp_bool_and_arguments_columns
      get arguments;
  bool? get distinct;
  Gusers_bool_exp? get filter;
  GBoolean_comparison_exp get predicate;
  static Serializer<Gusers_aggregate_bool_exp_bool_and> get serializer =>
      _$gusersAggregateBoolExpBoolAndSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_aggregate_bool_exp_bool_and.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_aggregate_bool_exp_bool_and? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_aggregate_bool_exp_bool_and.serializer,
        json,
      );
}

abstract class Gusers_aggregate_bool_exp_bool_or
    implements
        Built<Gusers_aggregate_bool_exp_bool_or,
            Gusers_aggregate_bool_exp_bool_orBuilder> {
  Gusers_aggregate_bool_exp_bool_or._();

  factory Gusers_aggregate_bool_exp_bool_or(
          [Function(Gusers_aggregate_bool_exp_bool_orBuilder b) updates]) =
      _$Gusers_aggregate_bool_exp_bool_or;

  Gusers_select_column_users_aggregate_bool_exp_bool_or_arguments_columns
      get arguments;
  bool? get distinct;
  Gusers_bool_exp? get filter;
  GBoolean_comparison_exp get predicate;
  static Serializer<Gusers_aggregate_bool_exp_bool_or> get serializer =>
      _$gusersAggregateBoolExpBoolOrSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_aggregate_bool_exp_bool_or.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_aggregate_bool_exp_bool_or? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_aggregate_bool_exp_bool_or.serializer,
        json,
      );
}

abstract class Gusers_aggregate_bool_exp_count
    implements
        Built<Gusers_aggregate_bool_exp_count,
            Gusers_aggregate_bool_exp_countBuilder> {
  Gusers_aggregate_bool_exp_count._();

  factory Gusers_aggregate_bool_exp_count(
          [Function(Gusers_aggregate_bool_exp_countBuilder b) updates]) =
      _$Gusers_aggregate_bool_exp_count;

  BuiltList<Gusers_select_column>? get arguments;
  bool? get distinct;
  Gusers_bool_exp? get filter;
  GInt_comparison_exp get predicate;
  static Serializer<Gusers_aggregate_bool_exp_count> get serializer =>
      _$gusersAggregateBoolExpCountSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_aggregate_bool_exp_count.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_aggregate_bool_exp_count? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_aggregate_bool_exp_count.serializer,
        json,
      );
}

abstract class Gusers_aggregate_order_by
    implements
        Built<Gusers_aggregate_order_by, Gusers_aggregate_order_byBuilder> {
  Gusers_aggregate_order_by._();

  factory Gusers_aggregate_order_by(
          [Function(Gusers_aggregate_order_byBuilder b) updates]) =
      _$Gusers_aggregate_order_by;

  Gorder_by? get count;
  Gusers_max_order_by? get max;
  Gusers_min_order_by? get min;
  static Serializer<Gusers_aggregate_order_by> get serializer =>
      _$gusersAggregateOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_aggregate_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_aggregate_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_aggregate_order_by.serializer,
        json,
      );
}

abstract class Gusers_append_input
    implements Built<Gusers_append_input, Gusers_append_inputBuilder> {
  Gusers_append_input._();

  factory Gusers_append_input(
      [Function(Gusers_append_inputBuilder b) updates]) = _$Gusers_append_input;

  _i2.JsonObject? get metadata;
  static Serializer<Gusers_append_input> get serializer =>
      _$gusersAppendInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_append_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_append_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_append_input.serializer,
        json,
      );
}

abstract class Gusers_arr_rel_insert_input
    implements
        Built<Gusers_arr_rel_insert_input, Gusers_arr_rel_insert_inputBuilder> {
  Gusers_arr_rel_insert_input._();

  factory Gusers_arr_rel_insert_input(
          [Function(Gusers_arr_rel_insert_inputBuilder b) updates]) =
      _$Gusers_arr_rel_insert_input;

  BuiltList<Gusers_insert_input> get data;
  Gusers_on_conflict? get on_conflict;
  static Serializer<Gusers_arr_rel_insert_input> get serializer =>
      _$gusersArrRelInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_arr_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_arr_rel_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_arr_rel_insert_input.serializer,
        json,
      );
}

abstract class Gusers_bool_exp
    implements Built<Gusers_bool_exp, Gusers_bool_expBuilder> {
  Gusers_bool_exp._();

  factory Gusers_bool_exp([Function(Gusers_bool_expBuilder b) updates]) =
      _$Gusers_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<Gusers_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  Gusers_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<Gusers_bool_exp>? get G_or;
  GString_comparison_exp? get activeMfaType;
  GString_comparison_exp? get avatarUrl;
  Gtimestamptz_comparison_exp? get createdAt;
  GString_comparison_exp? get currentChallenge;
  GString_comparison_exp? get defaultRole;
  GauthRoles_bool_exp? get defaultRoleByRole;
  GBoolean_comparison_exp? get disabled;
  GString_comparison_exp? get displayName;
  Gcitext_comparison_exp? get email;
  GBoolean_comparison_exp? get emailVerified;
  Guuid_comparison_exp? get id;
  GBoolean_comparison_exp? get isAnonymous;
  Gtimestamptz_comparison_exp? get lastSeen;
  GString_comparison_exp? get locale;
  Gjsonb_comparison_exp? get metadata;
  Gcitext_comparison_exp? get newEmail;
  GString_comparison_exp? get otpHash;
  Gtimestamptz_comparison_exp? get otpHashExpiresAt;
  GString_comparison_exp? get otpMethodLastUsed;
  GString_comparison_exp? get passwordHash;
  GString_comparison_exp? get phoneNumber;
  GBoolean_comparison_exp? get phoneNumberVerified;
  GauthRefreshTokens_bool_exp? get refreshTokens;
  GauthRefreshTokens_aggregate_bool_exp? get refreshTokens_aggregate;
  GauthUserRoles_bool_exp? get roles;
  GauthUserRoles_aggregate_bool_exp? get roles_aggregate;
  GauthUserSecurityKeys_bool_exp? get securityKeys;
  GauthUserSecurityKeys_aggregate_bool_exp? get securityKeys_aggregate;
  GString_comparison_exp? get ticket;
  Gtimestamptz_comparison_exp? get ticketExpiresAt;
  GString_comparison_exp? get totpSecret;
  Gtimestamptz_comparison_exp? get updatedAt;
  GauthUserProviders_bool_exp? get userProviders;
  GauthUserProviders_aggregate_bool_exp? get userProviders_aggregate;
  static Serializer<Gusers_bool_exp> get serializer =>
      _$gusersBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_bool_exp.serializer,
        json,
      );
}

class Gusers_constraint extends EnumClass {
  const Gusers_constraint._(String name) : super(name);

  static const Gusers_constraint users_email_key =
      _$gusersConstraintusers_email_key;

  static const Gusers_constraint users_phone_number_key =
      _$gusersConstraintusers_phone_number_key;

  static const Gusers_constraint users_pkey = _$gusersConstraintusers_pkey;

  static Serializer<Gusers_constraint> get serializer =>
      _$gusersConstraintSerializer;
  static BuiltSet<Gusers_constraint> get values => _$gusersConstraintValues;
  static Gusers_constraint valueOf(String name) =>
      _$gusersConstraintValueOf(name);
}

abstract class Gusers_delete_at_path_input
    implements
        Built<Gusers_delete_at_path_input, Gusers_delete_at_path_inputBuilder> {
  Gusers_delete_at_path_input._();

  factory Gusers_delete_at_path_input(
          [Function(Gusers_delete_at_path_inputBuilder b) updates]) =
      _$Gusers_delete_at_path_input;

  BuiltList<String>? get metadata;
  static Serializer<Gusers_delete_at_path_input> get serializer =>
      _$gusersDeleteAtPathInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_delete_at_path_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_delete_at_path_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_delete_at_path_input.serializer,
        json,
      );
}

abstract class Gusers_delete_elem_input
    implements
        Built<Gusers_delete_elem_input, Gusers_delete_elem_inputBuilder> {
  Gusers_delete_elem_input._();

  factory Gusers_delete_elem_input(
          [Function(Gusers_delete_elem_inputBuilder b) updates]) =
      _$Gusers_delete_elem_input;

  int? get metadata;
  static Serializer<Gusers_delete_elem_input> get serializer =>
      _$gusersDeleteElemInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_delete_elem_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_delete_elem_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_delete_elem_input.serializer,
        json,
      );
}

abstract class Gusers_delete_key_input
    implements Built<Gusers_delete_key_input, Gusers_delete_key_inputBuilder> {
  Gusers_delete_key_input._();

  factory Gusers_delete_key_input(
          [Function(Gusers_delete_key_inputBuilder b) updates]) =
      _$Gusers_delete_key_input;

  String? get metadata;
  static Serializer<Gusers_delete_key_input> get serializer =>
      _$gusersDeleteKeyInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_delete_key_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_delete_key_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_delete_key_input.serializer,
        json,
      );
}

abstract class Gusers_insert_input
    implements Built<Gusers_insert_input, Gusers_insert_inputBuilder> {
  Gusers_insert_input._();

  factory Gusers_insert_input(
      [Function(Gusers_insert_inputBuilder b) updates]) = _$Gusers_insert_input;

  String? get activeMfaType;
  String? get avatarUrl;
  Gtimestamptz? get createdAt;
  String? get currentChallenge;
  String? get defaultRole;
  GauthRoles_obj_rel_insert_input? get defaultRoleByRole;
  bool? get disabled;
  String? get displayName;
  Gcitext? get email;
  bool? get emailVerified;
  Guuid? get id;
  bool? get isAnonymous;
  Gtimestamptz? get lastSeen;
  String? get locale;
  _i2.JsonObject? get metadata;
  Gcitext? get newEmail;
  String? get otpHash;
  Gtimestamptz? get otpHashExpiresAt;
  String? get otpMethodLastUsed;
  String? get passwordHash;
  String? get phoneNumber;
  bool? get phoneNumberVerified;
  GauthRefreshTokens_arr_rel_insert_input? get refreshTokens;
  GauthUserRoles_arr_rel_insert_input? get roles;
  GauthUserSecurityKeys_arr_rel_insert_input? get securityKeys;
  String? get ticket;
  Gtimestamptz? get ticketExpiresAt;
  String? get totpSecret;
  Gtimestamptz? get updatedAt;
  GauthUserProviders_arr_rel_insert_input? get userProviders;
  static Serializer<Gusers_insert_input> get serializer =>
      _$gusersInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_insert_input.serializer,
        json,
      );
}

abstract class Gusers_max_order_by
    implements Built<Gusers_max_order_by, Gusers_max_order_byBuilder> {
  Gusers_max_order_by._();

  factory Gusers_max_order_by(
      [Function(Gusers_max_order_byBuilder b) updates]) = _$Gusers_max_order_by;

  Gorder_by? get activeMfaType;
  Gorder_by? get avatarUrl;
  Gorder_by? get createdAt;
  Gorder_by? get currentChallenge;
  Gorder_by? get defaultRole;
  Gorder_by? get displayName;
  Gorder_by? get email;
  Gorder_by? get id;
  Gorder_by? get lastSeen;
  Gorder_by? get locale;
  Gorder_by? get newEmail;
  Gorder_by? get otpHash;
  Gorder_by? get otpHashExpiresAt;
  Gorder_by? get otpMethodLastUsed;
  Gorder_by? get passwordHash;
  Gorder_by? get phoneNumber;
  Gorder_by? get ticket;
  Gorder_by? get ticketExpiresAt;
  Gorder_by? get totpSecret;
  Gorder_by? get updatedAt;
  static Serializer<Gusers_max_order_by> get serializer =>
      _$gusersMaxOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_max_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_max_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_max_order_by.serializer,
        json,
      );
}

abstract class Gusers_min_order_by
    implements Built<Gusers_min_order_by, Gusers_min_order_byBuilder> {
  Gusers_min_order_by._();

  factory Gusers_min_order_by(
      [Function(Gusers_min_order_byBuilder b) updates]) = _$Gusers_min_order_by;

  Gorder_by? get activeMfaType;
  Gorder_by? get avatarUrl;
  Gorder_by? get createdAt;
  Gorder_by? get currentChallenge;
  Gorder_by? get defaultRole;
  Gorder_by? get displayName;
  Gorder_by? get email;
  Gorder_by? get id;
  Gorder_by? get lastSeen;
  Gorder_by? get locale;
  Gorder_by? get newEmail;
  Gorder_by? get otpHash;
  Gorder_by? get otpHashExpiresAt;
  Gorder_by? get otpMethodLastUsed;
  Gorder_by? get passwordHash;
  Gorder_by? get phoneNumber;
  Gorder_by? get ticket;
  Gorder_by? get ticketExpiresAt;
  Gorder_by? get totpSecret;
  Gorder_by? get updatedAt;
  static Serializer<Gusers_min_order_by> get serializer =>
      _$gusersMinOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_min_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_min_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_min_order_by.serializer,
        json,
      );
}

abstract class Gusers_obj_rel_insert_input
    implements
        Built<Gusers_obj_rel_insert_input, Gusers_obj_rel_insert_inputBuilder> {
  Gusers_obj_rel_insert_input._();

  factory Gusers_obj_rel_insert_input(
          [Function(Gusers_obj_rel_insert_inputBuilder b) updates]) =
      _$Gusers_obj_rel_insert_input;

  Gusers_insert_input get data;
  Gusers_on_conflict? get on_conflict;
  static Serializer<Gusers_obj_rel_insert_input> get serializer =>
      _$gusersObjRelInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_obj_rel_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_obj_rel_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_obj_rel_insert_input.serializer,
        json,
      );
}

abstract class Gusers_on_conflict
    implements Built<Gusers_on_conflict, Gusers_on_conflictBuilder> {
  Gusers_on_conflict._();

  factory Gusers_on_conflict([Function(Gusers_on_conflictBuilder b) updates]) =
      _$Gusers_on_conflict;

  Gusers_constraint get constraint;
  BuiltList<Gusers_update_column> get update_columns;
  Gusers_bool_exp? get where;
  static Serializer<Gusers_on_conflict> get serializer =>
      _$gusersOnConflictSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_on_conflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_on_conflict.serializer,
        json,
      );
}

abstract class Gusers_order_by
    implements Built<Gusers_order_by, Gusers_order_byBuilder> {
  Gusers_order_by._();

  factory Gusers_order_by([Function(Gusers_order_byBuilder b) updates]) =
      _$Gusers_order_by;

  Gorder_by? get activeMfaType;
  Gorder_by? get avatarUrl;
  Gorder_by? get createdAt;
  Gorder_by? get currentChallenge;
  Gorder_by? get defaultRole;
  GauthRoles_order_by? get defaultRoleByRole;
  Gorder_by? get disabled;
  Gorder_by? get displayName;
  Gorder_by? get email;
  Gorder_by? get emailVerified;
  Gorder_by? get id;
  Gorder_by? get isAnonymous;
  Gorder_by? get lastSeen;
  Gorder_by? get locale;
  Gorder_by? get metadata;
  Gorder_by? get newEmail;
  Gorder_by? get otpHash;
  Gorder_by? get otpHashExpiresAt;
  Gorder_by? get otpMethodLastUsed;
  Gorder_by? get passwordHash;
  Gorder_by? get phoneNumber;
  Gorder_by? get phoneNumberVerified;
  GauthRefreshTokens_aggregate_order_by? get refreshTokens_aggregate;
  GauthUserRoles_aggregate_order_by? get roles_aggregate;
  GauthUserSecurityKeys_aggregate_order_by? get securityKeys_aggregate;
  Gorder_by? get ticket;
  Gorder_by? get ticketExpiresAt;
  Gorder_by? get totpSecret;
  Gorder_by? get updatedAt;
  GauthUserProviders_aggregate_order_by? get userProviders_aggregate;
  static Serializer<Gusers_order_by> get serializer =>
      _$gusersOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_order_by.serializer,
        json,
      );
}

abstract class Gusers_pk_columns_input
    implements Built<Gusers_pk_columns_input, Gusers_pk_columns_inputBuilder> {
  Gusers_pk_columns_input._();

  factory Gusers_pk_columns_input(
          [Function(Gusers_pk_columns_inputBuilder b) updates]) =
      _$Gusers_pk_columns_input;

  Guuid get id;
  static Serializer<Gusers_pk_columns_input> get serializer =>
      _$gusersPkColumnsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_pk_columns_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_pk_columns_input.serializer,
        json,
      );
}

abstract class Gusers_prepend_input
    implements Built<Gusers_prepend_input, Gusers_prepend_inputBuilder> {
  Gusers_prepend_input._();

  factory Gusers_prepend_input(
          [Function(Gusers_prepend_inputBuilder b) updates]) =
      _$Gusers_prepend_input;

  _i2.JsonObject? get metadata;
  static Serializer<Gusers_prepend_input> get serializer =>
      _$gusersPrependInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_prepend_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_prepend_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_prepend_input.serializer,
        json,
      );
}

class Gusers_select_column extends EnumClass {
  const Gusers_select_column._(String name) : super(name);

  static const Gusers_select_column activeMfaType =
      _$gusersSelectColumnactiveMfaType;

  static const Gusers_select_column avatarUrl = _$gusersSelectColumnavatarUrl;

  static const Gusers_select_column createdAt = _$gusersSelectColumncreatedAt;

  static const Gusers_select_column currentChallenge =
      _$gusersSelectColumncurrentChallenge;

  static const Gusers_select_column defaultRole =
      _$gusersSelectColumndefaultRole;

  static const Gusers_select_column disabled = _$gusersSelectColumndisabled;

  static const Gusers_select_column displayName =
      _$gusersSelectColumndisplayName;

  static const Gusers_select_column email = _$gusersSelectColumnemail;

  static const Gusers_select_column emailVerified =
      _$gusersSelectColumnemailVerified;

  static const Gusers_select_column id = _$gusersSelectColumnid;

  static const Gusers_select_column isAnonymous =
      _$gusersSelectColumnisAnonymous;

  static const Gusers_select_column lastSeen = _$gusersSelectColumnlastSeen;

  static const Gusers_select_column locale = _$gusersSelectColumnlocale;

  static const Gusers_select_column metadata = _$gusersSelectColumnmetadata;

  static const Gusers_select_column newEmail = _$gusersSelectColumnnewEmail;

  static const Gusers_select_column otpHash = _$gusersSelectColumnotpHash;

  static const Gusers_select_column otpHashExpiresAt =
      _$gusersSelectColumnotpHashExpiresAt;

  static const Gusers_select_column otpMethodLastUsed =
      _$gusersSelectColumnotpMethodLastUsed;

  static const Gusers_select_column passwordHash =
      _$gusersSelectColumnpasswordHash;

  static const Gusers_select_column phoneNumber =
      _$gusersSelectColumnphoneNumber;

  static const Gusers_select_column phoneNumberVerified =
      _$gusersSelectColumnphoneNumberVerified;

  static const Gusers_select_column ticket = _$gusersSelectColumnticket;

  static const Gusers_select_column ticketExpiresAt =
      _$gusersSelectColumnticketExpiresAt;

  static const Gusers_select_column totpSecret = _$gusersSelectColumntotpSecret;

  static const Gusers_select_column updatedAt = _$gusersSelectColumnupdatedAt;

  static Serializer<Gusers_select_column> get serializer =>
      _$gusersSelectColumnSerializer;
  static BuiltSet<Gusers_select_column> get values =>
      _$gusersSelectColumnValues;
  static Gusers_select_column valueOf(String name) =>
      _$gusersSelectColumnValueOf(name);
}

class Gusers_select_column_users_aggregate_bool_exp_bool_and_arguments_columns
    extends EnumClass {
  const Gusers_select_column_users_aggregate_bool_exp_bool_and_arguments_columns._(
      String name)
      : super(name);

  static const Gusers_select_column_users_aggregate_bool_exp_bool_and_arguments_columns
      disabled =
      _$gusersSelectColumnUsersAggregateBoolExpBoolAndArgumentsColumnsdisabled;

  static const Gusers_select_column_users_aggregate_bool_exp_bool_and_arguments_columns
      emailVerified =
      _$gusersSelectColumnUsersAggregateBoolExpBoolAndArgumentsColumnsemailVerified;

  static const Gusers_select_column_users_aggregate_bool_exp_bool_and_arguments_columns
      isAnonymous =
      _$gusersSelectColumnUsersAggregateBoolExpBoolAndArgumentsColumnsisAnonymous;

  static const Gusers_select_column_users_aggregate_bool_exp_bool_and_arguments_columns
      phoneNumberVerified =
      _$gusersSelectColumnUsersAggregateBoolExpBoolAndArgumentsColumnsphoneNumberVerified;

  static Serializer<
          Gusers_select_column_users_aggregate_bool_exp_bool_and_arguments_columns>
      get serializer =>
          _$gusersSelectColumnUsersAggregateBoolExpBoolAndArgumentsColumnsSerializer;
  static BuiltSet<
          Gusers_select_column_users_aggregate_bool_exp_bool_and_arguments_columns>
      get values =>
          _$gusersSelectColumnUsersAggregateBoolExpBoolAndArgumentsColumnsValues;
  static Gusers_select_column_users_aggregate_bool_exp_bool_and_arguments_columns
      valueOf(String name) =>
          _$gusersSelectColumnUsersAggregateBoolExpBoolAndArgumentsColumnsValueOf(
              name);
}

class Gusers_select_column_users_aggregate_bool_exp_bool_or_arguments_columns
    extends EnumClass {
  const Gusers_select_column_users_aggregate_bool_exp_bool_or_arguments_columns._(
      String name)
      : super(name);

  static const Gusers_select_column_users_aggregate_bool_exp_bool_or_arguments_columns
      disabled =
      _$gusersSelectColumnUsersAggregateBoolExpBoolOrArgumentsColumnsdisabled;

  static const Gusers_select_column_users_aggregate_bool_exp_bool_or_arguments_columns
      emailVerified =
      _$gusersSelectColumnUsersAggregateBoolExpBoolOrArgumentsColumnsemailVerified;

  static const Gusers_select_column_users_aggregate_bool_exp_bool_or_arguments_columns
      isAnonymous =
      _$gusersSelectColumnUsersAggregateBoolExpBoolOrArgumentsColumnsisAnonymous;

  static const Gusers_select_column_users_aggregate_bool_exp_bool_or_arguments_columns
      phoneNumberVerified =
      _$gusersSelectColumnUsersAggregateBoolExpBoolOrArgumentsColumnsphoneNumberVerified;

  static Serializer<
          Gusers_select_column_users_aggregate_bool_exp_bool_or_arguments_columns>
      get serializer =>
          _$gusersSelectColumnUsersAggregateBoolExpBoolOrArgumentsColumnsSerializer;
  static BuiltSet<
          Gusers_select_column_users_aggregate_bool_exp_bool_or_arguments_columns>
      get values =>
          _$gusersSelectColumnUsersAggregateBoolExpBoolOrArgumentsColumnsValues;
  static Gusers_select_column_users_aggregate_bool_exp_bool_or_arguments_columns
      valueOf(String name) =>
          _$gusersSelectColumnUsersAggregateBoolExpBoolOrArgumentsColumnsValueOf(
              name);
}

abstract class Gusers_set_input
    implements Built<Gusers_set_input, Gusers_set_inputBuilder> {
  Gusers_set_input._();

  factory Gusers_set_input([Function(Gusers_set_inputBuilder b) updates]) =
      _$Gusers_set_input;

  String? get activeMfaType;
  String? get avatarUrl;
  Gtimestamptz? get createdAt;
  String? get currentChallenge;
  String? get defaultRole;
  bool? get disabled;
  String? get displayName;
  Gcitext? get email;
  bool? get emailVerified;
  Guuid? get id;
  bool? get isAnonymous;
  Gtimestamptz? get lastSeen;
  String? get locale;
  _i2.JsonObject? get metadata;
  Gcitext? get newEmail;
  String? get otpHash;
  Gtimestamptz? get otpHashExpiresAt;
  String? get otpMethodLastUsed;
  String? get passwordHash;
  String? get phoneNumber;
  bool? get phoneNumberVerified;
  String? get ticket;
  Gtimestamptz? get ticketExpiresAt;
  String? get totpSecret;
  Gtimestamptz? get updatedAt;
  static Serializer<Gusers_set_input> get serializer =>
      _$gusersSetInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_set_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_set_input.serializer,
        json,
      );
}

abstract class Gusers_stream_cursor_input
    implements
        Built<Gusers_stream_cursor_input, Gusers_stream_cursor_inputBuilder> {
  Gusers_stream_cursor_input._();

  factory Gusers_stream_cursor_input(
          [Function(Gusers_stream_cursor_inputBuilder b) updates]) =
      _$Gusers_stream_cursor_input;

  Gusers_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<Gusers_stream_cursor_input> get serializer =>
      _$gusersStreamCursorInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_stream_cursor_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_stream_cursor_input.serializer,
        json,
      );
}

abstract class Gusers_stream_cursor_value_input
    implements
        Built<Gusers_stream_cursor_value_input,
            Gusers_stream_cursor_value_inputBuilder> {
  Gusers_stream_cursor_value_input._();

  factory Gusers_stream_cursor_value_input(
          [Function(Gusers_stream_cursor_value_inputBuilder b) updates]) =
      _$Gusers_stream_cursor_value_input;

  String? get activeMfaType;
  String? get avatarUrl;
  Gtimestamptz? get createdAt;
  String? get currentChallenge;
  String? get defaultRole;
  bool? get disabled;
  String? get displayName;
  Gcitext? get email;
  bool? get emailVerified;
  Guuid? get id;
  bool? get isAnonymous;
  Gtimestamptz? get lastSeen;
  String? get locale;
  _i2.JsonObject? get metadata;
  Gcitext? get newEmail;
  String? get otpHash;
  Gtimestamptz? get otpHashExpiresAt;
  String? get otpMethodLastUsed;
  String? get passwordHash;
  String? get phoneNumber;
  bool? get phoneNumberVerified;
  String? get ticket;
  Gtimestamptz? get ticketExpiresAt;
  String? get totpSecret;
  Gtimestamptz? get updatedAt;
  static Serializer<Gusers_stream_cursor_value_input> get serializer =>
      _$gusersStreamCursorValueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_stream_cursor_value_input.serializer,
        json,
      );
}

class Gusers_update_column extends EnumClass {
  const Gusers_update_column._(String name) : super(name);

  static const Gusers_update_column activeMfaType =
      _$gusersUpdateColumnactiveMfaType;

  static const Gusers_update_column avatarUrl = _$gusersUpdateColumnavatarUrl;

  static const Gusers_update_column createdAt = _$gusersUpdateColumncreatedAt;

  static const Gusers_update_column currentChallenge =
      _$gusersUpdateColumncurrentChallenge;

  static const Gusers_update_column defaultRole =
      _$gusersUpdateColumndefaultRole;

  static const Gusers_update_column disabled = _$gusersUpdateColumndisabled;

  static const Gusers_update_column displayName =
      _$gusersUpdateColumndisplayName;

  static const Gusers_update_column email = _$gusersUpdateColumnemail;

  static const Gusers_update_column emailVerified =
      _$gusersUpdateColumnemailVerified;

  static const Gusers_update_column id = _$gusersUpdateColumnid;

  static const Gusers_update_column isAnonymous =
      _$gusersUpdateColumnisAnonymous;

  static const Gusers_update_column lastSeen = _$gusersUpdateColumnlastSeen;

  static const Gusers_update_column locale = _$gusersUpdateColumnlocale;

  static const Gusers_update_column metadata = _$gusersUpdateColumnmetadata;

  static const Gusers_update_column newEmail = _$gusersUpdateColumnnewEmail;

  static const Gusers_update_column otpHash = _$gusersUpdateColumnotpHash;

  static const Gusers_update_column otpHashExpiresAt =
      _$gusersUpdateColumnotpHashExpiresAt;

  static const Gusers_update_column otpMethodLastUsed =
      _$gusersUpdateColumnotpMethodLastUsed;

  static const Gusers_update_column passwordHash =
      _$gusersUpdateColumnpasswordHash;

  static const Gusers_update_column phoneNumber =
      _$gusersUpdateColumnphoneNumber;

  static const Gusers_update_column phoneNumberVerified =
      _$gusersUpdateColumnphoneNumberVerified;

  static const Gusers_update_column ticket = _$gusersUpdateColumnticket;

  static const Gusers_update_column ticketExpiresAt =
      _$gusersUpdateColumnticketExpiresAt;

  static const Gusers_update_column totpSecret = _$gusersUpdateColumntotpSecret;

  static const Gusers_update_column updatedAt = _$gusersUpdateColumnupdatedAt;

  static Serializer<Gusers_update_column> get serializer =>
      _$gusersUpdateColumnSerializer;
  static BuiltSet<Gusers_update_column> get values =>
      _$gusersUpdateColumnValues;
  static Gusers_update_column valueOf(String name) =>
      _$gusersUpdateColumnValueOf(name);
}

abstract class Gusers_updates
    implements Built<Gusers_updates, Gusers_updatesBuilder> {
  Gusers_updates._();

  factory Gusers_updates([Function(Gusers_updatesBuilder b) updates]) =
      _$Gusers_updates;

  @BuiltValueField(wireName: '_append')
  Gusers_append_input? get G_append;
  @BuiltValueField(wireName: '_delete_at_path')
  Gusers_delete_at_path_input? get G_delete_at_path;
  @BuiltValueField(wireName: '_delete_elem')
  Gusers_delete_elem_input? get G_delete_elem;
  @BuiltValueField(wireName: '_delete_key')
  Gusers_delete_key_input? get G_delete_key;
  @BuiltValueField(wireName: '_prepend')
  Gusers_prepend_input? get G_prepend;
  @BuiltValueField(wireName: '_set')
  Gusers_set_input? get G_set;
  Gusers_bool_exp get where;
  static Serializer<Gusers_updates> get serializer => _$gusersUpdatesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gusers_updates.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gusers_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gusers_updates.serializer,
        json,
      );
}

abstract class Guuid implements Built<Guuid, GuuidBuilder> {
  Guuid._();

  factory Guuid([String? value]) =>
      _$Guuid((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<Guuid> get serializer => _i3.DefaultScalarSerializer<Guuid>(
      (Object serialized) => Guuid((serialized as String?)));
}

abstract class Guuid_comparison_exp
    implements Built<Guuid_comparison_exp, Guuid_comparison_expBuilder> {
  Guuid_comparison_exp._();

  factory Guuid_comparison_exp(
          [Function(Guuid_comparison_expBuilder b) updates]) =
      _$Guuid_comparison_exp;

  @BuiltValueField(wireName: '_eq')
  Guuid? get G_eq;
  @BuiltValueField(wireName: '_gt')
  Guuid? get G_gt;
  @BuiltValueField(wireName: '_gte')
  Guuid? get G_gte;
  @BuiltValueField(wireName: '_in')
  BuiltList<Guuid>? get G_in;
  @BuiltValueField(wireName: '_is_null')
  bool? get G_is_null;
  @BuiltValueField(wireName: '_lt')
  Guuid? get G_lt;
  @BuiltValueField(wireName: '_lte')
  Guuid? get G_lte;
  @BuiltValueField(wireName: '_neq')
  Guuid? get G_neq;
  @BuiltValueField(wireName: '_nin')
  BuiltList<Guuid>? get G_nin;
  static Serializer<Guuid_comparison_exp> get serializer =>
      _$guuidComparisonExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Guuid_comparison_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static Guuid_comparison_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Guuid_comparison_exp.serializer,
        json,
      );
}

abstract class Gwords_bool_exp
    implements Built<Gwords_bool_exp, Gwords_bool_expBuilder> {
  Gwords_bool_exp._();

  factory Gwords_bool_exp([Function(Gwords_bool_expBuilder b) updates]) =
      _$Gwords_bool_exp;

  @BuiltValueField(wireName: '_and')
  BuiltList<Gwords_bool_exp>? get G_and;
  @BuiltValueField(wireName: '_not')
  Gwords_bool_exp? get G_not;
  @BuiltValueField(wireName: '_or')
  BuiltList<Gwords_bool_exp>? get G_or;
  Gtimestamptz_comparison_exp? get created_at;
  Guuid_comparison_exp? get created_by;
  Gtimestamptz_comparison_exp? get deleted_at;
  Guuid_comparison_exp? get id;
  GBoolean_comparison_exp? get is_done;
  GInt_comparison_exp? get times;
  Gtimestamptz_comparison_exp? get updated_at;
  Guuid_comparison_exp? get updated_by;
  Gusers_bool_exp? get user;
  GString_comparison_exp? get word;
  static Serializer<Gwords_bool_exp> get serializer =>
      _$gwordsBoolExpSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gwords_bool_exp.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gwords_bool_exp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gwords_bool_exp.serializer,
        json,
      );
}

class Gwords_constraint extends EnumClass {
  const Gwords_constraint._(String name) : super(name);

  static const Gwords_constraint words_pkey = _$gwordsConstraintwords_pkey;

  static const Gwords_constraint words_word_created_by_key =
      _$gwordsConstraintwords_word_created_by_key;

  static Serializer<Gwords_constraint> get serializer =>
      _$gwordsConstraintSerializer;
  static BuiltSet<Gwords_constraint> get values => _$gwordsConstraintValues;
  static Gwords_constraint valueOf(String name) =>
      _$gwordsConstraintValueOf(name);
}

abstract class Gwords_inc_input
    implements Built<Gwords_inc_input, Gwords_inc_inputBuilder> {
  Gwords_inc_input._();

  factory Gwords_inc_input([Function(Gwords_inc_inputBuilder b) updates]) =
      _$Gwords_inc_input;

  int? get times;
  static Serializer<Gwords_inc_input> get serializer =>
      _$gwordsIncInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gwords_inc_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gwords_inc_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gwords_inc_input.serializer,
        json,
      );
}

abstract class Gwords_insert_input
    implements Built<Gwords_insert_input, Gwords_insert_inputBuilder> {
  Gwords_insert_input._();

  factory Gwords_insert_input(
      [Function(Gwords_insert_inputBuilder b) updates]) = _$Gwords_insert_input;

  Gtimestamptz? get created_at;
  Guuid? get created_by;
  Gtimestamptz? get deleted_at;
  Guuid? get id;
  bool? get is_done;
  int? get times;
  Gtimestamptz? get updated_at;
  Guuid? get updated_by;
  Gusers_obj_rel_insert_input? get user;
  String? get word;
  static Serializer<Gwords_insert_input> get serializer =>
      _$gwordsInsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gwords_insert_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gwords_insert_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gwords_insert_input.serializer,
        json,
      );
}

abstract class Gwords_on_conflict
    implements Built<Gwords_on_conflict, Gwords_on_conflictBuilder> {
  Gwords_on_conflict._();

  factory Gwords_on_conflict([Function(Gwords_on_conflictBuilder b) updates]) =
      _$Gwords_on_conflict;

  Gwords_constraint get constraint;
  BuiltList<Gwords_update_column> get update_columns;
  Gwords_bool_exp? get where;
  static Serializer<Gwords_on_conflict> get serializer =>
      _$gwordsOnConflictSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gwords_on_conflict.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gwords_on_conflict? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gwords_on_conflict.serializer,
        json,
      );
}

abstract class Gwords_order_by
    implements Built<Gwords_order_by, Gwords_order_byBuilder> {
  Gwords_order_by._();

  factory Gwords_order_by([Function(Gwords_order_byBuilder b) updates]) =
      _$Gwords_order_by;

  Gorder_by? get created_at;
  Gorder_by? get created_by;
  Gorder_by? get deleted_at;
  Gorder_by? get id;
  Gorder_by? get is_done;
  Gorder_by? get times;
  Gorder_by? get updated_at;
  Gorder_by? get updated_by;
  Gusers_order_by? get user;
  Gorder_by? get word;
  static Serializer<Gwords_order_by> get serializer =>
      _$gwordsOrderBySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gwords_order_by.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gwords_order_by? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gwords_order_by.serializer,
        json,
      );
}

abstract class Gwords_pk_columns_input
    implements Built<Gwords_pk_columns_input, Gwords_pk_columns_inputBuilder> {
  Gwords_pk_columns_input._();

  factory Gwords_pk_columns_input(
          [Function(Gwords_pk_columns_inputBuilder b) updates]) =
      _$Gwords_pk_columns_input;

  Guuid get id;
  static Serializer<Gwords_pk_columns_input> get serializer =>
      _$gwordsPkColumnsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gwords_pk_columns_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gwords_pk_columns_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gwords_pk_columns_input.serializer,
        json,
      );
}

class Gwords_select_column extends EnumClass {
  const Gwords_select_column._(String name) : super(name);

  static const Gwords_select_column created_at = _$gwordsSelectColumncreated_at;

  static const Gwords_select_column created_by = _$gwordsSelectColumncreated_by;

  static const Gwords_select_column deleted_at = _$gwordsSelectColumndeleted_at;

  static const Gwords_select_column id = _$gwordsSelectColumnid;

  static const Gwords_select_column is_done = _$gwordsSelectColumnis_done;

  static const Gwords_select_column times = _$gwordsSelectColumntimes;

  static const Gwords_select_column updated_at = _$gwordsSelectColumnupdated_at;

  static const Gwords_select_column updated_by = _$gwordsSelectColumnupdated_by;

  static const Gwords_select_column word = _$gwordsSelectColumnword;

  static Serializer<Gwords_select_column> get serializer =>
      _$gwordsSelectColumnSerializer;
  static BuiltSet<Gwords_select_column> get values =>
      _$gwordsSelectColumnValues;
  static Gwords_select_column valueOf(String name) =>
      _$gwordsSelectColumnValueOf(name);
}

abstract class Gwords_set_input
    implements Built<Gwords_set_input, Gwords_set_inputBuilder> {
  Gwords_set_input._();

  factory Gwords_set_input([Function(Gwords_set_inputBuilder b) updates]) =
      _$Gwords_set_input;

  Gtimestamptz? get created_at;
  Guuid? get created_by;
  Gtimestamptz? get deleted_at;
  Guuid? get id;
  bool? get is_done;
  int? get times;
  Gtimestamptz? get updated_at;
  Guuid? get updated_by;
  String? get word;
  static Serializer<Gwords_set_input> get serializer =>
      _$gwordsSetInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gwords_set_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gwords_set_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gwords_set_input.serializer,
        json,
      );
}

abstract class Gwords_stream_cursor_input
    implements
        Built<Gwords_stream_cursor_input, Gwords_stream_cursor_inputBuilder> {
  Gwords_stream_cursor_input._();

  factory Gwords_stream_cursor_input(
          [Function(Gwords_stream_cursor_inputBuilder b) updates]) =
      _$Gwords_stream_cursor_input;

  Gwords_stream_cursor_value_input get initial_value;
  Gcursor_ordering? get ordering;
  static Serializer<Gwords_stream_cursor_input> get serializer =>
      _$gwordsStreamCursorInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gwords_stream_cursor_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gwords_stream_cursor_input? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gwords_stream_cursor_input.serializer,
        json,
      );
}

abstract class Gwords_stream_cursor_value_input
    implements
        Built<Gwords_stream_cursor_value_input,
            Gwords_stream_cursor_value_inputBuilder> {
  Gwords_stream_cursor_value_input._();

  factory Gwords_stream_cursor_value_input(
          [Function(Gwords_stream_cursor_value_inputBuilder b) updates]) =
      _$Gwords_stream_cursor_value_input;

  Gtimestamptz? get created_at;
  Guuid? get created_by;
  Gtimestamptz? get deleted_at;
  Guuid? get id;
  bool? get is_done;
  int? get times;
  Gtimestamptz? get updated_at;
  Guuid? get updated_by;
  String? get word;
  static Serializer<Gwords_stream_cursor_value_input> get serializer =>
      _$gwordsStreamCursorValueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gwords_stream_cursor_value_input.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gwords_stream_cursor_value_input? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gwords_stream_cursor_value_input.serializer,
        json,
      );
}

class Gwords_update_column extends EnumClass {
  const Gwords_update_column._(String name) : super(name);

  static const Gwords_update_column created_at = _$gwordsUpdateColumncreated_at;

  static const Gwords_update_column created_by = _$gwordsUpdateColumncreated_by;

  static const Gwords_update_column deleted_at = _$gwordsUpdateColumndeleted_at;

  static const Gwords_update_column id = _$gwordsUpdateColumnid;

  static const Gwords_update_column is_done = _$gwordsUpdateColumnis_done;

  static const Gwords_update_column times = _$gwordsUpdateColumntimes;

  static const Gwords_update_column updated_at = _$gwordsUpdateColumnupdated_at;

  static const Gwords_update_column updated_by = _$gwordsUpdateColumnupdated_by;

  static const Gwords_update_column word = _$gwordsUpdateColumnword;

  static Serializer<Gwords_update_column> get serializer =>
      _$gwordsUpdateColumnSerializer;
  static BuiltSet<Gwords_update_column> get values =>
      _$gwordsUpdateColumnValues;
  static Gwords_update_column valueOf(String name) =>
      _$gwordsUpdateColumnValueOf(name);
}

abstract class Gwords_updates
    implements Built<Gwords_updates, Gwords_updatesBuilder> {
  Gwords_updates._();

  factory Gwords_updates([Function(Gwords_updatesBuilder b) updates]) =
      _$Gwords_updates;

  @BuiltValueField(wireName: '_inc')
  Gwords_inc_input? get G_inc;
  @BuiltValueField(wireName: '_set')
  Gwords_set_input? get G_set;
  Gwords_bool_exp get where;
  static Serializer<Gwords_updates> get serializer => _$gwordsUpdatesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gwords_updates.serializer,
        this,
      ) as Map<String, dynamic>);
  static Gwords_updates? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gwords_updates.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
