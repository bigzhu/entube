import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part app_models.dart;
part 'app_models.g.dart';

/// Boolean expression to compare columns of type "Boolean". All fields are combined with logical 'AND'. 
@unfreezed
class BooleanComparisonExp with _$BooleanComparisonExp {
  const BooleanComparisonExp._();

  /// Boolean expression to compare columns of type "Boolean". All fields are combined with logical 'AND'. 
  const factory BooleanComparisonExp({
    @JsonKey(name: '_eq')
    bool? eq,
    @JsonKey(name: '_gt')
    bool? gt,
    @JsonKey(name: '_gte')
    bool? gte,
    @JsonKey(name: '_in')
    List<bool>? in,
    @JsonKey(name: '_is_null')
    bool? isNull,
    @JsonKey(name: '_lt')
    bool? lt,
    @JsonKey(name: '_lte')
    bool? lte,
    @JsonKey(name: '_neq')
    bool? neq,
    @JsonKey(name: '_nin')
    List<bool>? nin,
  }) = _BooleanComparisonExp;

  factory BooleanComparisonExp.fromJson(Map<String, Object?> json) => _BooleanComparisonExpFromJson(json);
}

/// Boolean expression to compare columns of type "Int". All fields are combined with logical 'AND'. 
@unfreezed
class IntComparisonExp with _$IntComparisonExp {
  const IntComparisonExp._();

  /// Boolean expression to compare columns of type "Int". All fields are combined with logical 'AND'. 
  const factory IntComparisonExp({
    @JsonKey(name: '_eq')
    int? eq,
    @JsonKey(name: '_gt')
    int? gt,
    @JsonKey(name: '_gte')
    int? gte,
    @JsonKey(name: '_in')
    List<int>? in,
    @JsonKey(name: '_is_null')
    bool? isNull,
    @JsonKey(name: '_lt')
    int? lt,
    @JsonKey(name: '_lte')
    int? lte,
    @JsonKey(name: '_neq')
    int? neq,
    @JsonKey(name: '_nin')
    List<int>? nin,
  }) = _IntComparisonExp;

  factory IntComparisonExp.fromJson(Map<String, Object?> json) => _IntComparisonExpFromJson(json);
}

/// Boolean expression to compare columns of type "String". All fields are combined with logical 'AND'. 
@unfreezed
class StringComparisonExp with _$StringComparisonExp {
  const StringComparisonExp._();

  /// Boolean expression to compare columns of type "String". All fields are combined with logical 'AND'. 
  const factory StringComparisonExp({
    @JsonKey(name: '_eq')
    String? eq,
    @JsonKey(name: '_gt')
    String? gt,
    @JsonKey(name: '_gte')
    String? gte,
    /// does the column match the given case-insensitive pattern
    @JsonKey(name: '_ilike')
    String? ilike,
    @JsonKey(name: '_in')
    List<String>? in,
    /// does the column match the given POSIX regular expression, case insensitive
    @JsonKey(name: '_iregex')
    String? iregex,
    @JsonKey(name: '_is_null')
    bool? isNull,
    /// does the column match the given pattern
    @JsonKey(name: '_like')
    String? like,
    @JsonKey(name: '_lt')
    String? lt,
    @JsonKey(name: '_lte')
    String? lte,
    @JsonKey(name: '_neq')
    String? neq,
    /// does the column NOT match the given case-insensitive pattern
    @JsonKey(name: '_nilike')
    String? nilike,
    @JsonKey(name: '_nin')
    List<String>? nin,
    /// does the column NOT match the given POSIX regular expression, case insensitive
    @JsonKey(name: '_niregex')
    String? niregex,
    /// does the column NOT match the given pattern
    @JsonKey(name: '_nlike')
    String? nlike,
    /// does the column NOT match the given POSIX regular expression, case sensitive
    @JsonKey(name: '_nregex')
    String? nregex,
    /// does the column NOT match the given SQL regular expression
    @JsonKey(name: '_nsimilar')
    String? nsimilar,
    /// does the column match the given POSIX regular expression, case sensitive
    @JsonKey(name: '_regex')
    String? regex,
    /// does the column match the given SQL regular expression
    @JsonKey(name: '_similar')
    String? similar,
  }) = _StringComparisonExp;

  factory StringComparisonExp.fromJson(Map<String, Object?> json) => _StringComparisonExpFromJson(json);
}

/// columns and relationships of "article" 
@freezed
class Article with _$Article {
  const Article._();

  /// columns and relationships of "article" 
  const factory Article({
    @JsonKey(name: 'created_at')
    required timestamptz createdAt,
    @JsonKey(name: 'created_by')
    uuid? createdBy,
    @JsonKey(name: 'deleted_at')
    timestamptz? deletedAt,
    String? favicon,
    required uuid id,
    required jsonb sentences,
    String? thumbnail,
    String? title,
    @JsonKey(name: 'updated_at')
    required timestamptz updatedAt,
    @JsonKey(name: 'updated_by')
    uuid? updatedBy,
    required String url,
  }) = _Article;

  factory Article.fromJson(Map<String, Object?> json) => _ArticleFromJson(json);
}

/// aggregated selection of "article" 
@freezed
class ArticleAggregate with _$ArticleAggregate {
  const ArticleAggregate._();

  /// aggregated selection of "article" 
  const factory ArticleAggregate({
    article_aggregate_fields? aggregate,
    required List<article> nodes,
  }) = _ArticleAggregate;

  factory ArticleAggregate.fromJson(Map<String, Object?> json) => _ArticleAggregateFromJson(json);
}

/// aggregate fields of "article" 
@freezed
class ArticleAggregateFields with _$ArticleAggregateFields {
  const ArticleAggregateFields._();

  /// aggregate fields of "article" 
  const factory ArticleAggregateFields({
    required int count,
    article_max_fields? max,
    article_min_fields? min,
  }) = _ArticleAggregateFields;

  factory ArticleAggregateFields.fromJson(Map<String, Object?> json) => _ArticleAggregateFieldsFromJson(json);
}

/// append existing jsonb value of filtered columns with new jsonb value 
@unfreezed
class ArticleAppendInput with _$ArticleAppendInput {
  const ArticleAppendInput._();

  /// append existing jsonb value of filtered columns with new jsonb value 
  const factory ArticleAppendInput({
    jsonb? sentences,
  }) = _ArticleAppendInput;

  factory ArticleAppendInput.fromJson(Map<String, Object?> json) => _ArticleAppendInputFromJson(json);
}

/// Boolean expression to filter rows from the table "article". All fields are combined with a logical 'AND'. 
@unfreezed
class ArticleBoolExp with _$ArticleBoolExp {
  const ArticleBoolExp._();

  /// Boolean expression to filter rows from the table "article". All fields are combined with a logical 'AND'. 
  const factory ArticleBoolExp({
    @JsonKey(name: '_and')
    List<article_bool_exp>? and,
    @JsonKey(name: '_not')
    article_bool_exp? not,
    @JsonKey(name: '_or')
    List<article_bool_exp>? or,
    @JsonKey(name: 'created_at')
    timestamptz_comparison_exp? createdAt,
    @JsonKey(name: 'created_by')
    uuid_comparison_exp? createdBy,
    @JsonKey(name: 'deleted_at')
    timestamptz_comparison_exp? deletedAt,
    String_comparison_exp? favicon,
    uuid_comparison_exp? id,
    jsonb_comparison_exp? sentences,
    String_comparison_exp? thumbnail,
    String_comparison_exp? title,
    @JsonKey(name: 'updated_at')
    timestamptz_comparison_exp? updatedAt,
    @JsonKey(name: 'updated_by')
    uuid_comparison_exp? updatedBy,
    String_comparison_exp? url,
  }) = _ArticleBoolExp;

  factory ArticleBoolExp.fromJson(Map<String, Object?> json) => _ArticleBoolExpFromJson(json);
}

enum ArticleConstraint{
  /// unique or primary key constraint on columns "id" 
@JsonKey(name: article_pkey) article_pkey
}

/// delete the field or element with specified path (for JSON arrays, negative integers count from the end) 
@unfreezed
class ArticleDeleteAtPathInput with _$ArticleDeleteAtPathInput {
  const ArticleDeleteAtPathInput._();

  /// delete the field or element with specified path (for JSON arrays, negative integers count from the end) 
  const factory ArticleDeleteAtPathInput({
    List<String>? sentences,
  }) = _ArticleDeleteAtPathInput;

  factory ArticleDeleteAtPathInput.fromJson(Map<String, Object?> json) => _ArticleDeleteAtPathInputFromJson(json);
}

/// delete the array element with specified index (negative integers count from the end). throws an error if top level container is not an array 
@unfreezed
class ArticleDeleteElemInput with _$ArticleDeleteElemInput {
  const ArticleDeleteElemInput._();

  /// delete the array element with specified index (negative integers count from the end). throws an error if top level container is not an array 
  const factory ArticleDeleteElemInput({
    int? sentences,
  }) = _ArticleDeleteElemInput;

  factory ArticleDeleteElemInput.fromJson(Map<String, Object?> json) => _ArticleDeleteElemInputFromJson(json);
}

/// delete key/value pair or string element. key/value pairs are matched based on their key value 
@unfreezed
class ArticleDeleteKeyInput with _$ArticleDeleteKeyInput {
  const ArticleDeleteKeyInput._();

  /// delete key/value pair or string element. key/value pairs are matched based on their key value 
  const factory ArticleDeleteKeyInput({
    String? sentences,
  }) = _ArticleDeleteKeyInput;

  factory ArticleDeleteKeyInput.fromJson(Map<String, Object?> json) => _ArticleDeleteKeyInputFromJson(json);
}

/// input type for inserting data into table "article" 
@unfreezed
class ArticleInsertInput with _$ArticleInsertInput {
  const ArticleInsertInput._();

  /// input type for inserting data into table "article" 
  const factory ArticleInsertInput({
    @JsonKey(name: 'created_at')
    timestamptz? createdAt,
    @JsonKey(name: 'created_by')
    uuid? createdBy,
    @JsonKey(name: 'deleted_at')
    timestamptz? deletedAt,
    String? favicon,
    uuid? id,
    jsonb? sentences,
    String? thumbnail,
    String? title,
    @JsonKey(name: 'updated_at')
    timestamptz? updatedAt,
    @JsonKey(name: 'updated_by')
    uuid? updatedBy,
    String? url,
  }) = _ArticleInsertInput;

  factory ArticleInsertInput.fromJson(Map<String, Object?> json) => _ArticleInsertInputFromJson(json);
}

/// aggregate max on columns 
@freezed
class ArticleMaxFields with _$ArticleMaxFields {
  const ArticleMaxFields._();

  /// aggregate max on columns 
  const factory ArticleMaxFields({
    @JsonKey(name: 'created_at')
    timestamptz? createdAt,
    @JsonKey(name: 'created_by')
    uuid? createdBy,
    @JsonKey(name: 'deleted_at')
    timestamptz? deletedAt,
    String? favicon,
    uuid? id,
    String? thumbnail,
    String? title,
    @JsonKey(name: 'updated_at')
    timestamptz? updatedAt,
    @JsonKey(name: 'updated_by')
    uuid? updatedBy,
    String? url,
  }) = _ArticleMaxFields;

  factory ArticleMaxFields.fromJson(Map<String, Object?> json) => _ArticleMaxFieldsFromJson(json);
}

/// aggregate min on columns 
@freezed
class ArticleMinFields with _$ArticleMinFields {
  const ArticleMinFields._();

  /// aggregate min on columns 
  const factory ArticleMinFields({
    @JsonKey(name: 'created_at')
    timestamptz? createdAt,
    @JsonKey(name: 'created_by')
    uuid? createdBy,
    @JsonKey(name: 'deleted_at')
    timestamptz? deletedAt,
    String? favicon,
    uuid? id,
    String? thumbnail,
    String? title,
    @JsonKey(name: 'updated_at')
    timestamptz? updatedAt,
    @JsonKey(name: 'updated_by')
    uuid? updatedBy,
    String? url,
  }) = _ArticleMinFields;

  factory ArticleMinFields.fromJson(Map<String, Object?> json) => _ArticleMinFieldsFromJson(json);
}

/// response of any mutation on the table "article" 
@freezed
class ArticleMutationResponse with _$ArticleMutationResponse {
  const ArticleMutationResponse._();

  /// response of any mutation on the table "article" 
  const factory ArticleMutationResponse({
    /// number of rows affected by the mutation
    @JsonKey(name: 'affected_rows')
    required int affectedRows,
    /// data from the rows affected by the mutation
    required List<article> returning,
  }) = _ArticleMutationResponse;

  factory ArticleMutationResponse.fromJson(Map<String, Object?> json) => _ArticleMutationResponseFromJson(json);
}

/// on_conflict condition type for table "article" 
@unfreezed
class ArticleOnConflict with _$ArticleOnConflict {
  const ArticleOnConflict._();

  /// on_conflict condition type for table "article" 
  const factory ArticleOnConflict({
    required article_constraint constraint,
    @JsonKey(name: 'update_columns')
    required List<article_update_column> updateColumns,
    article_bool_exp? where,
  }) = _ArticleOnConflict;

  factory ArticleOnConflict.fromJson(Map<String, Object?> json) => _ArticleOnConflictFromJson(json);
}

/// Ordering options when selecting data from "article". 
@unfreezed
class ArticleOrderBy with _$ArticleOrderBy {
  const ArticleOrderBy._();

  /// Ordering options when selecting data from "article". 
  const factory ArticleOrderBy({
    @JsonKey(name: 'created_at')
    order_by? createdAt,
    @JsonKey(name: 'created_by')
    order_by? createdBy,
    @JsonKey(name: 'deleted_at')
    order_by? deletedAt,
    order_by? favicon,
    order_by? id,
    order_by? sentences,
    order_by? thumbnail,
    order_by? title,
    @JsonKey(name: 'updated_at')
    order_by? updatedAt,
    @JsonKey(name: 'updated_by')
    order_by? updatedBy,
    order_by? url,
  }) = _ArticleOrderBy;

  factory ArticleOrderBy.fromJson(Map<String, Object?> json) => _ArticleOrderByFromJson(json);
}

/// primary key columns input for table: article 
@unfreezed
class ArticlePkColumnsInput with _$ArticlePkColumnsInput {
  const ArticlePkColumnsInput._();

  /// primary key columns input for table: article 
  const factory ArticlePkColumnsInput({
    required uuid id,
  }) = _ArticlePkColumnsInput;

  factory ArticlePkColumnsInput.fromJson(Map<String, Object?> json) => _ArticlePkColumnsInputFromJson(json);
}

/// prepend existing jsonb value of filtered columns with new jsonb value 
@unfreezed
class ArticlePrependInput with _$ArticlePrependInput {
  const ArticlePrependInput._();

  /// prepend existing jsonb value of filtered columns with new jsonb value 
  const factory ArticlePrependInput({
    jsonb? sentences,
  }) = _ArticlePrependInput;

  factory ArticlePrependInput.fromJson(Map<String, Object?> json) => _ArticlePrependInputFromJson(json);
}

enum ArticleSelectColumn{
  /// column name 
@JsonKey(name: created_at) created_at
  /// column name 
@JsonKey(name: created_by) created_by
  /// column name 
@JsonKey(name: deleted_at) deleted_at
  /// column name 
@JsonKey(name: favicon) favicon
  /// column name 
@JsonKey(name: id) id
  /// column name 
@JsonKey(name: sentences) sentences
  /// column name 
@JsonKey(name: thumbnail) thumbnail
  /// column name 
@JsonKey(name: title) title
  /// column name 
@JsonKey(name: updated_at) updated_at
  /// column name 
@JsonKey(name: updated_by) updated_by
  /// column name 
@JsonKey(name: url) url
}

/// input type for updating data in table "article" 
@unfreezed
class ArticleSetInput with _$ArticleSetInput {
  const ArticleSetInput._();

  /// input type for updating data in table "article" 
  const factory ArticleSetInput({
    @JsonKey(name: 'created_at')
    timestamptz? createdAt,
    @JsonKey(name: 'created_by')
    uuid? createdBy,
    @JsonKey(name: 'deleted_at')
    timestamptz? deletedAt,
    String? favicon,
    uuid? id,
    jsonb? sentences,
    String? thumbnail,
    String? title,
    @JsonKey(name: 'updated_at')
    timestamptz? updatedAt,
    @JsonKey(name: 'updated_by')
    uuid? updatedBy,
    String? url,
  }) = _ArticleSetInput;

  factory ArticleSetInput.fromJson(Map<String, Object?> json) => _ArticleSetInputFromJson(json);
}

/// Streaming cursor of the table "article" 
@unfreezed
class ArticleStreamCursorInput with _$ArticleStreamCursorInput {
  const ArticleStreamCursorInput._();

  /// Streaming cursor of the table "article" 
  const factory ArticleStreamCursorInput({
    /// Stream column input with initial value
    @JsonKey(name: 'initial_value')
    required article_stream_cursor_value_input initialValue,
    /// cursor ordering
    cursor_ordering? ordering,
  }) = _ArticleStreamCursorInput;

  factory ArticleStreamCursorInput.fromJson(Map<String, Object?> json) => _ArticleStreamCursorInputFromJson(json);
}

/// Initial value of the column from where the streaming should start 
@unfreezed
class ArticleStreamCursorValueInput with _$ArticleStreamCursorValueInput {
  const ArticleStreamCursorValueInput._();

  /// Initial value of the column from where the streaming should start 
  const factory ArticleStreamCursorValueInput({
    @JsonKey(name: 'created_at')
    timestamptz? createdAt,
    @JsonKey(name: 'created_by')
    uuid? createdBy,
    @JsonKey(name: 'deleted_at')
    timestamptz? deletedAt,
    String? favicon,
    uuid? id,
    jsonb? sentences,
    String? thumbnail,
    String? title,
    @JsonKey(name: 'updated_at')
    timestamptz? updatedAt,
    @JsonKey(name: 'updated_by')
    uuid? updatedBy,
    String? url,
  }) = _ArticleStreamCursorValueInput;

  factory ArticleStreamCursorValueInput.fromJson(Map<String, Object?> json) => _ArticleStreamCursorValueInputFromJson(json);
}

enum ArticleUpdateColumn{
  /// column name 
@JsonKey(name: created_at) created_at
  /// column name 
@JsonKey(name: created_by) created_by
  /// column name 
@JsonKey(name: deleted_at) deleted_at
  /// column name 
@JsonKey(name: favicon) favicon
  /// column name 
@JsonKey(name: id) id
  /// column name 
@JsonKey(name: sentences) sentences
  /// column name 
@JsonKey(name: thumbnail) thumbnail
  /// column name 
@JsonKey(name: title) title
  /// column name 
@JsonKey(name: updated_at) updated_at
  /// column name 
@JsonKey(name: updated_by) updated_by
  /// column name 
@JsonKey(name: url) url
}

@unfreezed
class ArticleUpdates with _$ArticleUpdates {
  const ArticleUpdates._();

  const factory ArticleUpdates({
    /// append existing jsonb value of filtered columns with new jsonb value
    @JsonKey(name: '_append')
    article_append_input? append,
    /// delete the field or element with specified path (for JSON arrays, negative integers count from the end)
    @JsonKey(name: '_delete_at_path')
    article_delete_at_path_input? deleteAtPath,
    /// delete the array element with specified index (negative integers count from the end). throws an error if top level container is not an array
    @JsonKey(name: '_delete_elem')
    article_delete_elem_input? deleteElem,
    /// delete key/value pair or string element. key/value pairs are matched based on their key value
    @JsonKey(name: '_delete_key')
    article_delete_key_input? deleteKey,
    /// prepend existing jsonb value of filtered columns with new jsonb value
    @JsonKey(name: '_prepend')
    article_prepend_input? prepend,
    /// sets the columns of the filtered rows to the given values
    @JsonKey(name: '_set')
    article_set_input? set,
    required article_bool_exp where,
  }) = _ArticleUpdates;

  factory ArticleUpdates.fromJson(Map<String, Object?> json) => _ArticleUpdatesFromJson(json);
}

/// Oauth requests, inserted before redirecting to the provider's site. Don't modify its structure as Hasura Auth relies on it to function properly. 
@freezed
class AuthProviderRequests with _$AuthProviderRequests {
  const AuthProviderRequests._();

  /// Oauth requests, inserted before redirecting to the provider's site. Don't modify its structure as Hasura Auth relies on it to function properly. 
  const factory AuthProviderRequests({
    required uuid id,
    jsonb? options,
  }) = _AuthProviderRequests;

  factory AuthProviderRequests.fromJson(Map<String, Object?> json) => _AuthProviderRequestsFromJson(json);
}

/// aggregated selection of "auth.provider_requests" 
@freezed
class AuthProviderRequestsAggregate with _$AuthProviderRequestsAggregate {
  const AuthProviderRequestsAggregate._();

  /// aggregated selection of "auth.provider_requests" 
  const factory AuthProviderRequestsAggregate({
    authProviderRequests_aggregate_fields? aggregate,
    required List<authProviderRequests> nodes,
  }) = _AuthProviderRequestsAggregate;

  factory AuthProviderRequestsAggregate.fromJson(Map<String, Object?> json) => _AuthProviderRequestsAggregateFromJson(json);
}

/// aggregate fields of "auth.provider_requests" 
@freezed
class AuthProviderRequestsAggregateFields with _$AuthProviderRequestsAggregateFields {
  const AuthProviderRequestsAggregateFields._();

  /// aggregate fields of "auth.provider_requests" 
  const factory AuthProviderRequestsAggregateFields({
    required int count,
    authProviderRequests_max_fields? max,
    authProviderRequests_min_fields? min,
  }) = _AuthProviderRequestsAggregateFields;

  factory AuthProviderRequestsAggregateFields.fromJson(Map<String, Object?> json) => _AuthProviderRequestsAggregateFieldsFromJson(json);
}

/// append existing jsonb value of filtered columns with new jsonb value 
@unfreezed
class AuthProviderRequestsAppendInput with _$AuthProviderRequestsAppendInput {
  const AuthProviderRequestsAppendInput._();

  /// append existing jsonb value of filtered columns with new jsonb value 
  const factory AuthProviderRequestsAppendInput({
    jsonb? options,
  }) = _AuthProviderRequestsAppendInput;

  factory AuthProviderRequestsAppendInput.fromJson(Map<String, Object?> json) => _AuthProviderRequestsAppendInputFromJson(json);
}

/// Boolean expression to filter rows from the table "auth.provider_requests". All fields are combined with a logical 'AND'. 
@unfreezed
class AuthProviderRequestsBoolExp with _$AuthProviderRequestsBoolExp {
  const AuthProviderRequestsBoolExp._();

  /// Boolean expression to filter rows from the table "auth.provider_requests". All fields are combined with a logical 'AND'. 
  const factory AuthProviderRequestsBoolExp({
    @JsonKey(name: '_and')
    List<authProviderRequests_bool_exp>? and,
    @JsonKey(name: '_not')
    authProviderRequests_bool_exp? not,
    @JsonKey(name: '_or')
    List<authProviderRequests_bool_exp>? or,
    uuid_comparison_exp? id,
    jsonb_comparison_exp? options,
  }) = _AuthProviderRequestsBoolExp;

  factory AuthProviderRequestsBoolExp.fromJson(Map<String, Object?> json) => _AuthProviderRequestsBoolExpFromJson(json);
}

enum AuthProviderRequestsConstraint{
  /// unique or primary key constraint on columns "id" 
@JsonKey(name: provider_requests_pkey) provider_requests_pkey
}

/// delete the field or element with specified path (for JSON arrays, negative integers count from the end) 
@unfreezed
class AuthProviderRequestsDeleteAtPathInput with _$AuthProviderRequestsDeleteAtPathInput {
  const AuthProviderRequestsDeleteAtPathInput._();

  /// delete the field or element with specified path (for JSON arrays, negative integers count from the end) 
  const factory AuthProviderRequestsDeleteAtPathInput({
    List<String>? options,
  }) = _AuthProviderRequestsDeleteAtPathInput;

  factory AuthProviderRequestsDeleteAtPathInput.fromJson(Map<String, Object?> json) => _AuthProviderRequestsDeleteAtPathInputFromJson(json);
}

/// delete the array element with specified index (negative integers count from the end). throws an error if top level container is not an array 
@unfreezed
class AuthProviderRequestsDeleteElemInput with _$AuthProviderRequestsDeleteElemInput {
  const AuthProviderRequestsDeleteElemInput._();

  /// delete the array element with specified index (negative integers count from the end). throws an error if top level container is not an array 
  const factory AuthProviderRequestsDeleteElemInput({
    int? options,
  }) = _AuthProviderRequestsDeleteElemInput;

  factory AuthProviderRequestsDeleteElemInput.fromJson(Map<String, Object?> json) => _AuthProviderRequestsDeleteElemInputFromJson(json);
}

/// delete key/value pair or string element. key/value pairs are matched based on their key value 
@unfreezed
class AuthProviderRequestsDeleteKeyInput with _$AuthProviderRequestsDeleteKeyInput {
  const AuthProviderRequestsDeleteKeyInput._();

  /// delete key/value pair or string element. key/value pairs are matched based on their key value 
  const factory AuthProviderRequestsDeleteKeyInput({
    String? options,
  }) = _AuthProviderRequestsDeleteKeyInput;

  factory AuthProviderRequestsDeleteKeyInput.fromJson(Map<String, Object?> json) => _AuthProviderRequestsDeleteKeyInputFromJson(json);
}

/// input type for inserting data into table "auth.provider_requests" 
@unfreezed
class AuthProviderRequestsInsertInput with _$AuthProviderRequestsInsertInput {
  const AuthProviderRequestsInsertInput._();

  /// input type for inserting data into table "auth.provider_requests" 
  const factory AuthProviderRequestsInsertInput({
    uuid? id,
    jsonb? options,
  }) = _AuthProviderRequestsInsertInput;

  factory AuthProviderRequestsInsertInput.fromJson(Map<String, Object?> json) => _AuthProviderRequestsInsertInputFromJson(json);
}

/// aggregate max on columns 
@freezed
class AuthProviderRequestsMaxFields with _$AuthProviderRequestsMaxFields {
  const AuthProviderRequestsMaxFields._();

  /// aggregate max on columns 
  const factory AuthProviderRequestsMaxFields({
    uuid? id,
  }) = _AuthProviderRequestsMaxFields;

  factory AuthProviderRequestsMaxFields.fromJson(Map<String, Object?> json) => _AuthProviderRequestsMaxFieldsFromJson(json);
}

/// aggregate min on columns 
@freezed
class AuthProviderRequestsMinFields with _$AuthProviderRequestsMinFields {
  const AuthProviderRequestsMinFields._();

  /// aggregate min on columns 
  const factory AuthProviderRequestsMinFields({
    uuid? id,
  }) = _AuthProviderRequestsMinFields;

  factory AuthProviderRequestsMinFields.fromJson(Map<String, Object?> json) => _AuthProviderRequestsMinFieldsFromJson(json);
}

/// response of any mutation on the table "auth.provider_requests" 
@freezed
class AuthProviderRequestsMutationResponse with _$AuthProviderRequestsMutationResponse {
  const AuthProviderRequestsMutationResponse._();

  /// response of any mutation on the table "auth.provider_requests" 
  const factory AuthProviderRequestsMutationResponse({
    /// number of rows affected by the mutation
    @JsonKey(name: 'affected_rows')
    required int affectedRows,
    /// data from the rows affected by the mutation
    required List<authProviderRequests> returning,
  }) = _AuthProviderRequestsMutationResponse;

  factory AuthProviderRequestsMutationResponse.fromJson(Map<String, Object?> json) => _AuthProviderRequestsMutationResponseFromJson(json);
}

/// on_conflict condition type for table "auth.provider_requests" 
@unfreezed
class AuthProviderRequestsOnConflict with _$AuthProviderRequestsOnConflict {
  const AuthProviderRequestsOnConflict._();

  /// on_conflict condition type for table "auth.provider_requests" 
  const factory AuthProviderRequestsOnConflict({
    required authProviderRequests_constraint constraint,
    @JsonKey(name: 'update_columns')
    required List<authProviderRequests_update_column> updateColumns,
    authProviderRequests_bool_exp? where,
  }) = _AuthProviderRequestsOnConflict;

  factory AuthProviderRequestsOnConflict.fromJson(Map<String, Object?> json) => _AuthProviderRequestsOnConflictFromJson(json);
}

/// Ordering options when selecting data from "auth.provider_requests". 
@unfreezed
class AuthProviderRequestsOrderBy with _$AuthProviderRequestsOrderBy {
  const AuthProviderRequestsOrderBy._();

  /// Ordering options when selecting data from "auth.provider_requests". 
  const factory AuthProviderRequestsOrderBy({
    order_by? id,
    order_by? options,
  }) = _AuthProviderRequestsOrderBy;

  factory AuthProviderRequestsOrderBy.fromJson(Map<String, Object?> json) => _AuthProviderRequestsOrderByFromJson(json);
}

/// primary key columns input for table: auth.provider_requests 
@unfreezed
class AuthProviderRequestsPkColumnsInput with _$AuthProviderRequestsPkColumnsInput {
  const AuthProviderRequestsPkColumnsInput._();

  /// primary key columns input for table: auth.provider_requests 
  const factory AuthProviderRequestsPkColumnsInput({
    required uuid id,
  }) = _AuthProviderRequestsPkColumnsInput;

  factory AuthProviderRequestsPkColumnsInput.fromJson(Map<String, Object?> json) => _AuthProviderRequestsPkColumnsInputFromJson(json);
}

/// prepend existing jsonb value of filtered columns with new jsonb value 
@unfreezed
class AuthProviderRequestsPrependInput with _$AuthProviderRequestsPrependInput {
  const AuthProviderRequestsPrependInput._();

  /// prepend existing jsonb value of filtered columns with new jsonb value 
  const factory AuthProviderRequestsPrependInput({
    jsonb? options,
  }) = _AuthProviderRequestsPrependInput;

  factory AuthProviderRequestsPrependInput.fromJson(Map<String, Object?> json) => _AuthProviderRequestsPrependInputFromJson(json);
}

enum AuthProviderRequestsSelectColumn{
  /// column name 
@JsonKey(name: id) id
  /// column name 
@JsonKey(name: options) options
}

/// input type for updating data in table "auth.provider_requests" 
@unfreezed
class AuthProviderRequestsSetInput with _$AuthProviderRequestsSetInput {
  const AuthProviderRequestsSetInput._();

  /// input type for updating data in table "auth.provider_requests" 
  const factory AuthProviderRequestsSetInput({
    uuid? id,
    jsonb? options,
  }) = _AuthProviderRequestsSetInput;

  factory AuthProviderRequestsSetInput.fromJson(Map<String, Object?> json) => _AuthProviderRequestsSetInputFromJson(json);
}

/// Streaming cursor of the table "authProviderRequests" 
@unfreezed
class AuthProviderRequestsStreamCursorInput with _$AuthProviderRequestsStreamCursorInput {
  const AuthProviderRequestsStreamCursorInput._();

  /// Streaming cursor of the table "authProviderRequests" 
  const factory AuthProviderRequestsStreamCursorInput({
    /// Stream column input with initial value
    @JsonKey(name: 'initial_value')
    required authProviderRequests_stream_cursor_value_input initialValue,
    /// cursor ordering
    cursor_ordering? ordering,
  }) = _AuthProviderRequestsStreamCursorInput;

  factory AuthProviderRequestsStreamCursorInput.fromJson(Map<String, Object?> json) => _AuthProviderRequestsStreamCursorInputFromJson(json);
}

/// Initial value of the column from where the streaming should start 
@unfreezed
class AuthProviderRequestsStreamCursorValueInput with _$AuthProviderRequestsStreamCursorValueInput {
  const AuthProviderRequestsStreamCursorValueInput._();

  /// Initial value of the column from where the streaming should start 
  const factory AuthProviderRequestsStreamCursorValueInput({
    uuid? id,
    jsonb? options,
  }) = _AuthProviderRequestsStreamCursorValueInput;

  factory AuthProviderRequestsStreamCursorValueInput.fromJson(Map<String, Object?> json) => _AuthProviderRequestsStreamCursorValueInputFromJson(json);
}

enum AuthProviderRequestsUpdateColumn{
  /// column name 
@JsonKey(name: id) id
  /// column name 
@JsonKey(name: options) options
}

@unfreezed
class AuthProviderRequestsUpdates with _$AuthProviderRequestsUpdates {
  const AuthProviderRequestsUpdates._();

  const factory AuthProviderRequestsUpdates({
    /// append existing jsonb value of filtered columns with new jsonb value
    @JsonKey(name: '_append')
    authProviderRequests_append_input? append,
    /// delete the field or element with specified path (for JSON arrays, negative integers count from the end)
    @JsonKey(name: '_delete_at_path')
    authProviderRequests_delete_at_path_input? deleteAtPath,
    /// delete the array element with specified index (negative integers count from the end). throws an error if top level container is not an array
    @JsonKey(name: '_delete_elem')
    authProviderRequests_delete_elem_input? deleteElem,
    /// delete key/value pair or string element. key/value pairs are matched based on their key value
    @JsonKey(name: '_delete_key')
    authProviderRequests_delete_key_input? deleteKey,
    /// prepend existing jsonb value of filtered columns with new jsonb value
    @JsonKey(name: '_prepend')
    authProviderRequests_prepend_input? prepend,
    /// sets the columns of the filtered rows to the given values
    @JsonKey(name: '_set')
    authProviderRequests_set_input? set,
    required authProviderRequests_bool_exp where,
  }) = _AuthProviderRequestsUpdates;

  factory AuthProviderRequestsUpdates.fromJson(Map<String, Object?> json) => _AuthProviderRequestsUpdatesFromJson(json);
}

/// List of available Oauth providers. Don't modify its structure as Hasura Auth relies on it to function properly. 
@freezed
class AuthProviders with _$AuthProviders {
  const AuthProviders._();

  /// List of available Oauth providers. Don't modify its structure as Hasura Auth relies on it to function properly. 
  const factory AuthProviders({
    required String id,
    /// An array relationship
    required List<authUserProviders> userProviders,
    /// An aggregate relationship
    @JsonKey(name: 'userProviders_aggregate')
    required authUserProviders_aggregate userProvidersAggregate,
  }) = _AuthProviders;

  factory AuthProviders.fromJson(Map<String, Object?> json) => _AuthProvidersFromJson(json);
}

/// aggregated selection of "auth.providers" 
@freezed
class AuthProvidersAggregate with _$AuthProvidersAggregate {
  const AuthProvidersAggregate._();

  /// aggregated selection of "auth.providers" 
  const factory AuthProvidersAggregate({
    authProviders_aggregate_fields? aggregate,
    required List<authProviders> nodes,
  }) = _AuthProvidersAggregate;

  factory AuthProvidersAggregate.fromJson(Map<String, Object?> json) => _AuthProvidersAggregateFromJson(json);
}

/// aggregate fields of "auth.providers" 
@freezed
class AuthProvidersAggregateFields with _$AuthProvidersAggregateFields {
  const AuthProvidersAggregateFields._();

  /// aggregate fields of "auth.providers" 
  const factory AuthProvidersAggregateFields({
    required int count,
    authProviders_max_fields? max,
    authProviders_min_fields? min,
  }) = _AuthProvidersAggregateFields;

  factory AuthProvidersAggregateFields.fromJson(Map<String, Object?> json) => _AuthProvidersAggregateFieldsFromJson(json);
}

/// Boolean expression to filter rows from the table "auth.providers". All fields are combined with a logical 'AND'. 
@unfreezed
class AuthProvidersBoolExp with _$AuthProvidersBoolExp {
  const AuthProvidersBoolExp._();

  /// Boolean expression to filter rows from the table "auth.providers". All fields are combined with a logical 'AND'. 
  const factory AuthProvidersBoolExp({
    @JsonKey(name: '_and')
    List<authProviders_bool_exp>? and,
    @JsonKey(name: '_not')
    authProviders_bool_exp? not,
    @JsonKey(name: '_or')
    List<authProviders_bool_exp>? or,
    String_comparison_exp? id,
    authUserProviders_bool_exp? userProviders,
    @JsonKey(name: 'userProviders_aggregate')
    authUserProviders_aggregate_bool_exp? userProvidersAggregate,
  }) = _AuthProvidersBoolExp;

  factory AuthProvidersBoolExp.fromJson(Map<String, Object?> json) => _AuthProvidersBoolExpFromJson(json);
}

enum AuthProvidersConstraint{
  /// unique or primary key constraint on columns "id" 
@JsonKey(name: providers_pkey) providers_pkey
}

/// input type for inserting data into table "auth.providers" 
@unfreezed
class AuthProvidersInsertInput with _$AuthProvidersInsertInput {
  const AuthProvidersInsertInput._();

  /// input type for inserting data into table "auth.providers" 
  const factory AuthProvidersInsertInput({
    String? id,
    authUserProviders_arr_rel_insert_input? userProviders,
  }) = _AuthProvidersInsertInput;

  factory AuthProvidersInsertInput.fromJson(Map<String, Object?> json) => _AuthProvidersInsertInputFromJson(json);
}

/// aggregate max on columns 
@freezed
class AuthProvidersMaxFields with _$AuthProvidersMaxFields {
  const AuthProvidersMaxFields._();

  /// aggregate max on columns 
  const factory AuthProvidersMaxFields({
    String? id,
  }) = _AuthProvidersMaxFields;

  factory AuthProvidersMaxFields.fromJson(Map<String, Object?> json) => _AuthProvidersMaxFieldsFromJson(json);
}

/// aggregate min on columns 
@freezed
class AuthProvidersMinFields with _$AuthProvidersMinFields {
  const AuthProvidersMinFields._();

  /// aggregate min on columns 
  const factory AuthProvidersMinFields({
    String? id,
  }) = _AuthProvidersMinFields;

  factory AuthProvidersMinFields.fromJson(Map<String, Object?> json) => _AuthProvidersMinFieldsFromJson(json);
}

/// response of any mutation on the table "auth.providers" 
@freezed
class AuthProvidersMutationResponse with _$AuthProvidersMutationResponse {
  const AuthProvidersMutationResponse._();

  /// response of any mutation on the table "auth.providers" 
  const factory AuthProvidersMutationResponse({
    /// number of rows affected by the mutation
    @JsonKey(name: 'affected_rows')
    required int affectedRows,
    /// data from the rows affected by the mutation
    required List<authProviders> returning,
  }) = _AuthProvidersMutationResponse;

  factory AuthProvidersMutationResponse.fromJson(Map<String, Object?> json) => _AuthProvidersMutationResponseFromJson(json);
}

/// input type for inserting object relation for remote table "auth.providers" 
@unfreezed
class AuthProvidersObjRelInsertInput with _$AuthProvidersObjRelInsertInput {
  const AuthProvidersObjRelInsertInput._();

  /// input type for inserting object relation for remote table "auth.providers" 
  const factory AuthProvidersObjRelInsertInput({
    required authProviders_insert_input data,
    /// upsert condition
    @JsonKey(name: 'on_conflict')
    authProviders_on_conflict? onConflict,
  }) = _AuthProvidersObjRelInsertInput;

  factory AuthProvidersObjRelInsertInput.fromJson(Map<String, Object?> json) => _AuthProvidersObjRelInsertInputFromJson(json);
}

/// on_conflict condition type for table "auth.providers" 
@unfreezed
class AuthProvidersOnConflict with _$AuthProvidersOnConflict {
  const AuthProvidersOnConflict._();

  /// on_conflict condition type for table "auth.providers" 
  const factory AuthProvidersOnConflict({
    required authProviders_constraint constraint,
    @JsonKey(name: 'update_columns')
    required List<authProviders_update_column> updateColumns,
    authProviders_bool_exp? where,
  }) = _AuthProvidersOnConflict;

  factory AuthProvidersOnConflict.fromJson(Map<String, Object?> json) => _AuthProvidersOnConflictFromJson(json);
}

/// Ordering options when selecting data from "auth.providers". 
@unfreezed
class AuthProvidersOrderBy with _$AuthProvidersOrderBy {
  const AuthProvidersOrderBy._();

  /// Ordering options when selecting data from "auth.providers". 
  const factory AuthProvidersOrderBy({
    order_by? id,
    @JsonKey(name: 'userProviders_aggregate')
    authUserProviders_aggregate_order_by? userProvidersAggregate,
  }) = _AuthProvidersOrderBy;

  factory AuthProvidersOrderBy.fromJson(Map<String, Object?> json) => _AuthProvidersOrderByFromJson(json);
}

/// primary key columns input for table: auth.providers 
@unfreezed
class AuthProvidersPkColumnsInput with _$AuthProvidersPkColumnsInput {
  const AuthProvidersPkColumnsInput._();

  /// primary key columns input for table: auth.providers 
  const factory AuthProvidersPkColumnsInput({
    required String id,
  }) = _AuthProvidersPkColumnsInput;

  factory AuthProvidersPkColumnsInput.fromJson(Map<String, Object?> json) => _AuthProvidersPkColumnsInputFromJson(json);
}

enum AuthProvidersSelectColumn{
  /// column name 
@JsonKey(name: id) id
}

/// input type for updating data in table "auth.providers" 
@unfreezed
class AuthProvidersSetInput with _$AuthProvidersSetInput {
  const AuthProvidersSetInput._();

  /// input type for updating data in table "auth.providers" 
  const factory AuthProvidersSetInput({
    String? id,
  }) = _AuthProvidersSetInput;

  factory AuthProvidersSetInput.fromJson(Map<String, Object?> json) => _AuthProvidersSetInputFromJson(json);
}

/// Streaming cursor of the table "authProviders" 
@unfreezed
class AuthProvidersStreamCursorInput with _$AuthProvidersStreamCursorInput {
  const AuthProvidersStreamCursorInput._();

  /// Streaming cursor of the table "authProviders" 
  const factory AuthProvidersStreamCursorInput({
    /// Stream column input with initial value
    @JsonKey(name: 'initial_value')
    required authProviders_stream_cursor_value_input initialValue,
    /// cursor ordering
    cursor_ordering? ordering,
  }) = _AuthProvidersStreamCursorInput;

  factory AuthProvidersStreamCursorInput.fromJson(Map<String, Object?> json) => _AuthProvidersStreamCursorInputFromJson(json);
}

/// Initial value of the column from where the streaming should start 
@unfreezed
class AuthProvidersStreamCursorValueInput with _$AuthProvidersStreamCursorValueInput {
  const AuthProvidersStreamCursorValueInput._();

  /// Initial value of the column from where the streaming should start 
  const factory AuthProvidersStreamCursorValueInput({
    String? id,
  }) = _AuthProvidersStreamCursorValueInput;

  factory AuthProvidersStreamCursorValueInput.fromJson(Map<String, Object?> json) => _AuthProvidersStreamCursorValueInputFromJson(json);
}

enum AuthProvidersUpdateColumn{
  /// column name 
@JsonKey(name: id) id
}

@unfreezed
class AuthProvidersUpdates with _$AuthProvidersUpdates {
  const AuthProvidersUpdates._();

  const factory AuthProvidersUpdates({
    /// sets the columns of the filtered rows to the given values
    @JsonKey(name: '_set')
    authProviders_set_input? set,
    required authProviders_bool_exp where,
  }) = _AuthProvidersUpdates;

  factory AuthProvidersUpdates.fromJson(Map<String, Object?> json) => _AuthProvidersUpdatesFromJson(json);
}

/// User refresh tokens. Hasura auth uses them to rotate new access tokens as long as the refresh token is not expired. Don't modify its structure as Hasura Auth relies on it to function properly. 
@freezed
class AuthRefreshTokens with _$AuthRefreshTokens {
  const AuthRefreshTokens._();

  /// User refresh tokens. Hasura auth uses them to rotate new access tokens as long as the refresh token is not expired. Don't modify its structure as Hasura Auth relies on it to function properly. 
  const factory AuthRefreshTokens({
    required timestamptz createdAt,
    required timestamptz expiresAt,
    required uuid refreshToken,
    /// An object relationship
    required users user,
    required uuid userId,
  }) = _AuthRefreshTokens;

  factory AuthRefreshTokens.fromJson(Map<String, Object?> json) => _AuthRefreshTokensFromJson(json);
}

/// aggregated selection of "auth.refresh_tokens" 
@freezed
class AuthRefreshTokensAggregate with _$AuthRefreshTokensAggregate {
  const AuthRefreshTokensAggregate._();

  /// aggregated selection of "auth.refresh_tokens" 
  const factory AuthRefreshTokensAggregate({
    authRefreshTokens_aggregate_fields? aggregate,
    required List<authRefreshTokens> nodes,
  }) = _AuthRefreshTokensAggregate;

  factory AuthRefreshTokensAggregate.fromJson(Map<String, Object?> json) => _AuthRefreshTokensAggregateFromJson(json);
}

@unfreezed
class AuthRefreshTokensAggregateBoolExp with _$AuthRefreshTokensAggregateBoolExp {
  const AuthRefreshTokensAggregateBoolExp._();

  const factory AuthRefreshTokensAggregateBoolExp({
    authRefreshTokens_aggregate_bool_exp_count? count,
  }) = _AuthRefreshTokensAggregateBoolExp;

  factory AuthRefreshTokensAggregateBoolExp.fromJson(Map<String, Object?> json) => _AuthRefreshTokensAggregateBoolExpFromJson(json);
}

@unfreezed
class AuthRefreshTokensAggregateBoolExpCount with _$AuthRefreshTokensAggregateBoolExpCount {
  const AuthRefreshTokensAggregateBoolExpCount._();

  const factory AuthRefreshTokensAggregateBoolExpCount({
    List<authRefreshTokens_select_column>? arguments,
    bool? distinct,
    authRefreshTokens_bool_exp? filter,
    required Int_comparison_exp predicate,
  }) = _AuthRefreshTokensAggregateBoolExpCount;

  factory AuthRefreshTokensAggregateBoolExpCount.fromJson(Map<String, Object?> json) => _AuthRefreshTokensAggregateBoolExpCountFromJson(json);
}

/// aggregate fields of "auth.refresh_tokens" 
@freezed
class AuthRefreshTokensAggregateFields with _$AuthRefreshTokensAggregateFields {
  const AuthRefreshTokensAggregateFields._();

  /// aggregate fields of "auth.refresh_tokens" 
  const factory AuthRefreshTokensAggregateFields({
    required int count,
    authRefreshTokens_max_fields? max,
    authRefreshTokens_min_fields? min,
  }) = _AuthRefreshTokensAggregateFields;

  factory AuthRefreshTokensAggregateFields.fromJson(Map<String, Object?> json) => _AuthRefreshTokensAggregateFieldsFromJson(json);
}

/// order by aggregate values of table "auth.refresh_tokens" 
@unfreezed
class AuthRefreshTokensAggregateOrderBy with _$AuthRefreshTokensAggregateOrderBy {
  const AuthRefreshTokensAggregateOrderBy._();

  /// order by aggregate values of table "auth.refresh_tokens" 
  const factory AuthRefreshTokensAggregateOrderBy({
    order_by? count,
    authRefreshTokens_max_order_by? max,
    authRefreshTokens_min_order_by? min,
  }) = _AuthRefreshTokensAggregateOrderBy;

  factory AuthRefreshTokensAggregateOrderBy.fromJson(Map<String, Object?> json) => _AuthRefreshTokensAggregateOrderByFromJson(json);
}

/// input type for inserting array relation for remote table "auth.refresh_tokens" 
@unfreezed
class AuthRefreshTokensArrRelInsertInput with _$AuthRefreshTokensArrRelInsertInput {
  const AuthRefreshTokensArrRelInsertInput._();

  /// input type for inserting array relation for remote table "auth.refresh_tokens" 
  const factory AuthRefreshTokensArrRelInsertInput({
    required List<authRefreshTokens_insert_input> data,
    /// upsert condition
    @JsonKey(name: 'on_conflict')
    authRefreshTokens_on_conflict? onConflict,
  }) = _AuthRefreshTokensArrRelInsertInput;

  factory AuthRefreshTokensArrRelInsertInput.fromJson(Map<String, Object?> json) => _AuthRefreshTokensArrRelInsertInputFromJson(json);
}

/// Boolean expression to filter rows from the table "auth.refresh_tokens". All fields are combined with a logical 'AND'. 
@unfreezed
class AuthRefreshTokensBoolExp with _$AuthRefreshTokensBoolExp {
  const AuthRefreshTokensBoolExp._();

  /// Boolean expression to filter rows from the table "auth.refresh_tokens". All fields are combined with a logical 'AND'. 
  const factory AuthRefreshTokensBoolExp({
    @JsonKey(name: '_and')
    List<authRefreshTokens_bool_exp>? and,
    @JsonKey(name: '_not')
    authRefreshTokens_bool_exp? not,
    @JsonKey(name: '_or')
    List<authRefreshTokens_bool_exp>? or,
    timestamptz_comparison_exp? createdAt,
    timestamptz_comparison_exp? expiresAt,
    uuid_comparison_exp? refreshToken,
    users_bool_exp? user,
    uuid_comparison_exp? userId,
  }) = _AuthRefreshTokensBoolExp;

  factory AuthRefreshTokensBoolExp.fromJson(Map<String, Object?> json) => _AuthRefreshTokensBoolExpFromJson(json);
}

enum AuthRefreshTokensConstraint{
  /// unique or primary key constraint on columns "refresh_token" 
@JsonKey(name: refresh_tokens_pkey) refresh_tokens_pkey
}

/// input type for inserting data into table "auth.refresh_tokens" 
@unfreezed
class AuthRefreshTokensInsertInput with _$AuthRefreshTokensInsertInput {
  const AuthRefreshTokensInsertInput._();

  /// input type for inserting data into table "auth.refresh_tokens" 
  const factory AuthRefreshTokensInsertInput({
    timestamptz? createdAt,
    timestamptz? expiresAt,
    uuid? refreshToken,
    users_obj_rel_insert_input? user,
    uuid? userId,
  }) = _AuthRefreshTokensInsertInput;

  factory AuthRefreshTokensInsertInput.fromJson(Map<String, Object?> json) => _AuthRefreshTokensInsertInputFromJson(json);
}

/// aggregate max on columns 
@freezed
class AuthRefreshTokensMaxFields with _$AuthRefreshTokensMaxFields {
  const AuthRefreshTokensMaxFields._();

  /// aggregate max on columns 
  const factory AuthRefreshTokensMaxFields({
    timestamptz? createdAt,
    timestamptz? expiresAt,
    uuid? refreshToken,
    uuid? userId,
  }) = _AuthRefreshTokensMaxFields;

  factory AuthRefreshTokensMaxFields.fromJson(Map<String, Object?> json) => _AuthRefreshTokensMaxFieldsFromJson(json);
}

/// order by max() on columns of table "auth.refresh_tokens" 
@unfreezed
class AuthRefreshTokensMaxOrderBy with _$AuthRefreshTokensMaxOrderBy {
  const AuthRefreshTokensMaxOrderBy._();

  /// order by max() on columns of table "auth.refresh_tokens" 
  const factory AuthRefreshTokensMaxOrderBy({
    order_by? createdAt,
    order_by? expiresAt,
    order_by? refreshToken,
    order_by? userId,
  }) = _AuthRefreshTokensMaxOrderBy;

  factory AuthRefreshTokensMaxOrderBy.fromJson(Map<String, Object?> json) => _AuthRefreshTokensMaxOrderByFromJson(json);
}

/// aggregate min on columns 
@freezed
class AuthRefreshTokensMinFields with _$AuthRefreshTokensMinFields {
  const AuthRefreshTokensMinFields._();

  /// aggregate min on columns 
  const factory AuthRefreshTokensMinFields({
    timestamptz? createdAt,
    timestamptz? expiresAt,
    uuid? refreshToken,
    uuid? userId,
  }) = _AuthRefreshTokensMinFields;

  factory AuthRefreshTokensMinFields.fromJson(Map<String, Object?> json) => _AuthRefreshTokensMinFieldsFromJson(json);
}

/// order by min() on columns of table "auth.refresh_tokens" 
@unfreezed
class AuthRefreshTokensMinOrderBy with _$AuthRefreshTokensMinOrderBy {
  const AuthRefreshTokensMinOrderBy._();

  /// order by min() on columns of table "auth.refresh_tokens" 
  const factory AuthRefreshTokensMinOrderBy({
    order_by? createdAt,
    order_by? expiresAt,
    order_by? refreshToken,
    order_by? userId,
  }) = _AuthRefreshTokensMinOrderBy;

  factory AuthRefreshTokensMinOrderBy.fromJson(Map<String, Object?> json) => _AuthRefreshTokensMinOrderByFromJson(json);
}

/// response of any mutation on the table "auth.refresh_tokens" 
@freezed
class AuthRefreshTokensMutationResponse with _$AuthRefreshTokensMutationResponse {
  const AuthRefreshTokensMutationResponse._();

  /// response of any mutation on the table "auth.refresh_tokens" 
  const factory AuthRefreshTokensMutationResponse({
    /// number of rows affected by the mutation
    @JsonKey(name: 'affected_rows')
    required int affectedRows,
    /// data from the rows affected by the mutation
    required List<authRefreshTokens> returning,
  }) = _AuthRefreshTokensMutationResponse;

  factory AuthRefreshTokensMutationResponse.fromJson(Map<String, Object?> json) => _AuthRefreshTokensMutationResponseFromJson(json);
}

/// on_conflict condition type for table "auth.refresh_tokens" 
@unfreezed
class AuthRefreshTokensOnConflict with _$AuthRefreshTokensOnConflict {
  const AuthRefreshTokensOnConflict._();

  /// on_conflict condition type for table "auth.refresh_tokens" 
  const factory AuthRefreshTokensOnConflict({
    required authRefreshTokens_constraint constraint,
    @JsonKey(name: 'update_columns')
    required List<authRefreshTokens_update_column> updateColumns,
    authRefreshTokens_bool_exp? where,
  }) = _AuthRefreshTokensOnConflict;

  factory AuthRefreshTokensOnConflict.fromJson(Map<String, Object?> json) => _AuthRefreshTokensOnConflictFromJson(json);
}

/// Ordering options when selecting data from "auth.refresh_tokens". 
@unfreezed
class AuthRefreshTokensOrderBy with _$AuthRefreshTokensOrderBy {
  const AuthRefreshTokensOrderBy._();

  /// Ordering options when selecting data from "auth.refresh_tokens". 
  const factory AuthRefreshTokensOrderBy({
    order_by? createdAt,
    order_by? expiresAt,
    order_by? refreshToken,
    users_order_by? user,
    order_by? userId,
  }) = _AuthRefreshTokensOrderBy;

  factory AuthRefreshTokensOrderBy.fromJson(Map<String, Object?> json) => _AuthRefreshTokensOrderByFromJson(json);
}

/// primary key columns input for table: auth.refresh_tokens 
@unfreezed
class AuthRefreshTokensPkColumnsInput with _$AuthRefreshTokensPkColumnsInput {
  const AuthRefreshTokensPkColumnsInput._();

  /// primary key columns input for table: auth.refresh_tokens 
  const factory AuthRefreshTokensPkColumnsInput({
    required uuid refreshToken,
  }) = _AuthRefreshTokensPkColumnsInput;

  factory AuthRefreshTokensPkColumnsInput.fromJson(Map<String, Object?> json) => _AuthRefreshTokensPkColumnsInputFromJson(json);
}

enum AuthRefreshTokensSelectColumn{
  /// column name 
@JsonKey(name: createdAt) createdat
  /// column name 
@JsonKey(name: expiresAt) expiresat
  /// column name 
@JsonKey(name: refreshToken) refreshtoken
  /// column name 
@JsonKey(name: userId) userid
}

/// input type for updating data in table "auth.refresh_tokens" 
@unfreezed
class AuthRefreshTokensSetInput with _$AuthRefreshTokensSetInput {
  const AuthRefreshTokensSetInput._();

  /// input type for updating data in table "auth.refresh_tokens" 
  const factory AuthRefreshTokensSetInput({
    timestamptz? createdAt,
    timestamptz? expiresAt,
    uuid? refreshToken,
    uuid? userId,
  }) = _AuthRefreshTokensSetInput;

  factory AuthRefreshTokensSetInput.fromJson(Map<String, Object?> json) => _AuthRefreshTokensSetInputFromJson(json);
}

/// Streaming cursor of the table "authRefreshTokens" 
@unfreezed
class AuthRefreshTokensStreamCursorInput with _$AuthRefreshTokensStreamCursorInput {
  const AuthRefreshTokensStreamCursorInput._();

  /// Streaming cursor of the table "authRefreshTokens" 
  const factory AuthRefreshTokensStreamCursorInput({
    /// Stream column input with initial value
    @JsonKey(name: 'initial_value')
    required authRefreshTokens_stream_cursor_value_input initialValue,
    /// cursor ordering
    cursor_ordering? ordering,
  }) = _AuthRefreshTokensStreamCursorInput;

  factory AuthRefreshTokensStreamCursorInput.fromJson(Map<String, Object?> json) => _AuthRefreshTokensStreamCursorInputFromJson(json);
}

/// Initial value of the column from where the streaming should start 
@unfreezed
class AuthRefreshTokensStreamCursorValueInput with _$AuthRefreshTokensStreamCursorValueInput {
  const AuthRefreshTokensStreamCursorValueInput._();

  /// Initial value of the column from where the streaming should start 
  const factory AuthRefreshTokensStreamCursorValueInput({
    timestamptz? createdAt,
    timestamptz? expiresAt,
    uuid? refreshToken,
    uuid? userId,
  }) = _AuthRefreshTokensStreamCursorValueInput;

  factory AuthRefreshTokensStreamCursorValueInput.fromJson(Map<String, Object?> json) => _AuthRefreshTokensStreamCursorValueInputFromJson(json);
}

enum AuthRefreshTokensUpdateColumn{
  /// column name 
@JsonKey(name: createdAt) createdat
  /// column name 
@JsonKey(name: expiresAt) expiresat
  /// column name 
@JsonKey(name: refreshToken) refreshtoken
  /// column name 
@JsonKey(name: userId) userid
}

@unfreezed
class AuthRefreshTokensUpdates with _$AuthRefreshTokensUpdates {
  const AuthRefreshTokensUpdates._();

  const factory AuthRefreshTokensUpdates({
    /// sets the columns of the filtered rows to the given values
    @JsonKey(name: '_set')
    authRefreshTokens_set_input? set,
    required authRefreshTokens_bool_exp where,
  }) = _AuthRefreshTokensUpdates;

  factory AuthRefreshTokensUpdates.fromJson(Map<String, Object?> json) => _AuthRefreshTokensUpdatesFromJson(json);
}

/// Persistent Hasura roles for users. Don't modify its structure as Hasura Auth relies on it to function properly. 
@freezed
class AuthRoles with _$AuthRoles {
  const AuthRoles._();

  /// Persistent Hasura roles for users. Don't modify its structure as Hasura Auth relies on it to function properly. 
  const factory AuthRoles({
    required String role,
    /// An array relationship
    required List<authUserRoles> userRoles,
    /// An aggregate relationship
    @JsonKey(name: 'userRoles_aggregate')
    required authUserRoles_aggregate userRolesAggregate,
    /// An array relationship
    required List<users> usersByDefaultRole,
    /// An aggregate relationship
    @JsonKey(name: 'usersByDefaultRole_aggregate')
    required users_aggregate usersByDefaultRoleAggregate,
  }) = _AuthRoles;

  factory AuthRoles.fromJson(Map<String, Object?> json) => _AuthRolesFromJson(json);
}

/// aggregated selection of "auth.roles" 
@freezed
class AuthRolesAggregate with _$AuthRolesAggregate {
  const AuthRolesAggregate._();

  /// aggregated selection of "auth.roles" 
  const factory AuthRolesAggregate({
    authRoles_aggregate_fields? aggregate,
    required List<authRoles> nodes,
  }) = _AuthRolesAggregate;

  factory AuthRolesAggregate.fromJson(Map<String, Object?> json) => _AuthRolesAggregateFromJson(json);
}

/// aggregate fields of "auth.roles" 
@freezed
class AuthRolesAggregateFields with _$AuthRolesAggregateFields {
  const AuthRolesAggregateFields._();

  /// aggregate fields of "auth.roles" 
  const factory AuthRolesAggregateFields({
    required int count,
    authRoles_max_fields? max,
    authRoles_min_fields? min,
  }) = _AuthRolesAggregateFields;

  factory AuthRolesAggregateFields.fromJson(Map<String, Object?> json) => _AuthRolesAggregateFieldsFromJson(json);
}

/// Boolean expression to filter rows from the table "auth.roles". All fields are combined with a logical 'AND'. 
@unfreezed
class AuthRolesBoolExp with _$AuthRolesBoolExp {
  const AuthRolesBoolExp._();

  /// Boolean expression to filter rows from the table "auth.roles". All fields are combined with a logical 'AND'. 
  const factory AuthRolesBoolExp({
    @JsonKey(name: '_and')
    List<authRoles_bool_exp>? and,
    @JsonKey(name: '_not')
    authRoles_bool_exp? not,
    @JsonKey(name: '_or')
    List<authRoles_bool_exp>? or,
    String_comparison_exp? role,
    authUserRoles_bool_exp? userRoles,
    @JsonKey(name: 'userRoles_aggregate')
    authUserRoles_aggregate_bool_exp? userRolesAggregate,
    users_bool_exp? usersByDefaultRole,
    @JsonKey(name: 'usersByDefaultRole_aggregate')
    users_aggregate_bool_exp? usersByDefaultRoleAggregate,
  }) = _AuthRolesBoolExp;

  factory AuthRolesBoolExp.fromJson(Map<String, Object?> json) => _AuthRolesBoolExpFromJson(json);
}

enum AuthRolesConstraint{
  /// unique or primary key constraint on columns "role" 
@JsonKey(name: roles_pkey) roles_pkey
}

/// input type for inserting data into table "auth.roles" 
@unfreezed
class AuthRolesInsertInput with _$AuthRolesInsertInput {
  const AuthRolesInsertInput._();

  /// input type for inserting data into table "auth.roles" 
  const factory AuthRolesInsertInput({
    String? role,
    authUserRoles_arr_rel_insert_input? userRoles,
    users_arr_rel_insert_input? usersByDefaultRole,
  }) = _AuthRolesInsertInput;

  factory AuthRolesInsertInput.fromJson(Map<String, Object?> json) => _AuthRolesInsertInputFromJson(json);
}

/// aggregate max on columns 
@freezed
class AuthRolesMaxFields with _$AuthRolesMaxFields {
  const AuthRolesMaxFields._();

  /// aggregate max on columns 
  const factory AuthRolesMaxFields({
    String? role,
  }) = _AuthRolesMaxFields;

  factory AuthRolesMaxFields.fromJson(Map<String, Object?> json) => _AuthRolesMaxFieldsFromJson(json);
}

/// aggregate min on columns 
@freezed
class AuthRolesMinFields with _$AuthRolesMinFields {
  const AuthRolesMinFields._();

  /// aggregate min on columns 
  const factory AuthRolesMinFields({
    String? role,
  }) = _AuthRolesMinFields;

  factory AuthRolesMinFields.fromJson(Map<String, Object?> json) => _AuthRolesMinFieldsFromJson(json);
}

/// response of any mutation on the table "auth.roles" 
@freezed
class AuthRolesMutationResponse with _$AuthRolesMutationResponse {
  const AuthRolesMutationResponse._();

  /// response of any mutation on the table "auth.roles" 
  const factory AuthRolesMutationResponse({
    /// number of rows affected by the mutation
    @JsonKey(name: 'affected_rows')
    required int affectedRows,
    /// data from the rows affected by the mutation
    required List<authRoles> returning,
  }) = _AuthRolesMutationResponse;

  factory AuthRolesMutationResponse.fromJson(Map<String, Object?> json) => _AuthRolesMutationResponseFromJson(json);
}

/// input type for inserting object relation for remote table "auth.roles" 
@unfreezed
class AuthRolesObjRelInsertInput with _$AuthRolesObjRelInsertInput {
  const AuthRolesObjRelInsertInput._();

  /// input type for inserting object relation for remote table "auth.roles" 
  const factory AuthRolesObjRelInsertInput({
    required authRoles_insert_input data,
    /// upsert condition
    @JsonKey(name: 'on_conflict')
    authRoles_on_conflict? onConflict,
  }) = _AuthRolesObjRelInsertInput;

  factory AuthRolesObjRelInsertInput.fromJson(Map<String, Object?> json) => _AuthRolesObjRelInsertInputFromJson(json);
}

/// on_conflict condition type for table "auth.roles" 
@unfreezed
class AuthRolesOnConflict with _$AuthRolesOnConflict {
  const AuthRolesOnConflict._();

  /// on_conflict condition type for table "auth.roles" 
  const factory AuthRolesOnConflict({
    required authRoles_constraint constraint,
    @JsonKey(name: 'update_columns')
    required List<authRoles_update_column> updateColumns,
    authRoles_bool_exp? where,
  }) = _AuthRolesOnConflict;

  factory AuthRolesOnConflict.fromJson(Map<String, Object?> json) => _AuthRolesOnConflictFromJson(json);
}

/// Ordering options when selecting data from "auth.roles". 
@unfreezed
class AuthRolesOrderBy with _$AuthRolesOrderBy {
  const AuthRolesOrderBy._();

  /// Ordering options when selecting data from "auth.roles". 
  const factory AuthRolesOrderBy({
    order_by? role,
    @JsonKey(name: 'userRoles_aggregate')
    authUserRoles_aggregate_order_by? userRolesAggregate,
    @JsonKey(name: 'usersByDefaultRole_aggregate')
    users_aggregate_order_by? usersByDefaultRoleAggregate,
  }) = _AuthRolesOrderBy;

  factory AuthRolesOrderBy.fromJson(Map<String, Object?> json) => _AuthRolesOrderByFromJson(json);
}

/// primary key columns input for table: auth.roles 
@unfreezed
class AuthRolesPkColumnsInput with _$AuthRolesPkColumnsInput {
  const AuthRolesPkColumnsInput._();

  /// primary key columns input for table: auth.roles 
  const factory AuthRolesPkColumnsInput({
    required String role,
  }) = _AuthRolesPkColumnsInput;

  factory AuthRolesPkColumnsInput.fromJson(Map<String, Object?> json) => _AuthRolesPkColumnsInputFromJson(json);
}

enum AuthRolesSelectColumn{
  /// column name 
@JsonKey(name: role) role
}

/// input type for updating data in table "auth.roles" 
@unfreezed
class AuthRolesSetInput with _$AuthRolesSetInput {
  const AuthRolesSetInput._();

  /// input type for updating data in table "auth.roles" 
  const factory AuthRolesSetInput({
    String? role,
  }) = _AuthRolesSetInput;

  factory AuthRolesSetInput.fromJson(Map<String, Object?> json) => _AuthRolesSetInputFromJson(json);
}

/// Streaming cursor of the table "authRoles" 
@unfreezed
class AuthRolesStreamCursorInput with _$AuthRolesStreamCursorInput {
  const AuthRolesStreamCursorInput._();

  /// Streaming cursor of the table "authRoles" 
  const factory AuthRolesStreamCursorInput({
    /// Stream column input with initial value
    @JsonKey(name: 'initial_value')
    required authRoles_stream_cursor_value_input initialValue,
    /// cursor ordering
    cursor_ordering? ordering,
  }) = _AuthRolesStreamCursorInput;

  factory AuthRolesStreamCursorInput.fromJson(Map<String, Object?> json) => _AuthRolesStreamCursorInputFromJson(json);
}

/// Initial value of the column from where the streaming should start 
@unfreezed
class AuthRolesStreamCursorValueInput with _$AuthRolesStreamCursorValueInput {
  const AuthRolesStreamCursorValueInput._();

  /// Initial value of the column from where the streaming should start 
  const factory AuthRolesStreamCursorValueInput({
    String? role,
  }) = _AuthRolesStreamCursorValueInput;

  factory AuthRolesStreamCursorValueInput.fromJson(Map<String, Object?> json) => _AuthRolesStreamCursorValueInputFromJson(json);
}

enum AuthRolesUpdateColumn{
  /// column name 
@JsonKey(name: role) role
}

@unfreezed
class AuthRolesUpdates with _$AuthRolesUpdates {
  const AuthRolesUpdates._();

  const factory AuthRolesUpdates({
    /// sets the columns of the filtered rows to the given values
    @JsonKey(name: '_set')
    authRoles_set_input? set,
    required authRoles_bool_exp where,
  }) = _AuthRolesUpdates;

  factory AuthRolesUpdates.fromJson(Map<String, Object?> json) => _AuthRolesUpdatesFromJson(json);
}

/// Active providers for a given user. Don't modify its structure as Hasura Auth relies on it to function properly. 
@freezed
class AuthUserProviders with _$AuthUserProviders {
  const AuthUserProviders._();

  /// Active providers for a given user. Don't modify its structure as Hasura Auth relies on it to function properly. 
  const factory AuthUserProviders({
    required String accessToken,
    required timestamptz createdAt,
    required uuid id,
    /// An object relationship
    required authProviders provider,
    required String providerId,
    required String providerUserId,
    String? refreshToken,
    required timestamptz updatedAt,
    /// An object relationship
    required users user,
    required uuid userId,
  }) = _AuthUserProviders;

  factory AuthUserProviders.fromJson(Map<String, Object?> json) => _AuthUserProvidersFromJson(json);
}

/// aggregated selection of "auth.user_providers" 
@freezed
class AuthUserProvidersAggregate with _$AuthUserProvidersAggregate {
  const AuthUserProvidersAggregate._();

  /// aggregated selection of "auth.user_providers" 
  const factory AuthUserProvidersAggregate({
    authUserProviders_aggregate_fields? aggregate,
    required List<authUserProviders> nodes,
  }) = _AuthUserProvidersAggregate;

  factory AuthUserProvidersAggregate.fromJson(Map<String, Object?> json) => _AuthUserProvidersAggregateFromJson(json);
}

@unfreezed
class AuthUserProvidersAggregateBoolExp with _$AuthUserProvidersAggregateBoolExp {
  const AuthUserProvidersAggregateBoolExp._();

  const factory AuthUserProvidersAggregateBoolExp({
    authUserProviders_aggregate_bool_exp_count? count,
  }) = _AuthUserProvidersAggregateBoolExp;

  factory AuthUserProvidersAggregateBoolExp.fromJson(Map<String, Object?> json) => _AuthUserProvidersAggregateBoolExpFromJson(json);
}

@unfreezed
class AuthUserProvidersAggregateBoolExpCount with _$AuthUserProvidersAggregateBoolExpCount {
  const AuthUserProvidersAggregateBoolExpCount._();

  const factory AuthUserProvidersAggregateBoolExpCount({
    List<authUserProviders_select_column>? arguments,
    bool? distinct,
    authUserProviders_bool_exp? filter,
    required Int_comparison_exp predicate,
  }) = _AuthUserProvidersAggregateBoolExpCount;

  factory AuthUserProvidersAggregateBoolExpCount.fromJson(Map<String, Object?> json) => _AuthUserProvidersAggregateBoolExpCountFromJson(json);
}

/// aggregate fields of "auth.user_providers" 
@freezed
class AuthUserProvidersAggregateFields with _$AuthUserProvidersAggregateFields {
  const AuthUserProvidersAggregateFields._();

  /// aggregate fields of "auth.user_providers" 
  const factory AuthUserProvidersAggregateFields({
    required int count,
    authUserProviders_max_fields? max,
    authUserProviders_min_fields? min,
  }) = _AuthUserProvidersAggregateFields;

  factory AuthUserProvidersAggregateFields.fromJson(Map<String, Object?> json) => _AuthUserProvidersAggregateFieldsFromJson(json);
}

/// order by aggregate values of table "auth.user_providers" 
@unfreezed
class AuthUserProvidersAggregateOrderBy with _$AuthUserProvidersAggregateOrderBy {
  const AuthUserProvidersAggregateOrderBy._();

  /// order by aggregate values of table "auth.user_providers" 
  const factory AuthUserProvidersAggregateOrderBy({
    order_by? count,
    authUserProviders_max_order_by? max,
    authUserProviders_min_order_by? min,
  }) = _AuthUserProvidersAggregateOrderBy;

  factory AuthUserProvidersAggregateOrderBy.fromJson(Map<String, Object?> json) => _AuthUserProvidersAggregateOrderByFromJson(json);
}

/// input type for inserting array relation for remote table "auth.user_providers" 
@unfreezed
class AuthUserProvidersArrRelInsertInput with _$AuthUserProvidersArrRelInsertInput {
  const AuthUserProvidersArrRelInsertInput._();

  /// input type for inserting array relation for remote table "auth.user_providers" 
  const factory AuthUserProvidersArrRelInsertInput({
    required List<authUserProviders_insert_input> data,
    /// upsert condition
    @JsonKey(name: 'on_conflict')
    authUserProviders_on_conflict? onConflict,
  }) = _AuthUserProvidersArrRelInsertInput;

  factory AuthUserProvidersArrRelInsertInput.fromJson(Map<String, Object?> json) => _AuthUserProvidersArrRelInsertInputFromJson(json);
}

/// Boolean expression to filter rows from the table "auth.user_providers". All fields are combined with a logical 'AND'. 
@unfreezed
class AuthUserProvidersBoolExp with _$AuthUserProvidersBoolExp {
  const AuthUserProvidersBoolExp._();

  /// Boolean expression to filter rows from the table "auth.user_providers". All fields are combined with a logical 'AND'. 
  const factory AuthUserProvidersBoolExp({
    @JsonKey(name: '_and')
    List<authUserProviders_bool_exp>? and,
    @JsonKey(name: '_not')
    authUserProviders_bool_exp? not,
    @JsonKey(name: '_or')
    List<authUserProviders_bool_exp>? or,
    String_comparison_exp? accessToken,
    timestamptz_comparison_exp? createdAt,
    uuid_comparison_exp? id,
    authProviders_bool_exp? provider,
    String_comparison_exp? providerId,
    String_comparison_exp? providerUserId,
    String_comparison_exp? refreshToken,
    timestamptz_comparison_exp? updatedAt,
    users_bool_exp? user,
    uuid_comparison_exp? userId,
  }) = _AuthUserProvidersBoolExp;

  factory AuthUserProvidersBoolExp.fromJson(Map<String, Object?> json) => _AuthUserProvidersBoolExpFromJson(json);
}

enum AuthUserProvidersConstraint{
  /// unique or primary key constraint on columns "id" 
@JsonKey(name: user_providers_pkey) user_providers_pkey
  /// unique or primary key constraint on columns "provider_id", "provider_user_id" 
@JsonKey(name: user_providers_provider_id_provider_user_id_key) user_providers_provider_id_provider_user_id_key
  /// unique or primary key constraint on columns "provider_id", "user_id" 
@JsonKey(name: user_providers_user_id_provider_id_key) user_providers_user_id_provider_id_key
}

/// input type for inserting data into table "auth.user_providers" 
@unfreezed
class AuthUserProvidersInsertInput with _$AuthUserProvidersInsertInput {
  const AuthUserProvidersInsertInput._();

  /// input type for inserting data into table "auth.user_providers" 
  const factory AuthUserProvidersInsertInput({
    String? accessToken,
    timestamptz? createdAt,
    uuid? id,
    authProviders_obj_rel_insert_input? provider,
    String? providerId,
    String? providerUserId,
    String? refreshToken,
    timestamptz? updatedAt,
    users_obj_rel_insert_input? user,
    uuid? userId,
  }) = _AuthUserProvidersInsertInput;

  factory AuthUserProvidersInsertInput.fromJson(Map<String, Object?> json) => _AuthUserProvidersInsertInputFromJson(json);
}

/// aggregate max on columns 
@freezed
class AuthUserProvidersMaxFields with _$AuthUserProvidersMaxFields {
  const AuthUserProvidersMaxFields._();

  /// aggregate max on columns 
  const factory AuthUserProvidersMaxFields({
    String? accessToken,
    timestamptz? createdAt,
    uuid? id,
    String? providerId,
    String? providerUserId,
    String? refreshToken,
    timestamptz? updatedAt,
    uuid? userId,
  }) = _AuthUserProvidersMaxFields;

  factory AuthUserProvidersMaxFields.fromJson(Map<String, Object?> json) => _AuthUserProvidersMaxFieldsFromJson(json);
}

/// order by max() on columns of table "auth.user_providers" 
@unfreezed
class AuthUserProvidersMaxOrderBy with _$AuthUserProvidersMaxOrderBy {
  const AuthUserProvidersMaxOrderBy._();

  /// order by max() on columns of table "auth.user_providers" 
  const factory AuthUserProvidersMaxOrderBy({
    order_by? accessToken,
    order_by? createdAt,
    order_by? id,
    order_by? providerId,
    order_by? providerUserId,
    order_by? refreshToken,
    order_by? updatedAt,
    order_by? userId,
  }) = _AuthUserProvidersMaxOrderBy;

  factory AuthUserProvidersMaxOrderBy.fromJson(Map<String, Object?> json) => _AuthUserProvidersMaxOrderByFromJson(json);
}

/// aggregate min on columns 
@freezed
class AuthUserProvidersMinFields with _$AuthUserProvidersMinFields {
  const AuthUserProvidersMinFields._();

  /// aggregate min on columns 
  const factory AuthUserProvidersMinFields({
    String? accessToken,
    timestamptz? createdAt,
    uuid? id,
    String? providerId,
    String? providerUserId,
    String? refreshToken,
    timestamptz? updatedAt,
    uuid? userId,
  }) = _AuthUserProvidersMinFields;

  factory AuthUserProvidersMinFields.fromJson(Map<String, Object?> json) => _AuthUserProvidersMinFieldsFromJson(json);
}

/// order by min() on columns of table "auth.user_providers" 
@unfreezed
class AuthUserProvidersMinOrderBy with _$AuthUserProvidersMinOrderBy {
  const AuthUserProvidersMinOrderBy._();

  /// order by min() on columns of table "auth.user_providers" 
  const factory AuthUserProvidersMinOrderBy({
    order_by? accessToken,
    order_by? createdAt,
    order_by? id,
    order_by? providerId,
    order_by? providerUserId,
    order_by? refreshToken,
    order_by? updatedAt,
    order_by? userId,
  }) = _AuthUserProvidersMinOrderBy;

  factory AuthUserProvidersMinOrderBy.fromJson(Map<String, Object?> json) => _AuthUserProvidersMinOrderByFromJson(json);
}

/// response of any mutation on the table "auth.user_providers" 
@freezed
class AuthUserProvidersMutationResponse with _$AuthUserProvidersMutationResponse {
  const AuthUserProvidersMutationResponse._();

  /// response of any mutation on the table "auth.user_providers" 
  const factory AuthUserProvidersMutationResponse({
    /// number of rows affected by the mutation
    @JsonKey(name: 'affected_rows')
    required int affectedRows,
    /// data from the rows affected by the mutation
    required List<authUserProviders> returning,
  }) = _AuthUserProvidersMutationResponse;

  factory AuthUserProvidersMutationResponse.fromJson(Map<String, Object?> json) => _AuthUserProvidersMutationResponseFromJson(json);
}

/// on_conflict condition type for table "auth.user_providers" 
@unfreezed
class AuthUserProvidersOnConflict with _$AuthUserProvidersOnConflict {
  const AuthUserProvidersOnConflict._();

  /// on_conflict condition type for table "auth.user_providers" 
  const factory AuthUserProvidersOnConflict({
    required authUserProviders_constraint constraint,
    @JsonKey(name: 'update_columns')
    required List<authUserProviders_update_column> updateColumns,
    authUserProviders_bool_exp? where,
  }) = _AuthUserProvidersOnConflict;

  factory AuthUserProvidersOnConflict.fromJson(Map<String, Object?> json) => _AuthUserProvidersOnConflictFromJson(json);
}

/// Ordering options when selecting data from "auth.user_providers". 
@unfreezed
class AuthUserProvidersOrderBy with _$AuthUserProvidersOrderBy {
  const AuthUserProvidersOrderBy._();

  /// Ordering options when selecting data from "auth.user_providers". 
  const factory AuthUserProvidersOrderBy({
    order_by? accessToken,
    order_by? createdAt,
    order_by? id,
    authProviders_order_by? provider,
    order_by? providerId,
    order_by? providerUserId,
    order_by? refreshToken,
    order_by? updatedAt,
    users_order_by? user,
    order_by? userId,
  }) = _AuthUserProvidersOrderBy;

  factory AuthUserProvidersOrderBy.fromJson(Map<String, Object?> json) => _AuthUserProvidersOrderByFromJson(json);
}

/// primary key columns input for table: auth.user_providers 
@unfreezed
class AuthUserProvidersPkColumnsInput with _$AuthUserProvidersPkColumnsInput {
  const AuthUserProvidersPkColumnsInput._();

  /// primary key columns input for table: auth.user_providers 
  const factory AuthUserProvidersPkColumnsInput({
    required uuid id,
  }) = _AuthUserProvidersPkColumnsInput;

  factory AuthUserProvidersPkColumnsInput.fromJson(Map<String, Object?> json) => _AuthUserProvidersPkColumnsInputFromJson(json);
}

enum AuthUserProvidersSelectColumn{
  /// column name 
@JsonKey(name: accessToken) accesstoken
  /// column name 
@JsonKey(name: createdAt) createdat
  /// column name 
@JsonKey(name: id) id
  /// column name 
@JsonKey(name: providerId) providerid
  /// column name 
@JsonKey(name: providerUserId) provideruserid
  /// column name 
@JsonKey(name: refreshToken) refreshtoken
  /// column name 
@JsonKey(name: updatedAt) updatedat
  /// column name 
@JsonKey(name: userId) userid
}

/// input type for updating data in table "auth.user_providers" 
@unfreezed
class AuthUserProvidersSetInput with _$AuthUserProvidersSetInput {
  const AuthUserProvidersSetInput._();

  /// input type for updating data in table "auth.user_providers" 
  const factory AuthUserProvidersSetInput({
    String? accessToken,
    timestamptz? createdAt,
    uuid? id,
    String? providerId,
    String? providerUserId,
    String? refreshToken,
    timestamptz? updatedAt,
    uuid? userId,
  }) = _AuthUserProvidersSetInput;

  factory AuthUserProvidersSetInput.fromJson(Map<String, Object?> json) => _AuthUserProvidersSetInputFromJson(json);
}

/// Streaming cursor of the table "authUserProviders" 
@unfreezed
class AuthUserProvidersStreamCursorInput with _$AuthUserProvidersStreamCursorInput {
  const AuthUserProvidersStreamCursorInput._();

  /// Streaming cursor of the table "authUserProviders" 
  const factory AuthUserProvidersStreamCursorInput({
    /// Stream column input with initial value
    @JsonKey(name: 'initial_value')
    required authUserProviders_stream_cursor_value_input initialValue,
    /// cursor ordering
    cursor_ordering? ordering,
  }) = _AuthUserProvidersStreamCursorInput;

  factory AuthUserProvidersStreamCursorInput.fromJson(Map<String, Object?> json) => _AuthUserProvidersStreamCursorInputFromJson(json);
}

/// Initial value of the column from where the streaming should start 
@unfreezed
class AuthUserProvidersStreamCursorValueInput with _$AuthUserProvidersStreamCursorValueInput {
  const AuthUserProvidersStreamCursorValueInput._();

  /// Initial value of the column from where the streaming should start 
  const factory AuthUserProvidersStreamCursorValueInput({
    String? accessToken,
    timestamptz? createdAt,
    uuid? id,
    String? providerId,
    String? providerUserId,
    String? refreshToken,
    timestamptz? updatedAt,
    uuid? userId,
  }) = _AuthUserProvidersStreamCursorValueInput;

  factory AuthUserProvidersStreamCursorValueInput.fromJson(Map<String, Object?> json) => _AuthUserProvidersStreamCursorValueInputFromJson(json);
}

enum AuthUserProvidersUpdateColumn{
  /// column name 
@JsonKey(name: accessToken) accesstoken
  /// column name 
@JsonKey(name: createdAt) createdat
  /// column name 
@JsonKey(name: id) id
  /// column name 
@JsonKey(name: providerId) providerid
  /// column name 
@JsonKey(name: providerUserId) provideruserid
  /// column name 
@JsonKey(name: refreshToken) refreshtoken
  /// column name 
@JsonKey(name: updatedAt) updatedat
  /// column name 
@JsonKey(name: userId) userid
}

@unfreezed
class AuthUserProvidersUpdates with _$AuthUserProvidersUpdates {
  const AuthUserProvidersUpdates._();

  const factory AuthUserProvidersUpdates({
    /// sets the columns of the filtered rows to the given values
    @JsonKey(name: '_set')
    authUserProviders_set_input? set,
    required authUserProviders_bool_exp where,
  }) = _AuthUserProvidersUpdates;

  factory AuthUserProvidersUpdates.fromJson(Map<String, Object?> json) => _AuthUserProvidersUpdatesFromJson(json);
}

/// Roles of users. Don't modify its structure as Hasura Auth relies on it to function properly. 
@freezed
class AuthUserRoles with _$AuthUserRoles {
  const AuthUserRoles._();

  /// Roles of users. Don't modify its structure as Hasura Auth relies on it to function properly. 
  const factory AuthUserRoles({
    required timestamptz createdAt,
    required uuid id,
    required String role,
    /// An object relationship
    required authRoles roleByRole,
    /// An object relationship
    required users user,
    required uuid userId,
  }) = _AuthUserRoles;

  factory AuthUserRoles.fromJson(Map<String, Object?> json) => _AuthUserRolesFromJson(json);
}

/// aggregated selection of "auth.user_roles" 
@freezed
class AuthUserRolesAggregate with _$AuthUserRolesAggregate {
  const AuthUserRolesAggregate._();

  /// aggregated selection of "auth.user_roles" 
  const factory AuthUserRolesAggregate({
    authUserRoles_aggregate_fields? aggregate,
    required List<authUserRoles> nodes,
  }) = _AuthUserRolesAggregate;

  factory AuthUserRolesAggregate.fromJson(Map<String, Object?> json) => _AuthUserRolesAggregateFromJson(json);
}

@unfreezed
class AuthUserRolesAggregateBoolExp with _$AuthUserRolesAggregateBoolExp {
  const AuthUserRolesAggregateBoolExp._();

  const factory AuthUserRolesAggregateBoolExp({
    authUserRoles_aggregate_bool_exp_count? count,
  }) = _AuthUserRolesAggregateBoolExp;

  factory AuthUserRolesAggregateBoolExp.fromJson(Map<String, Object?> json) => _AuthUserRolesAggregateBoolExpFromJson(json);
}

@unfreezed
class AuthUserRolesAggregateBoolExpCount with _$AuthUserRolesAggregateBoolExpCount {
  const AuthUserRolesAggregateBoolExpCount._();

  const factory AuthUserRolesAggregateBoolExpCount({
    List<authUserRoles_select_column>? arguments,
    bool? distinct,
    authUserRoles_bool_exp? filter,
    required Int_comparison_exp predicate,
  }) = _AuthUserRolesAggregateBoolExpCount;

  factory AuthUserRolesAggregateBoolExpCount.fromJson(Map<String, Object?> json) => _AuthUserRolesAggregateBoolExpCountFromJson(json);
}

/// aggregate fields of "auth.user_roles" 
@freezed
class AuthUserRolesAggregateFields with _$AuthUserRolesAggregateFields {
  const AuthUserRolesAggregateFields._();

  /// aggregate fields of "auth.user_roles" 
  const factory AuthUserRolesAggregateFields({
    required int count,
    authUserRoles_max_fields? max,
    authUserRoles_min_fields? min,
  }) = _AuthUserRolesAggregateFields;

  factory AuthUserRolesAggregateFields.fromJson(Map<String, Object?> json) => _AuthUserRolesAggregateFieldsFromJson(json);
}

/// order by aggregate values of table "auth.user_roles" 
@unfreezed
class AuthUserRolesAggregateOrderBy with _$AuthUserRolesAggregateOrderBy {
  const AuthUserRolesAggregateOrderBy._();

  /// order by aggregate values of table "auth.user_roles" 
  const factory AuthUserRolesAggregateOrderBy({
    order_by? count,
    authUserRoles_max_order_by? max,
    authUserRoles_min_order_by? min,
  }) = _AuthUserRolesAggregateOrderBy;

  factory AuthUserRolesAggregateOrderBy.fromJson(Map<String, Object?> json) => _AuthUserRolesAggregateOrderByFromJson(json);
}

/// input type for inserting array relation for remote table "auth.user_roles" 
@unfreezed
class AuthUserRolesArrRelInsertInput with _$AuthUserRolesArrRelInsertInput {
  const AuthUserRolesArrRelInsertInput._();

  /// input type for inserting array relation for remote table "auth.user_roles" 
  const factory AuthUserRolesArrRelInsertInput({
    required List<authUserRoles_insert_input> data,
    /// upsert condition
    @JsonKey(name: 'on_conflict')
    authUserRoles_on_conflict? onConflict,
  }) = _AuthUserRolesArrRelInsertInput;

  factory AuthUserRolesArrRelInsertInput.fromJson(Map<String, Object?> json) => _AuthUserRolesArrRelInsertInputFromJson(json);
}

/// Boolean expression to filter rows from the table "auth.user_roles". All fields are combined with a logical 'AND'. 
@unfreezed
class AuthUserRolesBoolExp with _$AuthUserRolesBoolExp {
  const AuthUserRolesBoolExp._();

  /// Boolean expression to filter rows from the table "auth.user_roles". All fields are combined with a logical 'AND'. 
  const factory AuthUserRolesBoolExp({
    @JsonKey(name: '_and')
    List<authUserRoles_bool_exp>? and,
    @JsonKey(name: '_not')
    authUserRoles_bool_exp? not,
    @JsonKey(name: '_or')
    List<authUserRoles_bool_exp>? or,
    timestamptz_comparison_exp? createdAt,
    uuid_comparison_exp? id,
    String_comparison_exp? role,
    authRoles_bool_exp? roleByRole,
    users_bool_exp? user,
    uuid_comparison_exp? userId,
  }) = _AuthUserRolesBoolExp;

  factory AuthUserRolesBoolExp.fromJson(Map<String, Object?> json) => _AuthUserRolesBoolExpFromJson(json);
}

enum AuthUserRolesConstraint{
  /// unique or primary key constraint on columns "id" 
@JsonKey(name: user_roles_pkey) user_roles_pkey
  /// unique or primary key constraint on columns "user_id", "role" 
@JsonKey(name: user_roles_user_id_role_key) user_roles_user_id_role_key
}

/// input type for inserting data into table "auth.user_roles" 
@unfreezed
class AuthUserRolesInsertInput with _$AuthUserRolesInsertInput {
  const AuthUserRolesInsertInput._();

  /// input type for inserting data into table "auth.user_roles" 
  const factory AuthUserRolesInsertInput({
    timestamptz? createdAt,
    uuid? id,
    String? role,
    authRoles_obj_rel_insert_input? roleByRole,
    users_obj_rel_insert_input? user,
    uuid? userId,
  }) = _AuthUserRolesInsertInput;

  factory AuthUserRolesInsertInput.fromJson(Map<String, Object?> json) => _AuthUserRolesInsertInputFromJson(json);
}

/// aggregate max on columns 
@freezed
class AuthUserRolesMaxFields with _$AuthUserRolesMaxFields {
  const AuthUserRolesMaxFields._();

  /// aggregate max on columns 
  const factory AuthUserRolesMaxFields({
    timestamptz? createdAt,
    uuid? id,
    String? role,
    uuid? userId,
  }) = _AuthUserRolesMaxFields;

  factory AuthUserRolesMaxFields.fromJson(Map<String, Object?> json) => _AuthUserRolesMaxFieldsFromJson(json);
}

/// order by max() on columns of table "auth.user_roles" 
@unfreezed
class AuthUserRolesMaxOrderBy with _$AuthUserRolesMaxOrderBy {
  const AuthUserRolesMaxOrderBy._();

  /// order by max() on columns of table "auth.user_roles" 
  const factory AuthUserRolesMaxOrderBy({
    order_by? createdAt,
    order_by? id,
    order_by? role,
    order_by? userId,
  }) = _AuthUserRolesMaxOrderBy;

  factory AuthUserRolesMaxOrderBy.fromJson(Map<String, Object?> json) => _AuthUserRolesMaxOrderByFromJson(json);
}

/// aggregate min on columns 
@freezed
class AuthUserRolesMinFields with _$AuthUserRolesMinFields {
  const AuthUserRolesMinFields._();

  /// aggregate min on columns 
  const factory AuthUserRolesMinFields({
    timestamptz? createdAt,
    uuid? id,
    String? role,
    uuid? userId,
  }) = _AuthUserRolesMinFields;

  factory AuthUserRolesMinFields.fromJson(Map<String, Object?> json) => _AuthUserRolesMinFieldsFromJson(json);
}

/// order by min() on columns of table "auth.user_roles" 
@unfreezed
class AuthUserRolesMinOrderBy with _$AuthUserRolesMinOrderBy {
  const AuthUserRolesMinOrderBy._();

  /// order by min() on columns of table "auth.user_roles" 
  const factory AuthUserRolesMinOrderBy({
    order_by? createdAt,
    order_by? id,
    order_by? role,
    order_by? userId,
  }) = _AuthUserRolesMinOrderBy;

  factory AuthUserRolesMinOrderBy.fromJson(Map<String, Object?> json) => _AuthUserRolesMinOrderByFromJson(json);
}

/// response of any mutation on the table "auth.user_roles" 
@freezed
class AuthUserRolesMutationResponse with _$AuthUserRolesMutationResponse {
  const AuthUserRolesMutationResponse._();

  /// response of any mutation on the table "auth.user_roles" 
  const factory AuthUserRolesMutationResponse({
    /// number of rows affected by the mutation
    @JsonKey(name: 'affected_rows')
    required int affectedRows,
    /// data from the rows affected by the mutation
    required List<authUserRoles> returning,
  }) = _AuthUserRolesMutationResponse;

  factory AuthUserRolesMutationResponse.fromJson(Map<String, Object?> json) => _AuthUserRolesMutationResponseFromJson(json);
}

/// on_conflict condition type for table "auth.user_roles" 
@unfreezed
class AuthUserRolesOnConflict with _$AuthUserRolesOnConflict {
  const AuthUserRolesOnConflict._();

  /// on_conflict condition type for table "auth.user_roles" 
  const factory AuthUserRolesOnConflict({
    required authUserRoles_constraint constraint,
    @JsonKey(name: 'update_columns')
    required List<authUserRoles_update_column> updateColumns,
    authUserRoles_bool_exp? where,
  }) = _AuthUserRolesOnConflict;

  factory AuthUserRolesOnConflict.fromJson(Map<String, Object?> json) => _AuthUserRolesOnConflictFromJson(json);
}

/// Ordering options when selecting data from "auth.user_roles". 
@unfreezed
class AuthUserRolesOrderBy with _$AuthUserRolesOrderBy {
  const AuthUserRolesOrderBy._();

  /// Ordering options when selecting data from "auth.user_roles". 
  const factory AuthUserRolesOrderBy({
    order_by? createdAt,
    order_by? id,
    order_by? role,
    authRoles_order_by? roleByRole,
    users_order_by? user,
    order_by? userId,
  }) = _AuthUserRolesOrderBy;

  factory AuthUserRolesOrderBy.fromJson(Map<String, Object?> json) => _AuthUserRolesOrderByFromJson(json);
}

/// primary key columns input for table: auth.user_roles 
@unfreezed
class AuthUserRolesPkColumnsInput with _$AuthUserRolesPkColumnsInput {
  const AuthUserRolesPkColumnsInput._();

  /// primary key columns input for table: auth.user_roles 
  const factory AuthUserRolesPkColumnsInput({
    required uuid id,
  }) = _AuthUserRolesPkColumnsInput;

  factory AuthUserRolesPkColumnsInput.fromJson(Map<String, Object?> json) => _AuthUserRolesPkColumnsInputFromJson(json);
}

enum AuthUserRolesSelectColumn{
  /// column name 
@JsonKey(name: createdAt) createdat
  /// column name 
@JsonKey(name: id) id
  /// column name 
@JsonKey(name: role) role
  /// column name 
@JsonKey(name: userId) userid
}

/// input type for updating data in table "auth.user_roles" 
@unfreezed
class AuthUserRolesSetInput with _$AuthUserRolesSetInput {
  const AuthUserRolesSetInput._();

  /// input type for updating data in table "auth.user_roles" 
  const factory AuthUserRolesSetInput({
    timestamptz? createdAt,
    uuid? id,
    String? role,
    uuid? userId,
  }) = _AuthUserRolesSetInput;

  factory AuthUserRolesSetInput.fromJson(Map<String, Object?> json) => _AuthUserRolesSetInputFromJson(json);
}

/// Streaming cursor of the table "authUserRoles" 
@unfreezed
class AuthUserRolesStreamCursorInput with _$AuthUserRolesStreamCursorInput {
  const AuthUserRolesStreamCursorInput._();

  /// Streaming cursor of the table "authUserRoles" 
  const factory AuthUserRolesStreamCursorInput({
    /// Stream column input with initial value
    @JsonKey(name: 'initial_value')
    required authUserRoles_stream_cursor_value_input initialValue,
    /// cursor ordering
    cursor_ordering? ordering,
  }) = _AuthUserRolesStreamCursorInput;

  factory AuthUserRolesStreamCursorInput.fromJson(Map<String, Object?> json) => _AuthUserRolesStreamCursorInputFromJson(json);
}

/// Initial value of the column from where the streaming should start 
@unfreezed
class AuthUserRolesStreamCursorValueInput with _$AuthUserRolesStreamCursorValueInput {
  const AuthUserRolesStreamCursorValueInput._();

  /// Initial value of the column from where the streaming should start 
  const factory AuthUserRolesStreamCursorValueInput({
    timestamptz? createdAt,
    uuid? id,
    String? role,
    uuid? userId,
  }) = _AuthUserRolesStreamCursorValueInput;

  factory AuthUserRolesStreamCursorValueInput.fromJson(Map<String, Object?> json) => _AuthUserRolesStreamCursorValueInputFromJson(json);
}

enum AuthUserRolesUpdateColumn{
  /// column name 
@JsonKey(name: createdAt) createdat
  /// column name 
@JsonKey(name: id) id
  /// column name 
@JsonKey(name: role) role
  /// column name 
@JsonKey(name: userId) userid
}

@unfreezed
class AuthUserRolesUpdates with _$AuthUserRolesUpdates {
  const AuthUserRolesUpdates._();

  const factory AuthUserRolesUpdates({
    /// sets the columns of the filtered rows to the given values
    @JsonKey(name: '_set')
    authUserRoles_set_input? set,
    required authUserRoles_bool_exp where,
  }) = _AuthUserRolesUpdates;

  factory AuthUserRolesUpdates.fromJson(Map<String, Object?> json) => _AuthUserRolesUpdatesFromJson(json);
}

/// User webauthn security keys. Don't modify its structure as Hasura Auth relies on it to function properly. 
@freezed
class AuthUserSecurityKeys with _$AuthUserSecurityKeys {
  const AuthUserSecurityKeys._();

  /// User webauthn security keys. Don't modify its structure as Hasura Auth relies on it to function properly. 
  const factory AuthUserSecurityKeys({
    required bigint counter,
    required String credentialId,
    bytea? credentialPublicKey,
    required uuid id,
    String? nickname,
    required String transports,
    /// An object relationship
    required users user,
    required uuid userId,
  }) = _AuthUserSecurityKeys;

  factory AuthUserSecurityKeys.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysFromJson(json);
}

/// aggregated selection of "auth.user_security_keys" 
@freezed
class AuthUserSecurityKeysAggregate with _$AuthUserSecurityKeysAggregate {
  const AuthUserSecurityKeysAggregate._();

  /// aggregated selection of "auth.user_security_keys" 
  const factory AuthUserSecurityKeysAggregate({
    authUserSecurityKeys_aggregate_fields? aggregate,
    required List<authUserSecurityKeys> nodes,
  }) = _AuthUserSecurityKeysAggregate;

  factory AuthUserSecurityKeysAggregate.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysAggregateFromJson(json);
}

@unfreezed
class AuthUserSecurityKeysAggregateBoolExp with _$AuthUserSecurityKeysAggregateBoolExp {
  const AuthUserSecurityKeysAggregateBoolExp._();

  const factory AuthUserSecurityKeysAggregateBoolExp({
    authUserSecurityKeys_aggregate_bool_exp_count? count,
  }) = _AuthUserSecurityKeysAggregateBoolExp;

  factory AuthUserSecurityKeysAggregateBoolExp.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysAggregateBoolExpFromJson(json);
}

@unfreezed
class AuthUserSecurityKeysAggregateBoolExpCount with _$AuthUserSecurityKeysAggregateBoolExpCount {
  const AuthUserSecurityKeysAggregateBoolExpCount._();

  const factory AuthUserSecurityKeysAggregateBoolExpCount({
    List<authUserSecurityKeys_select_column>? arguments,
    bool? distinct,
    authUserSecurityKeys_bool_exp? filter,
    required Int_comparison_exp predicate,
  }) = _AuthUserSecurityKeysAggregateBoolExpCount;

  factory AuthUserSecurityKeysAggregateBoolExpCount.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysAggregateBoolExpCountFromJson(json);
}

/// aggregate fields of "auth.user_security_keys" 
@freezed
class AuthUserSecurityKeysAggregateFields with _$AuthUserSecurityKeysAggregateFields {
  const AuthUserSecurityKeysAggregateFields._();

  /// aggregate fields of "auth.user_security_keys" 
  const factory AuthUserSecurityKeysAggregateFields({
    authUserSecurityKeys_avg_fields? avg,
    required int count,
    authUserSecurityKeys_max_fields? max,
    authUserSecurityKeys_min_fields? min,
    authUserSecurityKeys_stddev_fields? stddev,
    @JsonKey(name: 'stddev_pop')
    authUserSecurityKeys_stddev_pop_fields? stddevPop,
    @JsonKey(name: 'stddev_samp')
    authUserSecurityKeys_stddev_samp_fields? stddevSamp,
    authUserSecurityKeys_sum_fields? sum,
    @JsonKey(name: 'var_pop')
    authUserSecurityKeys_var_pop_fields? varPop,
    @JsonKey(name: 'var_samp')
    authUserSecurityKeys_var_samp_fields? varSamp,
    authUserSecurityKeys_variance_fields? variance,
  }) = _AuthUserSecurityKeysAggregateFields;

  factory AuthUserSecurityKeysAggregateFields.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysAggregateFieldsFromJson(json);
}

/// order by aggregate values of table "auth.user_security_keys" 
@unfreezed
class AuthUserSecurityKeysAggregateOrderBy with _$AuthUserSecurityKeysAggregateOrderBy {
  const AuthUserSecurityKeysAggregateOrderBy._();

  /// order by aggregate values of table "auth.user_security_keys" 
  const factory AuthUserSecurityKeysAggregateOrderBy({
    authUserSecurityKeys_avg_order_by? avg,
    order_by? count,
    authUserSecurityKeys_max_order_by? max,
    authUserSecurityKeys_min_order_by? min,
    authUserSecurityKeys_stddev_order_by? stddev,
    @JsonKey(name: 'stddev_pop')
    authUserSecurityKeys_stddev_pop_order_by? stddevPop,
    @JsonKey(name: 'stddev_samp')
    authUserSecurityKeys_stddev_samp_order_by? stddevSamp,
    authUserSecurityKeys_sum_order_by? sum,
    @JsonKey(name: 'var_pop')
    authUserSecurityKeys_var_pop_order_by? varPop,
    @JsonKey(name: 'var_samp')
    authUserSecurityKeys_var_samp_order_by? varSamp,
    authUserSecurityKeys_variance_order_by? variance,
  }) = _AuthUserSecurityKeysAggregateOrderBy;

  factory AuthUserSecurityKeysAggregateOrderBy.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysAggregateOrderByFromJson(json);
}

/// input type for inserting array relation for remote table "auth.user_security_keys" 
@unfreezed
class AuthUserSecurityKeysArrRelInsertInput with _$AuthUserSecurityKeysArrRelInsertInput {
  const AuthUserSecurityKeysArrRelInsertInput._();

  /// input type for inserting array relation for remote table "auth.user_security_keys" 
  const factory AuthUserSecurityKeysArrRelInsertInput({
    required List<authUserSecurityKeys_insert_input> data,
    /// upsert condition
    @JsonKey(name: 'on_conflict')
    authUserSecurityKeys_on_conflict? onConflict,
  }) = _AuthUserSecurityKeysArrRelInsertInput;

  factory AuthUserSecurityKeysArrRelInsertInput.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysArrRelInsertInputFromJson(json);
}

/// aggregate avg on columns 
@freezed
class AuthUserSecurityKeysAvgFields with _$AuthUserSecurityKeysAvgFields {
  const AuthUserSecurityKeysAvgFields._();

  /// aggregate avg on columns 
  const factory AuthUserSecurityKeysAvgFields({
    double? counter,
  }) = _AuthUserSecurityKeysAvgFields;

  factory AuthUserSecurityKeysAvgFields.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysAvgFieldsFromJson(json);
}

/// order by avg() on columns of table "auth.user_security_keys" 
@unfreezed
class AuthUserSecurityKeysAvgOrderBy with _$AuthUserSecurityKeysAvgOrderBy {
  const AuthUserSecurityKeysAvgOrderBy._();

  /// order by avg() on columns of table "auth.user_security_keys" 
  const factory AuthUserSecurityKeysAvgOrderBy({
    order_by? counter,
  }) = _AuthUserSecurityKeysAvgOrderBy;

  factory AuthUserSecurityKeysAvgOrderBy.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysAvgOrderByFromJson(json);
}

/// Boolean expression to filter rows from the table "auth.user_security_keys". All fields are combined with a logical 'AND'. 
@unfreezed
class AuthUserSecurityKeysBoolExp with _$AuthUserSecurityKeysBoolExp {
  const AuthUserSecurityKeysBoolExp._();

  /// Boolean expression to filter rows from the table "auth.user_security_keys". All fields are combined with a logical 'AND'. 
  const factory AuthUserSecurityKeysBoolExp({
    @JsonKey(name: '_and')
    List<authUserSecurityKeys_bool_exp>? and,
    @JsonKey(name: '_not')
    authUserSecurityKeys_bool_exp? not,
    @JsonKey(name: '_or')
    List<authUserSecurityKeys_bool_exp>? or,
    bigint_comparison_exp? counter,
    String_comparison_exp? credentialId,
    bytea_comparison_exp? credentialPublicKey,
    uuid_comparison_exp? id,
    String_comparison_exp? nickname,
    String_comparison_exp? transports,
    users_bool_exp? user,
    uuid_comparison_exp? userId,
  }) = _AuthUserSecurityKeysBoolExp;

  factory AuthUserSecurityKeysBoolExp.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysBoolExpFromJson(json);
}

enum AuthUserSecurityKeysConstraint{
  /// unique or primary key constraint on columns "credential_id" 
@JsonKey(name: user_security_key_credential_id_key) user_security_key_credential_id_key
  /// unique or primary key constraint on columns "id" 
@JsonKey(name: user_security_keys_pkey) user_security_keys_pkey
}

/// input type for incrementing numeric columns in table "auth.user_security_keys" 
@unfreezed
class AuthUserSecurityKeysIncInput with _$AuthUserSecurityKeysIncInput {
  const AuthUserSecurityKeysIncInput._();

  /// input type for incrementing numeric columns in table "auth.user_security_keys" 
  const factory AuthUserSecurityKeysIncInput({
    bigint? counter,
  }) = _AuthUserSecurityKeysIncInput;

  factory AuthUserSecurityKeysIncInput.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysIncInputFromJson(json);
}

/// input type for inserting data into table "auth.user_security_keys" 
@unfreezed
class AuthUserSecurityKeysInsertInput with _$AuthUserSecurityKeysInsertInput {
  const AuthUserSecurityKeysInsertInput._();

  /// input type for inserting data into table "auth.user_security_keys" 
  const factory AuthUserSecurityKeysInsertInput({
    bigint? counter,
    String? credentialId,
    bytea? credentialPublicKey,
    uuid? id,
    String? nickname,
    String? transports,
    users_obj_rel_insert_input? user,
    uuid? userId,
  }) = _AuthUserSecurityKeysInsertInput;

  factory AuthUserSecurityKeysInsertInput.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysInsertInputFromJson(json);
}

/// aggregate max on columns 
@freezed
class AuthUserSecurityKeysMaxFields with _$AuthUserSecurityKeysMaxFields {
  const AuthUserSecurityKeysMaxFields._();

  /// aggregate max on columns 
  const factory AuthUserSecurityKeysMaxFields({
    bigint? counter,
    String? credentialId,
    uuid? id,
    String? nickname,
    String? transports,
    uuid? userId,
  }) = _AuthUserSecurityKeysMaxFields;

  factory AuthUserSecurityKeysMaxFields.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysMaxFieldsFromJson(json);
}

/// order by max() on columns of table "auth.user_security_keys" 
@unfreezed
class AuthUserSecurityKeysMaxOrderBy with _$AuthUserSecurityKeysMaxOrderBy {
  const AuthUserSecurityKeysMaxOrderBy._();

  /// order by max() on columns of table "auth.user_security_keys" 
  const factory AuthUserSecurityKeysMaxOrderBy({
    order_by? counter,
    order_by? credentialId,
    order_by? id,
    order_by? nickname,
    order_by? transports,
    order_by? userId,
  }) = _AuthUserSecurityKeysMaxOrderBy;

  factory AuthUserSecurityKeysMaxOrderBy.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysMaxOrderByFromJson(json);
}

/// aggregate min on columns 
@freezed
class AuthUserSecurityKeysMinFields with _$AuthUserSecurityKeysMinFields {
  const AuthUserSecurityKeysMinFields._();

  /// aggregate min on columns 
  const factory AuthUserSecurityKeysMinFields({
    bigint? counter,
    String? credentialId,
    uuid? id,
    String? nickname,
    String? transports,
    uuid? userId,
  }) = _AuthUserSecurityKeysMinFields;

  factory AuthUserSecurityKeysMinFields.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysMinFieldsFromJson(json);
}

/// order by min() on columns of table "auth.user_security_keys" 
@unfreezed
class AuthUserSecurityKeysMinOrderBy with _$AuthUserSecurityKeysMinOrderBy {
  const AuthUserSecurityKeysMinOrderBy._();

  /// order by min() on columns of table "auth.user_security_keys" 
  const factory AuthUserSecurityKeysMinOrderBy({
    order_by? counter,
    order_by? credentialId,
    order_by? id,
    order_by? nickname,
    order_by? transports,
    order_by? userId,
  }) = _AuthUserSecurityKeysMinOrderBy;

  factory AuthUserSecurityKeysMinOrderBy.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysMinOrderByFromJson(json);
}

/// response of any mutation on the table "auth.user_security_keys" 
@freezed
class AuthUserSecurityKeysMutationResponse with _$AuthUserSecurityKeysMutationResponse {
  const AuthUserSecurityKeysMutationResponse._();

  /// response of any mutation on the table "auth.user_security_keys" 
  const factory AuthUserSecurityKeysMutationResponse({
    /// number of rows affected by the mutation
    @JsonKey(name: 'affected_rows')
    required int affectedRows,
    /// data from the rows affected by the mutation
    required List<authUserSecurityKeys> returning,
  }) = _AuthUserSecurityKeysMutationResponse;

  factory AuthUserSecurityKeysMutationResponse.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysMutationResponseFromJson(json);
}

/// on_conflict condition type for table "auth.user_security_keys" 
@unfreezed
class AuthUserSecurityKeysOnConflict with _$AuthUserSecurityKeysOnConflict {
  const AuthUserSecurityKeysOnConflict._();

  /// on_conflict condition type for table "auth.user_security_keys" 
  const factory AuthUserSecurityKeysOnConflict({
    required authUserSecurityKeys_constraint constraint,
    @JsonKey(name: 'update_columns')
    required List<authUserSecurityKeys_update_column> updateColumns,
    authUserSecurityKeys_bool_exp? where,
  }) = _AuthUserSecurityKeysOnConflict;

  factory AuthUserSecurityKeysOnConflict.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysOnConflictFromJson(json);
}

/// Ordering options when selecting data from "auth.user_security_keys". 
@unfreezed
class AuthUserSecurityKeysOrderBy with _$AuthUserSecurityKeysOrderBy {
  const AuthUserSecurityKeysOrderBy._();

  /// Ordering options when selecting data from "auth.user_security_keys". 
  const factory AuthUserSecurityKeysOrderBy({
    order_by? counter,
    order_by? credentialId,
    order_by? credentialPublicKey,
    order_by? id,
    order_by? nickname,
    order_by? transports,
    users_order_by? user,
    order_by? userId,
  }) = _AuthUserSecurityKeysOrderBy;

  factory AuthUserSecurityKeysOrderBy.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysOrderByFromJson(json);
}

/// primary key columns input for table: auth.user_security_keys 
@unfreezed
class AuthUserSecurityKeysPkColumnsInput with _$AuthUserSecurityKeysPkColumnsInput {
  const AuthUserSecurityKeysPkColumnsInput._();

  /// primary key columns input for table: auth.user_security_keys 
  const factory AuthUserSecurityKeysPkColumnsInput({
    required uuid id,
  }) = _AuthUserSecurityKeysPkColumnsInput;

  factory AuthUserSecurityKeysPkColumnsInput.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysPkColumnsInputFromJson(json);
}

enum AuthUserSecurityKeysSelectColumn{
  /// column name 
@JsonKey(name: counter) counter
  /// column name 
@JsonKey(name: credentialId) credentialid
  /// column name 
@JsonKey(name: credentialPublicKey) credentialpublickey
  /// column name 
@JsonKey(name: id) id
  /// column name 
@JsonKey(name: nickname) nickname
  /// column name 
@JsonKey(name: transports) transports
  /// column name 
@JsonKey(name: userId) userid
}

/// input type for updating data in table "auth.user_security_keys" 
@unfreezed
class AuthUserSecurityKeysSetInput with _$AuthUserSecurityKeysSetInput {
  const AuthUserSecurityKeysSetInput._();

  /// input type for updating data in table "auth.user_security_keys" 
  const factory AuthUserSecurityKeysSetInput({
    bigint? counter,
    String? credentialId,
    bytea? credentialPublicKey,
    uuid? id,
    String? nickname,
    String? transports,
    uuid? userId,
  }) = _AuthUserSecurityKeysSetInput;

  factory AuthUserSecurityKeysSetInput.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysSetInputFromJson(json);
}

/// aggregate stddev on columns 
@freezed
class AuthUserSecurityKeysStddevFields with _$AuthUserSecurityKeysStddevFields {
  const AuthUserSecurityKeysStddevFields._();

  /// aggregate stddev on columns 
  const factory AuthUserSecurityKeysStddevFields({
    double? counter,
  }) = _AuthUserSecurityKeysStddevFields;

  factory AuthUserSecurityKeysStddevFields.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysStddevFieldsFromJson(json);
}

/// order by stddev() on columns of table "auth.user_security_keys" 
@unfreezed
class AuthUserSecurityKeysStddevOrderBy with _$AuthUserSecurityKeysStddevOrderBy {
  const AuthUserSecurityKeysStddevOrderBy._();

  /// order by stddev() on columns of table "auth.user_security_keys" 
  const factory AuthUserSecurityKeysStddevOrderBy({
    order_by? counter,
  }) = _AuthUserSecurityKeysStddevOrderBy;

  factory AuthUserSecurityKeysStddevOrderBy.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysStddevOrderByFromJson(json);
}

/// aggregate stddev_pop on columns 
@freezed
class AuthUserSecurityKeysStddevPopFields with _$AuthUserSecurityKeysStddevPopFields {
  const AuthUserSecurityKeysStddevPopFields._();

  /// aggregate stddev_pop on columns 
  const factory AuthUserSecurityKeysStddevPopFields({
    double? counter,
  }) = _AuthUserSecurityKeysStddevPopFields;

  factory AuthUserSecurityKeysStddevPopFields.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysStddevPopFieldsFromJson(json);
}

/// order by stddev_pop() on columns of table "auth.user_security_keys" 
@unfreezed
class AuthUserSecurityKeysStddevPopOrderBy with _$AuthUserSecurityKeysStddevPopOrderBy {
  const AuthUserSecurityKeysStddevPopOrderBy._();

  /// order by stddev_pop() on columns of table "auth.user_security_keys" 
  const factory AuthUserSecurityKeysStddevPopOrderBy({
    order_by? counter,
  }) = _AuthUserSecurityKeysStddevPopOrderBy;

  factory AuthUserSecurityKeysStddevPopOrderBy.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysStddevPopOrderByFromJson(json);
}

/// aggregate stddev_samp on columns 
@freezed
class AuthUserSecurityKeysStddevSampFields with _$AuthUserSecurityKeysStddevSampFields {
  const AuthUserSecurityKeysStddevSampFields._();

  /// aggregate stddev_samp on columns 
  const factory AuthUserSecurityKeysStddevSampFields({
    double? counter,
  }) = _AuthUserSecurityKeysStddevSampFields;

  factory AuthUserSecurityKeysStddevSampFields.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysStddevSampFieldsFromJson(json);
}

/// order by stddev_samp() on columns of table "auth.user_security_keys" 
@unfreezed
class AuthUserSecurityKeysStddevSampOrderBy with _$AuthUserSecurityKeysStddevSampOrderBy {
  const AuthUserSecurityKeysStddevSampOrderBy._();

  /// order by stddev_samp() on columns of table "auth.user_security_keys" 
  const factory AuthUserSecurityKeysStddevSampOrderBy({
    order_by? counter,
  }) = _AuthUserSecurityKeysStddevSampOrderBy;

  factory AuthUserSecurityKeysStddevSampOrderBy.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysStddevSampOrderByFromJson(json);
}

/// Streaming cursor of the table "authUserSecurityKeys" 
@unfreezed
class AuthUserSecurityKeysStreamCursorInput with _$AuthUserSecurityKeysStreamCursorInput {
  const AuthUserSecurityKeysStreamCursorInput._();

  /// Streaming cursor of the table "authUserSecurityKeys" 
  const factory AuthUserSecurityKeysStreamCursorInput({
    /// Stream column input with initial value
    @JsonKey(name: 'initial_value')
    required authUserSecurityKeys_stream_cursor_value_input initialValue,
    /// cursor ordering
    cursor_ordering? ordering,
  }) = _AuthUserSecurityKeysStreamCursorInput;

  factory AuthUserSecurityKeysStreamCursorInput.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysStreamCursorInputFromJson(json);
}

/// Initial value of the column from where the streaming should start 
@unfreezed
class AuthUserSecurityKeysStreamCursorValueInput with _$AuthUserSecurityKeysStreamCursorValueInput {
  const AuthUserSecurityKeysStreamCursorValueInput._();

  /// Initial value of the column from where the streaming should start 
  const factory AuthUserSecurityKeysStreamCursorValueInput({
    bigint? counter,
    String? credentialId,
    bytea? credentialPublicKey,
    uuid? id,
    String? nickname,
    String? transports,
    uuid? userId,
  }) = _AuthUserSecurityKeysStreamCursorValueInput;

  factory AuthUserSecurityKeysStreamCursorValueInput.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysStreamCursorValueInputFromJson(json);
}

/// aggregate sum on columns 
@freezed
class AuthUserSecurityKeysSumFields with _$AuthUserSecurityKeysSumFields {
  const AuthUserSecurityKeysSumFields._();

  /// aggregate sum on columns 
  const factory AuthUserSecurityKeysSumFields({
    bigint? counter,
  }) = _AuthUserSecurityKeysSumFields;

  factory AuthUserSecurityKeysSumFields.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysSumFieldsFromJson(json);
}

/// order by sum() on columns of table "auth.user_security_keys" 
@unfreezed
class AuthUserSecurityKeysSumOrderBy with _$AuthUserSecurityKeysSumOrderBy {
  const AuthUserSecurityKeysSumOrderBy._();

  /// order by sum() on columns of table "auth.user_security_keys" 
  const factory AuthUserSecurityKeysSumOrderBy({
    order_by? counter,
  }) = _AuthUserSecurityKeysSumOrderBy;

  factory AuthUserSecurityKeysSumOrderBy.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysSumOrderByFromJson(json);
}

enum AuthUserSecurityKeysUpdateColumn{
  /// column name 
@JsonKey(name: counter) counter
  /// column name 
@JsonKey(name: credentialId) credentialid
  /// column name 
@JsonKey(name: credentialPublicKey) credentialpublickey
  /// column name 
@JsonKey(name: id) id
  /// column name 
@JsonKey(name: nickname) nickname
  /// column name 
@JsonKey(name: transports) transports
  /// column name 
@JsonKey(name: userId) userid
}

@unfreezed
class AuthUserSecurityKeysUpdates with _$AuthUserSecurityKeysUpdates {
  const AuthUserSecurityKeysUpdates._();

  const factory AuthUserSecurityKeysUpdates({
    /// increments the numeric columns with given value of the filtered values
    @JsonKey(name: '_inc')
    authUserSecurityKeys_inc_input? inc,
    /// sets the columns of the filtered rows to the given values
    @JsonKey(name: '_set')
    authUserSecurityKeys_set_input? set,
    required authUserSecurityKeys_bool_exp where,
  }) = _AuthUserSecurityKeysUpdates;

  factory AuthUserSecurityKeysUpdates.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysUpdatesFromJson(json);
}

/// aggregate var_pop on columns 
@freezed
class AuthUserSecurityKeysVarPopFields with _$AuthUserSecurityKeysVarPopFields {
  const AuthUserSecurityKeysVarPopFields._();

  /// aggregate var_pop on columns 
  const factory AuthUserSecurityKeysVarPopFields({
    double? counter,
  }) = _AuthUserSecurityKeysVarPopFields;

  factory AuthUserSecurityKeysVarPopFields.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysVarPopFieldsFromJson(json);
}

/// order by var_pop() on columns of table "auth.user_security_keys" 
@unfreezed
class AuthUserSecurityKeysVarPopOrderBy with _$AuthUserSecurityKeysVarPopOrderBy {
  const AuthUserSecurityKeysVarPopOrderBy._();

  /// order by var_pop() on columns of table "auth.user_security_keys" 
  const factory AuthUserSecurityKeysVarPopOrderBy({
    order_by? counter,
  }) = _AuthUserSecurityKeysVarPopOrderBy;

  factory AuthUserSecurityKeysVarPopOrderBy.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysVarPopOrderByFromJson(json);
}

/// aggregate var_samp on columns 
@freezed
class AuthUserSecurityKeysVarSampFields with _$AuthUserSecurityKeysVarSampFields {
  const AuthUserSecurityKeysVarSampFields._();

  /// aggregate var_samp on columns 
  const factory AuthUserSecurityKeysVarSampFields({
    double? counter,
  }) = _AuthUserSecurityKeysVarSampFields;

  factory AuthUserSecurityKeysVarSampFields.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysVarSampFieldsFromJson(json);
}

/// order by var_samp() on columns of table "auth.user_security_keys" 
@unfreezed
class AuthUserSecurityKeysVarSampOrderBy with _$AuthUserSecurityKeysVarSampOrderBy {
  const AuthUserSecurityKeysVarSampOrderBy._();

  /// order by var_samp() on columns of table "auth.user_security_keys" 
  const factory AuthUserSecurityKeysVarSampOrderBy({
    order_by? counter,
  }) = _AuthUserSecurityKeysVarSampOrderBy;

  factory AuthUserSecurityKeysVarSampOrderBy.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysVarSampOrderByFromJson(json);
}

/// aggregate variance on columns 
@freezed
class AuthUserSecurityKeysVarianceFields with _$AuthUserSecurityKeysVarianceFields {
  const AuthUserSecurityKeysVarianceFields._();

  /// aggregate variance on columns 
  const factory AuthUserSecurityKeysVarianceFields({
    double? counter,
  }) = _AuthUserSecurityKeysVarianceFields;

  factory AuthUserSecurityKeysVarianceFields.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysVarianceFieldsFromJson(json);
}

/// order by variance() on columns of table "auth.user_security_keys" 
@unfreezed
class AuthUserSecurityKeysVarianceOrderBy with _$AuthUserSecurityKeysVarianceOrderBy {
  const AuthUserSecurityKeysVarianceOrderBy._();

  /// order by variance() on columns of table "auth.user_security_keys" 
  const factory AuthUserSecurityKeysVarianceOrderBy({
    order_by? counter,
  }) = _AuthUserSecurityKeysVarianceOrderBy;

  factory AuthUserSecurityKeysVarianceOrderBy.fromJson(Map<String, Object?> json) => _AuthUserSecurityKeysVarianceOrderByFromJson(json);
}

/// Boolean expression to compare columns of type "bigint". All fields are combined with logical 'AND'. 
@unfreezed
class BigintComparisonExp with _$BigintComparisonExp {
  const BigintComparisonExp._();

  /// Boolean expression to compare columns of type "bigint". All fields are combined with logical 'AND'. 
  const factory BigintComparisonExp({
    @JsonKey(name: '_eq')
    bigint? eq,
    @JsonKey(name: '_gt')
    bigint? gt,
    @JsonKey(name: '_gte')
    bigint? gte,
    @JsonKey(name: '_in')
    List<bigint>? in,
    @JsonKey(name: '_is_null')
    bool? isNull,
    @JsonKey(name: '_lt')
    bigint? lt,
    @JsonKey(name: '_lte')
    bigint? lte,
    @JsonKey(name: '_neq')
    bigint? neq,
    @JsonKey(name: '_nin')
    List<bigint>? nin,
  }) = _BigintComparisonExp;

  factory BigintComparisonExp.fromJson(Map<String, Object?> json) => _BigintComparisonExpFromJson(json);
}

/// columns and relationships of "storage.buckets" 
@freezed
class Buckets with _$Buckets {
  const Buckets._();

  /// columns and relationships of "storage.buckets" 
  const factory Buckets({
    String? cacheControl,
    required timestamptz createdAt,
    required int downloadExpiration,
    /// An array relationship
    required List<files> files,
    /// An aggregate relationship
    @JsonKey(name: 'files_aggregate')
    required files_aggregate filesAggregate,
    required String id,
    required int maxUploadFileSize,
    required int minUploadFileSize,
    required bool presignedUrlsEnabled,
    required timestamptz updatedAt,
  }) = _Buckets;

  factory Buckets.fromJson(Map<String, Object?> json) => _BucketsFromJson(json);
}

/// aggregated selection of "storage.buckets" 
@freezed
class BucketsAggregate with _$BucketsAggregate {
  const BucketsAggregate._();

  /// aggregated selection of "storage.buckets" 
  const factory BucketsAggregate({
    buckets_aggregate_fields? aggregate,
    required List<buckets> nodes,
  }) = _BucketsAggregate;

  factory BucketsAggregate.fromJson(Map<String, Object?> json) => _BucketsAggregateFromJson(json);
}

/// aggregate fields of "storage.buckets" 
@freezed
class BucketsAggregateFields with _$BucketsAggregateFields {
  const BucketsAggregateFields._();

  /// aggregate fields of "storage.buckets" 
  const factory BucketsAggregateFields({
    buckets_avg_fields? avg,
    required int count,
    buckets_max_fields? max,
    buckets_min_fields? min,
    buckets_stddev_fields? stddev,
    @JsonKey(name: 'stddev_pop')
    buckets_stddev_pop_fields? stddevPop,
    @JsonKey(name: 'stddev_samp')
    buckets_stddev_samp_fields? stddevSamp,
    buckets_sum_fields? sum,
    @JsonKey(name: 'var_pop')
    buckets_var_pop_fields? varPop,
    @JsonKey(name: 'var_samp')
    buckets_var_samp_fields? varSamp,
    buckets_variance_fields? variance,
  }) = _BucketsAggregateFields;

  factory BucketsAggregateFields.fromJson(Map<String, Object?> json) => _BucketsAggregateFieldsFromJson(json);
}

/// aggregate avg on columns 
@freezed
class BucketsAvgFields with _$BucketsAvgFields {
  const BucketsAvgFields._();

  /// aggregate avg on columns 
  const factory BucketsAvgFields({
    double? downloadExpiration,
    double? maxUploadFileSize,
    double? minUploadFileSize,
  }) = _BucketsAvgFields;

  factory BucketsAvgFields.fromJson(Map<String, Object?> json) => _BucketsAvgFieldsFromJson(json);
}

/// Boolean expression to filter rows from the table "storage.buckets". All fields are combined with a logical 'AND'. 
@unfreezed
class BucketsBoolExp with _$BucketsBoolExp {
  const BucketsBoolExp._();

  /// Boolean expression to filter rows from the table "storage.buckets". All fields are combined with a logical 'AND'. 
  const factory BucketsBoolExp({
    @JsonKey(name: '_and')
    List<buckets_bool_exp>? and,
    @JsonKey(name: '_not')
    buckets_bool_exp? not,
    @JsonKey(name: '_or')
    List<buckets_bool_exp>? or,
    String_comparison_exp? cacheControl,
    timestamptz_comparison_exp? createdAt,
    Int_comparison_exp? downloadExpiration,
    files_bool_exp? files,
    @JsonKey(name: 'files_aggregate')
    files_aggregate_bool_exp? filesAggregate,
    String_comparison_exp? id,
    Int_comparison_exp? maxUploadFileSize,
    Int_comparison_exp? minUploadFileSize,
    Boolean_comparison_exp? presignedUrlsEnabled,
    timestamptz_comparison_exp? updatedAt,
  }) = _BucketsBoolExp;

  factory BucketsBoolExp.fromJson(Map<String, Object?> json) => _BucketsBoolExpFromJson(json);
}

enum BucketsConstraint{
  /// unique or primary key constraint on columns "id" 
@JsonKey(name: buckets_pkey) buckets_pkey
}

/// input type for incrementing numeric columns in table "storage.buckets" 
@unfreezed
class BucketsIncInput with _$BucketsIncInput {
  const BucketsIncInput._();

  /// input type for incrementing numeric columns in table "storage.buckets" 
  const factory BucketsIncInput({
    int? downloadExpiration,
    int? maxUploadFileSize,
    int? minUploadFileSize,
  }) = _BucketsIncInput;

  factory BucketsIncInput.fromJson(Map<String, Object?> json) => _BucketsIncInputFromJson(json);
}

/// input type for inserting data into table "storage.buckets" 
@unfreezed
class BucketsInsertInput with _$BucketsInsertInput {
  const BucketsInsertInput._();

  /// input type for inserting data into table "storage.buckets" 
  const factory BucketsInsertInput({
    String? cacheControl,
    timestamptz? createdAt,
    int? downloadExpiration,
    files_arr_rel_insert_input? files,
    String? id,
    int? maxUploadFileSize,
    int? minUploadFileSize,
    bool? presignedUrlsEnabled,
    timestamptz? updatedAt,
  }) = _BucketsInsertInput;

  factory BucketsInsertInput.fromJson(Map<String, Object?> json) => _BucketsInsertInputFromJson(json);
}

/// aggregate max on columns 
@freezed
class BucketsMaxFields with _$BucketsMaxFields {
  const BucketsMaxFields._();

  /// aggregate max on columns 
  const factory BucketsMaxFields({
    String? cacheControl,
    timestamptz? createdAt,
    int? downloadExpiration,
    String? id,
    int? maxUploadFileSize,
    int? minUploadFileSize,
    timestamptz? updatedAt,
  }) = _BucketsMaxFields;

  factory BucketsMaxFields.fromJson(Map<String, Object?> json) => _BucketsMaxFieldsFromJson(json);
}

/// aggregate min on columns 
@freezed
class BucketsMinFields with _$BucketsMinFields {
  const BucketsMinFields._();

  /// aggregate min on columns 
  const factory BucketsMinFields({
    String? cacheControl,
    timestamptz? createdAt,
    int? downloadExpiration,
    String? id,
    int? maxUploadFileSize,
    int? minUploadFileSize,
    timestamptz? updatedAt,
  }) = _BucketsMinFields;

  factory BucketsMinFields.fromJson(Map<String, Object?> json) => _BucketsMinFieldsFromJson(json);
}

/// response of any mutation on the table "storage.buckets" 
@freezed
class BucketsMutationResponse with _$BucketsMutationResponse {
  const BucketsMutationResponse._();

  /// response of any mutation on the table "storage.buckets" 
  const factory BucketsMutationResponse({
    /// number of rows affected by the mutation
    @JsonKey(name: 'affected_rows')
    required int affectedRows,
    /// data from the rows affected by the mutation
    required List<buckets> returning,
  }) = _BucketsMutationResponse;

  factory BucketsMutationResponse.fromJson(Map<String, Object?> json) => _BucketsMutationResponseFromJson(json);
}

/// input type for inserting object relation for remote table "storage.buckets" 
@unfreezed
class BucketsObjRelInsertInput with _$BucketsObjRelInsertInput {
  const BucketsObjRelInsertInput._();

  /// input type for inserting object relation for remote table "storage.buckets" 
  const factory BucketsObjRelInsertInput({
    required buckets_insert_input data,
    /// upsert condition
    @JsonKey(name: 'on_conflict')
    buckets_on_conflict? onConflict,
  }) = _BucketsObjRelInsertInput;

  factory BucketsObjRelInsertInput.fromJson(Map<String, Object?> json) => _BucketsObjRelInsertInputFromJson(json);
}

/// on_conflict condition type for table "storage.buckets" 
@unfreezed
class BucketsOnConflict with _$BucketsOnConflict {
  const BucketsOnConflict._();

  /// on_conflict condition type for table "storage.buckets" 
  const factory BucketsOnConflict({
    required buckets_constraint constraint,
    @JsonKey(name: 'update_columns')
    required List<buckets_update_column> updateColumns,
    buckets_bool_exp? where,
  }) = _BucketsOnConflict;

  factory BucketsOnConflict.fromJson(Map<String, Object?> json) => _BucketsOnConflictFromJson(json);
}

/// Ordering options when selecting data from "storage.buckets". 
@unfreezed
class BucketsOrderBy with _$BucketsOrderBy {
  const BucketsOrderBy._();

  /// Ordering options when selecting data from "storage.buckets". 
  const factory BucketsOrderBy({
    order_by? cacheControl,
    order_by? createdAt,
    order_by? downloadExpiration,
    @JsonKey(name: 'files_aggregate')
    files_aggregate_order_by? filesAggregate,
    order_by? id,
    order_by? maxUploadFileSize,
    order_by? minUploadFileSize,
    order_by? presignedUrlsEnabled,
    order_by? updatedAt,
  }) = _BucketsOrderBy;

  factory BucketsOrderBy.fromJson(Map<String, Object?> json) => _BucketsOrderByFromJson(json);
}

/// primary key columns input for table: storage.buckets 
@unfreezed
class BucketsPkColumnsInput with _$BucketsPkColumnsInput {
  const BucketsPkColumnsInput._();

  /// primary key columns input for table: storage.buckets 
  const factory BucketsPkColumnsInput({
    required String id,
  }) = _BucketsPkColumnsInput;

  factory BucketsPkColumnsInput.fromJson(Map<String, Object?> json) => _BucketsPkColumnsInputFromJson(json);
}

enum BucketsSelectColumn{
  /// column name 
@JsonKey(name: cacheControl) cachecontrol
  /// column name 
@JsonKey(name: createdAt) createdat
  /// column name 
@JsonKey(name: downloadExpiration) downloadexpiration
  /// column name 
@JsonKey(name: id) id
  /// column name 
@JsonKey(name: maxUploadFileSize) maxuploadfilesize
  /// column name 
@JsonKey(name: minUploadFileSize) minuploadfilesize
  /// column name 
@JsonKey(name: presignedUrlsEnabled) presignedurlsenabled
  /// column name 
@JsonKey(name: updatedAt) updatedat
}

/// input type for updating data in table "storage.buckets" 
@unfreezed
class BucketsSetInput with _$BucketsSetInput {
  const BucketsSetInput._();

  /// input type for updating data in table "storage.buckets" 
  const factory BucketsSetInput({
    String? cacheControl,
    timestamptz? createdAt,
    int? downloadExpiration,
    String? id,
    int? maxUploadFileSize,
    int? minUploadFileSize,
    bool? presignedUrlsEnabled,
    timestamptz? updatedAt,
  }) = _BucketsSetInput;

  factory BucketsSetInput.fromJson(Map<String, Object?> json) => _BucketsSetInputFromJson(json);
}

/// aggregate stddev on columns 
@freezed
class BucketsStddevFields with _$BucketsStddevFields {
  const BucketsStddevFields._();

  /// aggregate stddev on columns 
  const factory BucketsStddevFields({
    double? downloadExpiration,
    double? maxUploadFileSize,
    double? minUploadFileSize,
  }) = _BucketsStddevFields;

  factory BucketsStddevFields.fromJson(Map<String, Object?> json) => _BucketsStddevFieldsFromJson(json);
}

/// aggregate stddev_pop on columns 
@freezed
class BucketsStddevPopFields with _$BucketsStddevPopFields {
  const BucketsStddevPopFields._();

  /// aggregate stddev_pop on columns 
  const factory BucketsStddevPopFields({
    double? downloadExpiration,
    double? maxUploadFileSize,
    double? minUploadFileSize,
  }) = _BucketsStddevPopFields;

  factory BucketsStddevPopFields.fromJson(Map<String, Object?> json) => _BucketsStddevPopFieldsFromJson(json);
}

/// aggregate stddev_samp on columns 
@freezed
class BucketsStddevSampFields with _$BucketsStddevSampFields {
  const BucketsStddevSampFields._();

  /// aggregate stddev_samp on columns 
  const factory BucketsStddevSampFields({
    double? downloadExpiration,
    double? maxUploadFileSize,
    double? minUploadFileSize,
  }) = _BucketsStddevSampFields;

  factory BucketsStddevSampFields.fromJson(Map<String, Object?> json) => _BucketsStddevSampFieldsFromJson(json);
}

/// Streaming cursor of the table "buckets" 
@unfreezed
class BucketsStreamCursorInput with _$BucketsStreamCursorInput {
  const BucketsStreamCursorInput._();

  /// Streaming cursor of the table "buckets" 
  const factory BucketsStreamCursorInput({
    /// Stream column input with initial value
    @JsonKey(name: 'initial_value')
    required buckets_stream_cursor_value_input initialValue,
    /// cursor ordering
    cursor_ordering? ordering,
  }) = _BucketsStreamCursorInput;

  factory BucketsStreamCursorInput.fromJson(Map<String, Object?> json) => _BucketsStreamCursorInputFromJson(json);
}

/// Initial value of the column from where the streaming should start 
@unfreezed
class BucketsStreamCursorValueInput with _$BucketsStreamCursorValueInput {
  const BucketsStreamCursorValueInput._();

  /// Initial value of the column from where the streaming should start 
  const factory BucketsStreamCursorValueInput({
    String? cacheControl,
    timestamptz? createdAt,
    int? downloadExpiration,
    String? id,
    int? maxUploadFileSize,
    int? minUploadFileSize,
    bool? presignedUrlsEnabled,
    timestamptz? updatedAt,
  }) = _BucketsStreamCursorValueInput;

  factory BucketsStreamCursorValueInput.fromJson(Map<String, Object?> json) => _BucketsStreamCursorValueInputFromJson(json);
}

/// aggregate sum on columns 
@freezed
class BucketsSumFields with _$BucketsSumFields {
  const BucketsSumFields._();

  /// aggregate sum on columns 
  const factory BucketsSumFields({
    int? downloadExpiration,
    int? maxUploadFileSize,
    int? minUploadFileSize,
  }) = _BucketsSumFields;

  factory BucketsSumFields.fromJson(Map<String, Object?> json) => _BucketsSumFieldsFromJson(json);
}

enum BucketsUpdateColumn{
  /// column name 
@JsonKey(name: cacheControl) cachecontrol
  /// column name 
@JsonKey(name: createdAt) createdat
  /// column name 
@JsonKey(name: downloadExpiration) downloadexpiration
  /// column name 
@JsonKey(name: id) id
  /// column name 
@JsonKey(name: maxUploadFileSize) maxuploadfilesize
  /// column name 
@JsonKey(name: minUploadFileSize) minuploadfilesize
  /// column name 
@JsonKey(name: presignedUrlsEnabled) presignedurlsenabled
  /// column name 
@JsonKey(name: updatedAt) updatedat
}

@unfreezed
class BucketsUpdates with _$BucketsUpdates {
  const BucketsUpdates._();

  const factory BucketsUpdates({
    /// increments the numeric columns with given value of the filtered values
    @JsonKey(name: '_inc')
    buckets_inc_input? inc,
    /// sets the columns of the filtered rows to the given values
    @JsonKey(name: '_set')
    buckets_set_input? set,
    required buckets_bool_exp where,
  }) = _BucketsUpdates;

  factory BucketsUpdates.fromJson(Map<String, Object?> json) => _BucketsUpdatesFromJson(json);
}

/// aggregate var_pop on columns 
@freezed
class BucketsVarPopFields with _$BucketsVarPopFields {
  const BucketsVarPopFields._();

  /// aggregate var_pop on columns 
  const factory BucketsVarPopFields({
    double? downloadExpiration,
    double? maxUploadFileSize,
    double? minUploadFileSize,
  }) = _BucketsVarPopFields;

  factory BucketsVarPopFields.fromJson(Map<String, Object?> json) => _BucketsVarPopFieldsFromJson(json);
}

/// aggregate var_samp on columns 
@freezed
class BucketsVarSampFields with _$BucketsVarSampFields {
  const BucketsVarSampFields._();

  /// aggregate var_samp on columns 
  const factory BucketsVarSampFields({
    double? downloadExpiration,
    double? maxUploadFileSize,
    double? minUploadFileSize,
  }) = _BucketsVarSampFields;

  factory BucketsVarSampFields.fromJson(Map<String, Object?> json) => _BucketsVarSampFieldsFromJson(json);
}

/// aggregate variance on columns 
@freezed
class BucketsVarianceFields with _$BucketsVarianceFields {
  const BucketsVarianceFields._();

  /// aggregate variance on columns 
  const factory BucketsVarianceFields({
    double? downloadExpiration,
    double? maxUploadFileSize,
    double? minUploadFileSize,
  }) = _BucketsVarianceFields;

  factory BucketsVarianceFields.fromJson(Map<String, Object?> json) => _BucketsVarianceFieldsFromJson(json);
}

/// Boolean expression to compare columns of type "bytea". All fields are combined with logical 'AND'. 
@unfreezed
class ByteaComparisonExp with _$ByteaComparisonExp {
  const ByteaComparisonExp._();

  /// Boolean expression to compare columns of type "bytea". All fields are combined with logical 'AND'. 
  const factory ByteaComparisonExp({
    @JsonKey(name: '_eq')
    bytea? eq,
    @JsonKey(name: '_gt')
    bytea? gt,
    @JsonKey(name: '_gte')
    bytea? gte,
    @JsonKey(name: '_in')
    List<bytea>? in,
    @JsonKey(name: '_is_null')
    bool? isNull,
    @JsonKey(name: '_lt')
    bytea? lt,
    @JsonKey(name: '_lte')
    bytea? lte,
    @JsonKey(name: '_neq')
    bytea? neq,
    @JsonKey(name: '_nin')
    List<bytea>? nin,
  }) = _ByteaComparisonExp;

  factory ByteaComparisonExp.fromJson(Map<String, Object?> json) => _ByteaComparisonExpFromJson(json);
}

/// Boolean expression to compare columns of type "citext". All fields are combined with logical 'AND'. 
@unfreezed
class CitextComparisonExp with _$CitextComparisonExp {
  const CitextComparisonExp._();

  /// Boolean expression to compare columns of type "citext". All fields are combined with logical 'AND'. 
  const factory CitextComparisonExp({
    @JsonKey(name: '_eq')
    citext? eq,
    @JsonKey(name: '_gt')
    citext? gt,
    @JsonKey(name: '_gte')
    citext? gte,
    /// does the column match the given case-insensitive pattern
    @JsonKey(name: '_ilike')
    citext? ilike,
    @JsonKey(name: '_in')
    List<citext>? in,
    /// does the column match the given POSIX regular expression, case insensitive
    @JsonKey(name: '_iregex')
    citext? iregex,
    @JsonKey(name: '_is_null')
    bool? isNull,
    /// does the column match the given pattern
    @JsonKey(name: '_like')
    citext? like,
    @JsonKey(name: '_lt')
    citext? lt,
    @JsonKey(name: '_lte')
    citext? lte,
    @JsonKey(name: '_neq')
    citext? neq,
    /// does the column NOT match the given case-insensitive pattern
    @JsonKey(name: '_nilike')
    citext? nilike,
    @JsonKey(name: '_nin')
    List<citext>? nin,
    /// does the column NOT match the given POSIX regular expression, case insensitive
    @JsonKey(name: '_niregex')
    citext? niregex,
    /// does the column NOT match the given pattern
    @JsonKey(name: '_nlike')
    citext? nlike,
    /// does the column NOT match the given POSIX regular expression, case sensitive
    @JsonKey(name: '_nregex')
    citext? nregex,
    /// does the column NOT match the given SQL regular expression
    @JsonKey(name: '_nsimilar')
    citext? nsimilar,
    /// does the column match the given POSIX regular expression, case sensitive
    @JsonKey(name: '_regex')
    citext? regex,
    /// does the column match the given SQL regular expression
    @JsonKey(name: '_similar')
    citext? similar,
  }) = _CitextComparisonExp;

  factory CitextComparisonExp.fromJson(Map<String, Object?> json) => _CitextComparisonExpFromJson(json);
}

enum CursorOrdering{
  /// ascending ordering of the cursor 
@JsonKey(name: ASC) asc
  /// descending ordering of the cursor 
@JsonKey(name: DESC) desc
}

/// columns and relationships of "storage.files" 
@freezed
class Files with _$Files {
  const Files._();

  /// columns and relationships of "storage.files" 
  const factory Files({
    /// An object relationship
    required buckets bucket,
    required String bucketId,
    required timestamptz createdAt,
    String? etag,
    required uuid id,
    bool? isUploaded,
    String? mimeType,
    String? name,
    int? size,
    required timestamptz updatedAt,
    uuid? uploadedByUserId,
  }) = _Files;

  factory Files.fromJson(Map<String, Object?> json) => _FilesFromJson(json);
}

/// aggregated selection of "storage.files" 
@freezed
class FilesAggregate with _$FilesAggregate {
  const FilesAggregate._();

  /// aggregated selection of "storage.files" 
  const factory FilesAggregate({
    files_aggregate_fields? aggregate,
    required List<files> nodes,
  }) = _FilesAggregate;

  factory FilesAggregate.fromJson(Map<String, Object?> json) => _FilesAggregateFromJson(json);
}

@unfreezed
class FilesAggregateBoolExp with _$FilesAggregateBoolExp {
  const FilesAggregateBoolExp._();

  const factory FilesAggregateBoolExp({
    @JsonKey(name: 'bool_and')
    files_aggregate_bool_exp_bool_and? boolAnd,
    @JsonKey(name: 'bool_or')
    files_aggregate_bool_exp_bool_or? boolOr,
    files_aggregate_bool_exp_count? count,
  }) = _FilesAggregateBoolExp;

  factory FilesAggregateBoolExp.fromJson(Map<String, Object?> json) => _FilesAggregateBoolExpFromJson(json);
}

@unfreezed
class FilesAggregateBoolExpBoolAnd with _$FilesAggregateBoolExpBoolAnd {
  const FilesAggregateBoolExpBoolAnd._();

  const factory FilesAggregateBoolExpBoolAnd({
    required files_select_column_files_aggregate_bool_exp_bool_and_arguments_columns arguments,
    bool? distinct,
    files_bool_exp? filter,
    required Boolean_comparison_exp predicate,
  }) = _FilesAggregateBoolExpBoolAnd;

  factory FilesAggregateBoolExpBoolAnd.fromJson(Map<String, Object?> json) => _FilesAggregateBoolExpBoolAndFromJson(json);
}

@unfreezed
class FilesAggregateBoolExpBoolOr with _$FilesAggregateBoolExpBoolOr {
  const FilesAggregateBoolExpBoolOr._();

  const factory FilesAggregateBoolExpBoolOr({
    required files_select_column_files_aggregate_bool_exp_bool_or_arguments_columns arguments,
    bool? distinct,
    files_bool_exp? filter,
    required Boolean_comparison_exp predicate,
  }) = _FilesAggregateBoolExpBoolOr;

  factory FilesAggregateBoolExpBoolOr.fromJson(Map<String, Object?> json) => _FilesAggregateBoolExpBoolOrFromJson(json);
}

@unfreezed
class FilesAggregateBoolExpCount with _$FilesAggregateBoolExpCount {
  const FilesAggregateBoolExpCount._();

  const factory FilesAggregateBoolExpCount({
    List<files_select_column>? arguments,
    bool? distinct,
    files_bool_exp? filter,
    required Int_comparison_exp predicate,
  }) = _FilesAggregateBoolExpCount;

  factory FilesAggregateBoolExpCount.fromJson(Map<String, Object?> json) => _FilesAggregateBoolExpCountFromJson(json);
}

/// aggregate fields of "storage.files" 
@freezed
class FilesAggregateFields with _$FilesAggregateFields {
  const FilesAggregateFields._();

  /// aggregate fields of "storage.files" 
  const factory FilesAggregateFields({
    files_avg_fields? avg,
    required int count,
    files_max_fields? max,
    files_min_fields? min,
    files_stddev_fields? stddev,
    @JsonKey(name: 'stddev_pop')
    files_stddev_pop_fields? stddevPop,
    @JsonKey(name: 'stddev_samp')
    files_stddev_samp_fields? stddevSamp,
    files_sum_fields? sum,
    @JsonKey(name: 'var_pop')
    files_var_pop_fields? varPop,
    @JsonKey(name: 'var_samp')
    files_var_samp_fields? varSamp,
    files_variance_fields? variance,
  }) = _FilesAggregateFields;

  factory FilesAggregateFields.fromJson(Map<String, Object?> json) => _FilesAggregateFieldsFromJson(json);
}

/// order by aggregate values of table "storage.files" 
@unfreezed
class FilesAggregateOrderBy with _$FilesAggregateOrderBy {
  const FilesAggregateOrderBy._();

  /// order by aggregate values of table "storage.files" 
  const factory FilesAggregateOrderBy({
    files_avg_order_by? avg,
    order_by? count,
    files_max_order_by? max,
    files_min_order_by? min,
    files_stddev_order_by? stddev,
    @JsonKey(name: 'stddev_pop')
    files_stddev_pop_order_by? stddevPop,
    @JsonKey(name: 'stddev_samp')
    files_stddev_samp_order_by? stddevSamp,
    files_sum_order_by? sum,
    @JsonKey(name: 'var_pop')
    files_var_pop_order_by? varPop,
    @JsonKey(name: 'var_samp')
    files_var_samp_order_by? varSamp,
    files_variance_order_by? variance,
  }) = _FilesAggregateOrderBy;

  factory FilesAggregateOrderBy.fromJson(Map<String, Object?> json) => _FilesAggregateOrderByFromJson(json);
}

/// input type for inserting array relation for remote table "storage.files" 
@unfreezed
class FilesArrRelInsertInput with _$FilesArrRelInsertInput {
  const FilesArrRelInsertInput._();

  /// input type for inserting array relation for remote table "storage.files" 
  const factory FilesArrRelInsertInput({
    required List<files_insert_input> data,
    /// upsert condition
    @JsonKey(name: 'on_conflict')
    files_on_conflict? onConflict,
  }) = _FilesArrRelInsertInput;

  factory FilesArrRelInsertInput.fromJson(Map<String, Object?> json) => _FilesArrRelInsertInputFromJson(json);
}

/// aggregate avg on columns 
@freezed
class FilesAvgFields with _$FilesAvgFields {
  const FilesAvgFields._();

  /// aggregate avg on columns 
  const factory FilesAvgFields({
    double? size,
  }) = _FilesAvgFields;

  factory FilesAvgFields.fromJson(Map<String, Object?> json) => _FilesAvgFieldsFromJson(json);
}

/// order by avg() on columns of table "storage.files" 
@unfreezed
class FilesAvgOrderBy with _$FilesAvgOrderBy {
  const FilesAvgOrderBy._();

  /// order by avg() on columns of table "storage.files" 
  const factory FilesAvgOrderBy({
    order_by? size,
  }) = _FilesAvgOrderBy;

  factory FilesAvgOrderBy.fromJson(Map<String, Object?> json) => _FilesAvgOrderByFromJson(json);
}

/// Boolean expression to filter rows from the table "storage.files". All fields are combined with a logical 'AND'. 
@unfreezed
class FilesBoolExp with _$FilesBoolExp {
  const FilesBoolExp._();

  /// Boolean expression to filter rows from the table "storage.files". All fields are combined with a logical 'AND'. 
  const factory FilesBoolExp({
    @JsonKey(name: '_and')
    List<files_bool_exp>? and,
    @JsonKey(name: '_not')
    files_bool_exp? not,
    @JsonKey(name: '_or')
    List<files_bool_exp>? or,
    buckets_bool_exp? bucket,
    String_comparison_exp? bucketId,
    timestamptz_comparison_exp? createdAt,
    String_comparison_exp? etag,
    uuid_comparison_exp? id,
    Boolean_comparison_exp? isUploaded,
    String_comparison_exp? mimeType,
    String_comparison_exp? name,
    Int_comparison_exp? size,
    timestamptz_comparison_exp? updatedAt,
    uuid_comparison_exp? uploadedByUserId,
  }) = _FilesBoolExp;

  factory FilesBoolExp.fromJson(Map<String, Object?> json) => _FilesBoolExpFromJson(json);
}

enum FilesConstraint{
  /// unique or primary key constraint on columns "id" 
@JsonKey(name: files_pkey) files_pkey
}

/// input type for incrementing numeric columns in table "storage.files" 
@unfreezed
class FilesIncInput with _$FilesIncInput {
  const FilesIncInput._();

  /// input type for incrementing numeric columns in table "storage.files" 
  const factory FilesIncInput({
    int? size,
  }) = _FilesIncInput;

  factory FilesIncInput.fromJson(Map<String, Object?> json) => _FilesIncInputFromJson(json);
}

/// input type for inserting data into table "storage.files" 
@unfreezed
class FilesInsertInput with _$FilesInsertInput {
  const FilesInsertInput._();

  /// input type for inserting data into table "storage.files" 
  const factory FilesInsertInput({
    buckets_obj_rel_insert_input? bucket,
    String? bucketId,
    timestamptz? createdAt,
    String? etag,
    uuid? id,
    bool? isUploaded,
    String? mimeType,
    String? name,
    int? size,
    timestamptz? updatedAt,
    uuid? uploadedByUserId,
  }) = _FilesInsertInput;

  factory FilesInsertInput.fromJson(Map<String, Object?> json) => _FilesInsertInputFromJson(json);
}

/// aggregate max on columns 
@freezed
class FilesMaxFields with _$FilesMaxFields {
  const FilesMaxFields._();

  /// aggregate max on columns 
  const factory FilesMaxFields({
    String? bucketId,
    timestamptz? createdAt,
    String? etag,
    uuid? id,
    String? mimeType,
    String? name,
    int? size,
    timestamptz? updatedAt,
    uuid? uploadedByUserId,
  }) = _FilesMaxFields;

  factory FilesMaxFields.fromJson(Map<String, Object?> json) => _FilesMaxFieldsFromJson(json);
}

/// order by max() on columns of table "storage.files" 
@unfreezed
class FilesMaxOrderBy with _$FilesMaxOrderBy {
  const FilesMaxOrderBy._();

  /// order by max() on columns of table "storage.files" 
  const factory FilesMaxOrderBy({
    order_by? bucketId,
    order_by? createdAt,
    order_by? etag,
    order_by? id,
    order_by? mimeType,
    order_by? name,
    order_by? size,
    order_by? updatedAt,
    order_by? uploadedByUserId,
  }) = _FilesMaxOrderBy;

  factory FilesMaxOrderBy.fromJson(Map<String, Object?> json) => _FilesMaxOrderByFromJson(json);
}

/// aggregate min on columns 
@freezed
class FilesMinFields with _$FilesMinFields {
  const FilesMinFields._();

  /// aggregate min on columns 
  const factory FilesMinFields({
    String? bucketId,
    timestamptz? createdAt,
    String? etag,
    uuid? id,
    String? mimeType,
    String? name,
    int? size,
    timestamptz? updatedAt,
    uuid? uploadedByUserId,
  }) = _FilesMinFields;

  factory FilesMinFields.fromJson(Map<String, Object?> json) => _FilesMinFieldsFromJson(json);
}

/// order by min() on columns of table "storage.files" 
@unfreezed
class FilesMinOrderBy with _$FilesMinOrderBy {
  const FilesMinOrderBy._();

  /// order by min() on columns of table "storage.files" 
  const factory FilesMinOrderBy({
    order_by? bucketId,
    order_by? createdAt,
    order_by? etag,
    order_by? id,
    order_by? mimeType,
    order_by? name,
    order_by? size,
    order_by? updatedAt,
    order_by? uploadedByUserId,
  }) = _FilesMinOrderBy;

  factory FilesMinOrderBy.fromJson(Map<String, Object?> json) => _FilesMinOrderByFromJson(json);
}

/// response of any mutation on the table "storage.files" 
@freezed
class FilesMutationResponse with _$FilesMutationResponse {
  const FilesMutationResponse._();

  /// response of any mutation on the table "storage.files" 
  const factory FilesMutationResponse({
    /// number of rows affected by the mutation
    @JsonKey(name: 'affected_rows')
    required int affectedRows,
    /// data from the rows affected by the mutation
    required List<files> returning,
  }) = _FilesMutationResponse;

  factory FilesMutationResponse.fromJson(Map<String, Object?> json) => _FilesMutationResponseFromJson(json);
}

/// on_conflict condition type for table "storage.files" 
@unfreezed
class FilesOnConflict with _$FilesOnConflict {
  const FilesOnConflict._();

  /// on_conflict condition type for table "storage.files" 
  const factory FilesOnConflict({
    required files_constraint constraint,
    @JsonKey(name: 'update_columns')
    required List<files_update_column> updateColumns,
    files_bool_exp? where,
  }) = _FilesOnConflict;

  factory FilesOnConflict.fromJson(Map<String, Object?> json) => _FilesOnConflictFromJson(json);
}

/// Ordering options when selecting data from "storage.files". 
@unfreezed
class FilesOrderBy with _$FilesOrderBy {
  const FilesOrderBy._();

  /// Ordering options when selecting data from "storage.files". 
  const factory FilesOrderBy({
    buckets_order_by? bucket,
    order_by? bucketId,
    order_by? createdAt,
    order_by? etag,
    order_by? id,
    order_by? isUploaded,
    order_by? mimeType,
    order_by? name,
    order_by? size,
    order_by? updatedAt,
    order_by? uploadedByUserId,
  }) = _FilesOrderBy;

  factory FilesOrderBy.fromJson(Map<String, Object?> json) => _FilesOrderByFromJson(json);
}

/// primary key columns input for table: storage.files 
@unfreezed
class FilesPkColumnsInput with _$FilesPkColumnsInput {
  const FilesPkColumnsInput._();

  /// primary key columns input for table: storage.files 
  const factory FilesPkColumnsInput({
    required uuid id,
  }) = _FilesPkColumnsInput;

  factory FilesPkColumnsInput.fromJson(Map<String, Object?> json) => _FilesPkColumnsInputFromJson(json);
}

enum FilesSelectColumn{
  /// column name 
@JsonKey(name: bucketId) bucketid
  /// column name 
@JsonKey(name: createdAt) createdat
  /// column name 
@JsonKey(name: etag) etag
  /// column name 
@JsonKey(name: id) id
  /// column name 
@JsonKey(name: isUploaded) isuploaded
  /// column name 
@JsonKey(name: mimeType) mimetype
  /// column name 
@JsonKey(name: name) name
  /// column name 
@JsonKey(name: size) size
  /// column name 
@JsonKey(name: updatedAt) updatedat
  /// column name 
@JsonKey(name: uploadedByUserId) uploadedbyuserid
}

enum FilesSelectColumnFilesAggregateBoolExpBoolAndArgumentsColumns{
  /// column name 
@JsonKey(name: isUploaded) isuploaded
}

enum FilesSelectColumnFilesAggregateBoolExpBoolOrArgumentsColumns{
  /// column name 
@JsonKey(name: isUploaded) isuploaded
}

/// input type for updating data in table "storage.files" 
@unfreezed
class FilesSetInput with _$FilesSetInput {
  const FilesSetInput._();

  /// input type for updating data in table "storage.files" 
  const factory FilesSetInput({
    String? bucketId,
    timestamptz? createdAt,
    String? etag,
    uuid? id,
    bool? isUploaded,
    String? mimeType,
    String? name,
    int? size,
    timestamptz? updatedAt,
    uuid? uploadedByUserId,
  }) = _FilesSetInput;

  factory FilesSetInput.fromJson(Map<String, Object?> json) => _FilesSetInputFromJson(json);
}

/// aggregate stddev on columns 
@freezed
class FilesStddevFields with _$FilesStddevFields {
  const FilesStddevFields._();

  /// aggregate stddev on columns 
  const factory FilesStddevFields({
    double? size,
  }) = _FilesStddevFields;

  factory FilesStddevFields.fromJson(Map<String, Object?> json) => _FilesStddevFieldsFromJson(json);
}

/// order by stddev() on columns of table "storage.files" 
@unfreezed
class FilesStddevOrderBy with _$FilesStddevOrderBy {
  const FilesStddevOrderBy._();

  /// order by stddev() on columns of table "storage.files" 
  const factory FilesStddevOrderBy({
    order_by? size,
  }) = _FilesStddevOrderBy;

  factory FilesStddevOrderBy.fromJson(Map<String, Object?> json) => _FilesStddevOrderByFromJson(json);
}

/// aggregate stddev_pop on columns 
@freezed
class FilesStddevPopFields with _$FilesStddevPopFields {
  const FilesStddevPopFields._();

  /// aggregate stddev_pop on columns 
  const factory FilesStddevPopFields({
    double? size,
  }) = _FilesStddevPopFields;

  factory FilesStddevPopFields.fromJson(Map<String, Object?> json) => _FilesStddevPopFieldsFromJson(json);
}

/// order by stddev_pop() on columns of table "storage.files" 
@unfreezed
class FilesStddevPopOrderBy with _$FilesStddevPopOrderBy {
  const FilesStddevPopOrderBy._();

  /// order by stddev_pop() on columns of table "storage.files" 
  const factory FilesStddevPopOrderBy({
    order_by? size,
  }) = _FilesStddevPopOrderBy;

  factory FilesStddevPopOrderBy.fromJson(Map<String, Object?> json) => _FilesStddevPopOrderByFromJson(json);
}

/// aggregate stddev_samp on columns 
@freezed
class FilesStddevSampFields with _$FilesStddevSampFields {
  const FilesStddevSampFields._();

  /// aggregate stddev_samp on columns 
  const factory FilesStddevSampFields({
    double? size,
  }) = _FilesStddevSampFields;

  factory FilesStddevSampFields.fromJson(Map<String, Object?> json) => _FilesStddevSampFieldsFromJson(json);
}

/// order by stddev_samp() on columns of table "storage.files" 
@unfreezed
class FilesStddevSampOrderBy with _$FilesStddevSampOrderBy {
  const FilesStddevSampOrderBy._();

  /// order by stddev_samp() on columns of table "storage.files" 
  const factory FilesStddevSampOrderBy({
    order_by? size,
  }) = _FilesStddevSampOrderBy;

  factory FilesStddevSampOrderBy.fromJson(Map<String, Object?> json) => _FilesStddevSampOrderByFromJson(json);
}

/// Streaming cursor of the table "files" 
@unfreezed
class FilesStreamCursorInput with _$FilesStreamCursorInput {
  const FilesStreamCursorInput._();

  /// Streaming cursor of the table "files" 
  const factory FilesStreamCursorInput({
    /// Stream column input with initial value
    @JsonKey(name: 'initial_value')
    required files_stream_cursor_value_input initialValue,
    /// cursor ordering
    cursor_ordering? ordering,
  }) = _FilesStreamCursorInput;

  factory FilesStreamCursorInput.fromJson(Map<String, Object?> json) => _FilesStreamCursorInputFromJson(json);
}

/// Initial value of the column from where the streaming should start 
@unfreezed
class FilesStreamCursorValueInput with _$FilesStreamCursorValueInput {
  const FilesStreamCursorValueInput._();

  /// Initial value of the column from where the streaming should start 
  const factory FilesStreamCursorValueInput({
    String? bucketId,
    timestamptz? createdAt,
    String? etag,
    uuid? id,
    bool? isUploaded,
    String? mimeType,
    String? name,
    int? size,
    timestamptz? updatedAt,
    uuid? uploadedByUserId,
  }) = _FilesStreamCursorValueInput;

  factory FilesStreamCursorValueInput.fromJson(Map<String, Object?> json) => _FilesStreamCursorValueInputFromJson(json);
}

/// aggregate sum on columns 
@freezed
class FilesSumFields with _$FilesSumFields {
  const FilesSumFields._();

  /// aggregate sum on columns 
  const factory FilesSumFields({
    int? size,
  }) = _FilesSumFields;

  factory FilesSumFields.fromJson(Map<String, Object?> json) => _FilesSumFieldsFromJson(json);
}

/// order by sum() on columns of table "storage.files" 
@unfreezed
class FilesSumOrderBy with _$FilesSumOrderBy {
  const FilesSumOrderBy._();

  /// order by sum() on columns of table "storage.files" 
  const factory FilesSumOrderBy({
    order_by? size,
  }) = _FilesSumOrderBy;

  factory FilesSumOrderBy.fromJson(Map<String, Object?> json) => _FilesSumOrderByFromJson(json);
}

enum FilesUpdateColumn{
  /// column name 
@JsonKey(name: bucketId) bucketid
  /// column name 
@JsonKey(name: createdAt) createdat
  /// column name 
@JsonKey(name: etag) etag
  /// column name 
@JsonKey(name: id) id
  /// column name 
@JsonKey(name: isUploaded) isuploaded
  /// column name 
@JsonKey(name: mimeType) mimetype
  /// column name 
@JsonKey(name: name) name
  /// column name 
@JsonKey(name: size) size
  /// column name 
@JsonKey(name: updatedAt) updatedat
  /// column name 
@JsonKey(name: uploadedByUserId) uploadedbyuserid
}

@unfreezed
class FilesUpdates with _$FilesUpdates {
  const FilesUpdates._();

  const factory FilesUpdates({
    /// increments the numeric columns with given value of the filtered values
    @JsonKey(name: '_inc')
    files_inc_input? inc,
    /// sets the columns of the filtered rows to the given values
    @JsonKey(name: '_set')
    files_set_input? set,
    required files_bool_exp where,
  }) = _FilesUpdates;

  factory FilesUpdates.fromJson(Map<String, Object?> json) => _FilesUpdatesFromJson(json);
}

/// aggregate var_pop on columns 
@freezed
class FilesVarPopFields with _$FilesVarPopFields {
  const FilesVarPopFields._();

  /// aggregate var_pop on columns 
  const factory FilesVarPopFields({
    double? size,
  }) = _FilesVarPopFields;

  factory FilesVarPopFields.fromJson(Map<String, Object?> json) => _FilesVarPopFieldsFromJson(json);
}

/// order by var_pop() on columns of table "storage.files" 
@unfreezed
class FilesVarPopOrderBy with _$FilesVarPopOrderBy {
  const FilesVarPopOrderBy._();

  /// order by var_pop() on columns of table "storage.files" 
  const factory FilesVarPopOrderBy({
    order_by? size,
  }) = _FilesVarPopOrderBy;

  factory FilesVarPopOrderBy.fromJson(Map<String, Object?> json) => _FilesVarPopOrderByFromJson(json);
}

/// aggregate var_samp on columns 
@freezed
class FilesVarSampFields with _$FilesVarSampFields {
  const FilesVarSampFields._();

  /// aggregate var_samp on columns 
  const factory FilesVarSampFields({
    double? size,
  }) = _FilesVarSampFields;

  factory FilesVarSampFields.fromJson(Map<String, Object?> json) => _FilesVarSampFieldsFromJson(json);
}

/// order by var_samp() on columns of table "storage.files" 
@unfreezed
class FilesVarSampOrderBy with _$FilesVarSampOrderBy {
  const FilesVarSampOrderBy._();

  /// order by var_samp() on columns of table "storage.files" 
  const factory FilesVarSampOrderBy({
    order_by? size,
  }) = _FilesVarSampOrderBy;

  factory FilesVarSampOrderBy.fromJson(Map<String, Object?> json) => _FilesVarSampOrderByFromJson(json);
}

/// aggregate variance on columns 
@freezed
class FilesVarianceFields with _$FilesVarianceFields {
  const FilesVarianceFields._();

  /// aggregate variance on columns 
  const factory FilesVarianceFields({
    double? size,
  }) = _FilesVarianceFields;

  factory FilesVarianceFields.fromJson(Map<String, Object?> json) => _FilesVarianceFieldsFromJson(json);
}

/// order by variance() on columns of table "storage.files" 
@unfreezed
class FilesVarianceOrderBy with _$FilesVarianceOrderBy {
  const FilesVarianceOrderBy._();

  /// order by variance() on columns of table "storage.files" 
  const factory FilesVarianceOrderBy({
    order_by? size,
  }) = _FilesVarianceOrderBy;

  factory FilesVarianceOrderBy.fromJson(Map<String, Object?> json) => _FilesVarianceOrderByFromJson(json);
}

@unfreezed
class JsonbCastExp with _$JsonbCastExp {
  const JsonbCastExp._();

  const factory JsonbCastExp({
    @JsonKey(name: 'String')
    String_comparison_exp? string,
  }) = _JsonbCastExp;

  factory JsonbCastExp.fromJson(Map<String, Object?> json) => _JsonbCastExpFromJson(json);
}

/// Boolean expression to compare columns of type "jsonb". All fields are combined with logical 'AND'. 
@unfreezed
class JsonbComparisonExp with _$JsonbComparisonExp {
  const JsonbComparisonExp._();

  /// Boolean expression to compare columns of type "jsonb". All fields are combined with logical 'AND'. 
  const factory JsonbComparisonExp({
    @JsonKey(name: '_cast')
    jsonb_cast_exp? cast,
    /// is the column contained in the given json value
    @JsonKey(name: '_contained_in')
    jsonb? containedIn,
    /// does the column contain the given json value at the top level
    @JsonKey(name: '_contains')
    jsonb? contains,
    @JsonKey(name: '_eq')
    jsonb? eq,
    @JsonKey(name: '_gt')
    jsonb? gt,
    @JsonKey(name: '_gte')
    jsonb? gte,
    /// does the string exist as a top-level key in the column
    @JsonKey(name: '_has_key')
    String? hasKey,
    /// do all of these strings exist as top-level keys in the column
    @JsonKey(name: '_has_keys_all')
    List<String>? hasKeysAll,
    /// do any of these strings exist as top-level keys in the column
    @JsonKey(name: '_has_keys_any')
    List<String>? hasKeysAny,
    @JsonKey(name: '_in')
    List<jsonb>? in,
    @JsonKey(name: '_is_null')
    bool? isNull,
    @JsonKey(name: '_lt')
    jsonb? lt,
    @JsonKey(name: '_lte')
    jsonb? lte,
    @JsonKey(name: '_neq')
    jsonb? neq,
    @JsonKey(name: '_nin')
    List<jsonb>? nin,
  }) = _JsonbComparisonExp;

  factory JsonbComparisonExp.fromJson(Map<String, Object?> json) => _JsonbComparisonExpFromJson(json);
}

/// mutation root 
@freezed
class MutationRoot with _$MutationRoot {
  const MutationRoot._();

  /// mutation root 
  const factory MutationRoot({
    /// delete single row from the table: "auth.providers"
    authProviders? deleteAuthProvider,
    /// delete single row from the table: "auth.provider_requests"
    authProviderRequests? deleteAuthProviderRequest,
    /// delete data from the table: "auth.provider_requests"
    authProviderRequests_mutation_response? deleteAuthProviderRequests,
    /// delete data from the table: "auth.providers"
    authProviders_mutation_response? deleteAuthProviders,
    /// delete single row from the table: "auth.refresh_tokens"
    authRefreshTokens? deleteAuthRefreshToken,
    /// delete data from the table: "auth.refresh_tokens"
    authRefreshTokens_mutation_response? deleteAuthRefreshTokens,
    /// delete single row from the table: "auth.roles"
    authRoles? deleteAuthRole,
    /// delete data from the table: "auth.roles"
    authRoles_mutation_response? deleteAuthRoles,
    /// delete single row from the table: "auth.user_providers"
    authUserProviders? deleteAuthUserProvider,
    /// delete data from the table: "auth.user_providers"
    authUserProviders_mutation_response? deleteAuthUserProviders,
    /// delete single row from the table: "auth.user_roles"
    authUserRoles? deleteAuthUserRole,
    /// delete data from the table: "auth.user_roles"
    authUserRoles_mutation_response? deleteAuthUserRoles,
    /// delete single row from the table: "auth.user_security_keys"
    authUserSecurityKeys? deleteAuthUserSecurityKey,
    /// delete data from the table: "auth.user_security_keys"
    authUserSecurityKeys_mutation_response? deleteAuthUserSecurityKeys,
    /// delete single row from the table: "storage.buckets"
    buckets? deleteBucket,
    /// delete data from the table: "storage.buckets"
    buckets_mutation_response? deleteBuckets,
    /// delete single row from the table: "storage.files"
    files? deleteFile,
    /// delete data from the table: "storage.files"
    files_mutation_response? deleteFiles,
    /// delete single row from the table: "auth.users"
    users? deleteUser,
    /// delete data from the table: "auth.users"
    users_mutation_response? deleteUsers,
    /// delete data from the table: "article"
    @JsonKey(name: 'delete_article')
    article_mutation_response? deleteArticle,
    /// delete single row from the table: "article"
    @JsonKey(name: 'delete_article_by_pk')
    article? deleteArticleByPk,
    /// insert a single row into the table: "auth.providers"
    authProviders? insertAuthProvider,
    /// insert a single row into the table: "auth.provider_requests"
    authProviderRequests? insertAuthProviderRequest,
    /// insert data into the table: "auth.provider_requests"
    authProviderRequests_mutation_response? insertAuthProviderRequests,
    /// insert data into the table: "auth.providers"
    authProviders_mutation_response? insertAuthProviders,
    /// insert a single row into the table: "auth.refresh_tokens"
    authRefreshTokens? insertAuthRefreshToken,
    /// insert data into the table: "auth.refresh_tokens"
    authRefreshTokens_mutation_response? insertAuthRefreshTokens,
    /// insert a single row into the table: "auth.roles"
    authRoles? insertAuthRole,
    /// insert data into the table: "auth.roles"
    authRoles_mutation_response? insertAuthRoles,
    /// insert a single row into the table: "auth.user_providers"
    authUserProviders? insertAuthUserProvider,
    /// insert data into the table: "auth.user_providers"
    authUserProviders_mutation_response? insertAuthUserProviders,
    /// insert a single row into the table: "auth.user_roles"
    authUserRoles? insertAuthUserRole,
    /// insert data into the table: "auth.user_roles"
    authUserRoles_mutation_response? insertAuthUserRoles,
    /// insert a single row into the table: "auth.user_security_keys"
    authUserSecurityKeys? insertAuthUserSecurityKey,
    /// insert data into the table: "auth.user_security_keys"
    authUserSecurityKeys_mutation_response? insertAuthUserSecurityKeys,
    /// insert a single row into the table: "storage.buckets"
    buckets? insertBucket,
    /// insert data into the table: "storage.buckets"
    buckets_mutation_response? insertBuckets,
    /// insert a single row into the table: "storage.files"
    files? insertFile,
    /// insert data into the table: "storage.files"
    files_mutation_response? insertFiles,
    /// insert a single row into the table: "auth.users"
    users? insertUser,
    /// insert data into the table: "auth.users"
    users_mutation_response? insertUsers,
    /// insert data into the table: "article"
    @JsonKey(name: 'insert_article')
    article_mutation_response? insertArticle,
    /// insert a single row into the table: "article"
    @JsonKey(name: 'insert_article_one')
    article? insertArticleOne,
    /// update single row of the table: "auth.providers"
    authProviders? updateAuthProvider,
    /// update single row of the table: "auth.provider_requests"
    authProviderRequests? updateAuthProviderRequest,
    /// update data of the table: "auth.provider_requests"
    authProviderRequests_mutation_response? updateAuthProviderRequests,
    /// update data of the table: "auth.providers"
    authProviders_mutation_response? updateAuthProviders,
    /// update single row of the table: "auth.refresh_tokens"
    authRefreshTokens? updateAuthRefreshToken,
    /// update data of the table: "auth.refresh_tokens"
    authRefreshTokens_mutation_response? updateAuthRefreshTokens,
    /// update single row of the table: "auth.roles"
    authRoles? updateAuthRole,
    /// update data of the table: "auth.roles"
    authRoles_mutation_response? updateAuthRoles,
    /// update single row of the table: "auth.user_providers"
    authUserProviders? updateAuthUserProvider,
    /// update data of the table: "auth.user_providers"
    authUserProviders_mutation_response? updateAuthUserProviders,
    /// update single row of the table: "auth.user_roles"
    authUserRoles? updateAuthUserRole,
    /// update data of the table: "auth.user_roles"
    authUserRoles_mutation_response? updateAuthUserRoles,
    /// update single row of the table: "auth.user_security_keys"
    authUserSecurityKeys? updateAuthUserSecurityKey,
    /// update data of the table: "auth.user_security_keys"
    authUserSecurityKeys_mutation_response? updateAuthUserSecurityKeys,
    /// update single row of the table: "storage.buckets"
    buckets? updateBucket,
    /// update data of the table: "storage.buckets"
    buckets_mutation_response? updateBuckets,
    /// update single row of the table: "storage.files"
    files? updateFile,
    /// update data of the table: "storage.files"
    files_mutation_response? updateFiles,
    /// update single row of the table: "auth.users"
    users? updateUser,
    /// update data of the table: "auth.users"
    users_mutation_response? updateUsers,
    /// update data of the table: "article"
    @JsonKey(name: 'update_article')
    article_mutation_response? updateArticle,
    /// update single row of the table: "article"
    @JsonKey(name: 'update_article_by_pk')
    article? updateArticleByPk,
    /// update multiples rows of table: "article"
    @JsonKey(name: 'update_article_many')
    List<article_mutation_response?>? updateArticleMany,
    /// update multiples rows of table: "auth.provider_requests"
    @JsonKey(name: 'update_authProviderRequests_many')
    List<authProviderRequests_mutation_response?>? updateAuthProviderRequestsMany,
    /// update multiples rows of table: "auth.providers"
    @JsonKey(name: 'update_authProviders_many')
    List<authProviders_mutation_response?>? updateAuthProvidersMany,
    /// update multiples rows of table: "auth.refresh_tokens"
    @JsonKey(name: 'update_authRefreshTokens_many')
    List<authRefreshTokens_mutation_response?>? updateAuthRefreshTokensMany,
    /// update multiples rows of table: "auth.roles"
    @JsonKey(name: 'update_authRoles_many')
    List<authRoles_mutation_response?>? updateAuthRolesMany,
    /// update multiples rows of table: "auth.user_providers"
    @JsonKey(name: 'update_authUserProviders_many')
    List<authUserProviders_mutation_response?>? updateAuthUserProvidersMany,
    /// update multiples rows of table: "auth.user_roles"
    @JsonKey(name: 'update_authUserRoles_many')
    List<authUserRoles_mutation_response?>? updateAuthUserRolesMany,
    /// update multiples rows of table: "auth.user_security_keys"
    @JsonKey(name: 'update_authUserSecurityKeys_many')
    List<authUserSecurityKeys_mutation_response?>? updateAuthUserSecurityKeysMany,
    /// update multiples rows of table: "storage.buckets"
    @JsonKey(name: 'update_buckets_many')
    List<buckets_mutation_response?>? updateBucketsMany,
    /// update multiples rows of table: "storage.files"
    @JsonKey(name: 'update_files_many')
    List<files_mutation_response?>? updateFilesMany,
    /// update multiples rows of table: "auth.users"
    @JsonKey(name: 'update_users_many')
    List<users_mutation_response?>? updateUsersMany,
  }) = _MutationRoot;

  factory MutationRoot.fromJson(Map<String, Object?> json) => _MutationRootFromJson(json);
}

enum OrderBy{
  /// in ascending order, nulls last 
@JsonKey(name: asc) asc
  /// in ascending order, nulls first 
@JsonKey(name: asc_nulls_first) asc_nulls_first
  /// in ascending order, nulls last 
@JsonKey(name: asc_nulls_last) asc_nulls_last
  /// in descending order, nulls first 
@JsonKey(name: desc) desc
  /// in descending order, nulls first 
@JsonKey(name: desc_nulls_first) desc_nulls_first
  /// in descending order, nulls last 
@JsonKey(name: desc_nulls_last) desc_nulls_last
}

@freezed
class QueryRoot with _$QueryRoot {
  const QueryRoot._();

  const factory QueryRoot({
    /// fetch data from the table: "article"
    required List<article> article,
    /// fetch aggregated fields from the table: "article"
    @JsonKey(name: 'article_aggregate')
    required article_aggregate articleAggregate,
    /// fetch data from the table: "article" using primary key columns
    @JsonKey(name: 'article_by_pk')
    article? articleByPk,
    /// fetch data from the table: "auth.providers" using primary key columns
    authProviders? authProvider,
    /// fetch data from the table: "auth.provider_requests" using primary key columns
    authProviderRequests? authProviderRequest,
    /// fetch data from the table: "auth.provider_requests"
    required List<authProviderRequests> authProviderRequests,
    /// fetch aggregated fields from the table: "auth.provider_requests"
    required authProviderRequests_aggregate authProviderRequestsAggregate,
    /// fetch data from the table: "auth.providers"
    required List<authProviders> authProviders,
    /// fetch aggregated fields from the table: "auth.providers"
    required authProviders_aggregate authProvidersAggregate,
    /// fetch data from the table: "auth.refresh_tokens" using primary key columns
    authRefreshTokens? authRefreshToken,
    /// fetch data from the table: "auth.refresh_tokens"
    required List<authRefreshTokens> authRefreshTokens,
    /// fetch aggregated fields from the table: "auth.refresh_tokens"
    required authRefreshTokens_aggregate authRefreshTokensAggregate,
    /// fetch data from the table: "auth.roles" using primary key columns
    authRoles? authRole,
    /// fetch data from the table: "auth.roles"
    required List<authRoles> authRoles,
    /// fetch aggregated fields from the table: "auth.roles"
    required authRoles_aggregate authRolesAggregate,
    /// fetch data from the table: "auth.user_providers" using primary key columns
    authUserProviders? authUserProvider,
    /// fetch data from the table: "auth.user_providers"
    required List<authUserProviders> authUserProviders,
    /// fetch aggregated fields from the table: "auth.user_providers"
    required authUserProviders_aggregate authUserProvidersAggregate,
    /// fetch data from the table: "auth.user_roles" using primary key columns
    authUserRoles? authUserRole,
    /// fetch data from the table: "auth.user_roles"
    required List<authUserRoles> authUserRoles,
    /// fetch aggregated fields from the table: "auth.user_roles"
    required authUserRoles_aggregate authUserRolesAggregate,
    /// fetch data from the table: "auth.user_security_keys" using primary key columns
    authUserSecurityKeys? authUserSecurityKey,
    /// fetch data from the table: "auth.user_security_keys"
    required List<authUserSecurityKeys> authUserSecurityKeys,
    /// fetch aggregated fields from the table: "auth.user_security_keys"
    required authUserSecurityKeys_aggregate authUserSecurityKeysAggregate,
    /// fetch data from the table: "storage.buckets" using primary key columns
    buckets? bucket,
    /// fetch data from the table: "storage.buckets"
    required List<buckets> buckets,
    /// fetch aggregated fields from the table: "storage.buckets"
    required buckets_aggregate bucketsAggregate,
    /// fetch data from the table: "storage.files" using primary key columns
    files? file,
    /// An array relationship
    required List<files> files,
    /// fetch aggregated fields from the table: "storage.files"
    required files_aggregate filesAggregate,
    /// fetch data from the table: "auth.users" using primary key columns
    users? user,
    /// fetch data from the table: "auth.users"
    required List<users> users,
    /// fetch aggregated fields from the table: "auth.users"
    required users_aggregate usersAggregate,
  }) = _QueryRoot;

  factory QueryRoot.fromJson(Map<String, Object?> json) => _QueryRootFromJson(json);
}

@freezed
class SubscriptionRoot with _$SubscriptionRoot {
  const SubscriptionRoot._();

  const factory SubscriptionRoot({
    /// fetch data from the table: "article"
    required List<article> article,
    /// fetch aggregated fields from the table: "article"
    @JsonKey(name: 'article_aggregate')
    required article_aggregate articleAggregate,
    /// fetch data from the table: "article" using primary key columns
    @JsonKey(name: 'article_by_pk')
    article? articleByPk,
    /// fetch data from the table in a streaming manner: "article"
    @JsonKey(name: 'article_stream')
    required List<article> articleStream,
    /// fetch data from the table: "auth.providers" using primary key columns
    authProviders? authProvider,
    /// fetch data from the table: "auth.provider_requests" using primary key columns
    authProviderRequests? authProviderRequest,
    /// fetch data from the table: "auth.provider_requests"
    required List<authProviderRequests> authProviderRequests,
    /// fetch aggregated fields from the table: "auth.provider_requests"
    required authProviderRequests_aggregate authProviderRequestsAggregate,
    /// fetch data from the table in a streaming manner: "auth.provider_requests"
    @JsonKey(name: 'authProviderRequests_stream')
    required List<authProviderRequests> authProviderRequestsStream,
    /// fetch data from the table: "auth.providers"
    required List<authProviders> authProviders,
    /// fetch aggregated fields from the table: "auth.providers"
    required authProviders_aggregate authProvidersAggregate,
    /// fetch data from the table in a streaming manner: "auth.providers"
    @JsonKey(name: 'authProviders_stream')
    required List<authProviders> authProvidersStream,
    /// fetch data from the table: "auth.refresh_tokens" using primary key columns
    authRefreshTokens? authRefreshToken,
    /// fetch data from the table: "auth.refresh_tokens"
    required List<authRefreshTokens> authRefreshTokens,
    /// fetch aggregated fields from the table: "auth.refresh_tokens"
    required authRefreshTokens_aggregate authRefreshTokensAggregate,
    /// fetch data from the table in a streaming manner: "auth.refresh_tokens"
    @JsonKey(name: 'authRefreshTokens_stream')
    required List<authRefreshTokens> authRefreshTokensStream,
    /// fetch data from the table: "auth.roles" using primary key columns
    authRoles? authRole,
    /// fetch data from the table: "auth.roles"
    required List<authRoles> authRoles,
    /// fetch aggregated fields from the table: "auth.roles"
    required authRoles_aggregate authRolesAggregate,
    /// fetch data from the table in a streaming manner: "auth.roles"
    @JsonKey(name: 'authRoles_stream')
    required List<authRoles> authRolesStream,
    /// fetch data from the table: "auth.user_providers" using primary key columns
    authUserProviders? authUserProvider,
    /// fetch data from the table: "auth.user_providers"
    required List<authUserProviders> authUserProviders,
    /// fetch aggregated fields from the table: "auth.user_providers"
    required authUserProviders_aggregate authUserProvidersAggregate,
    /// fetch data from the table in a streaming manner: "auth.user_providers"
    @JsonKey(name: 'authUserProviders_stream')
    required List<authUserProviders> authUserProvidersStream,
    /// fetch data from the table: "auth.user_roles" using primary key columns
    authUserRoles? authUserRole,
    /// fetch data from the table: "auth.user_roles"
    required List<authUserRoles> authUserRoles,
    /// fetch aggregated fields from the table: "auth.user_roles"
    required authUserRoles_aggregate authUserRolesAggregate,
    /// fetch data from the table in a streaming manner: "auth.user_roles"
    @JsonKey(name: 'authUserRoles_stream')
    required List<authUserRoles> authUserRolesStream,
    /// fetch data from the table: "auth.user_security_keys" using primary key columns
    authUserSecurityKeys? authUserSecurityKey,
    /// fetch data from the table: "auth.user_security_keys"
    required List<authUserSecurityKeys> authUserSecurityKeys,
    /// fetch aggregated fields from the table: "auth.user_security_keys"
    required authUserSecurityKeys_aggregate authUserSecurityKeysAggregate,
    /// fetch data from the table in a streaming manner: "auth.user_security_keys"
    @JsonKey(name: 'authUserSecurityKeys_stream')
    required List<authUserSecurityKeys> authUserSecurityKeysStream,
    /// fetch data from the table: "storage.buckets" using primary key columns
    buckets? bucket,
    /// fetch data from the table: "storage.buckets"
    required List<buckets> buckets,
    /// fetch aggregated fields from the table: "storage.buckets"
    required buckets_aggregate bucketsAggregate,
    /// fetch data from the table in a streaming manner: "storage.buckets"
    @JsonKey(name: 'buckets_stream')
    required List<buckets> bucketsStream,
    /// fetch data from the table: "storage.files" using primary key columns
    files? file,
    /// An array relationship
    required List<files> files,
    /// fetch aggregated fields from the table: "storage.files"
    required files_aggregate filesAggregate,
    /// fetch data from the table in a streaming manner: "storage.files"
    @JsonKey(name: 'files_stream')
    required List<files> filesStream,
    /// fetch data from the table: "auth.users" using primary key columns
    users? user,
    /// fetch data from the table: "auth.users"
    required List<users> users,
    /// fetch aggregated fields from the table: "auth.users"
    required users_aggregate usersAggregate,
    /// fetch data from the table in a streaming manner: "auth.users"
    @JsonKey(name: 'users_stream')
    required List<users> usersStream,
  }) = _SubscriptionRoot;

  factory SubscriptionRoot.fromJson(Map<String, Object?> json) => _SubscriptionRootFromJson(json);
}

/// Boolean expression to compare columns of type "timestamptz". All fields are combined with logical 'AND'. 
@unfreezed
class TimestamptzComparisonExp with _$TimestamptzComparisonExp {
  const TimestamptzComparisonExp._();

  /// Boolean expression to compare columns of type "timestamptz". All fields are combined with logical 'AND'. 
  const factory TimestamptzComparisonExp({
    @JsonKey(name: '_eq')
    timestamptz? eq,
    @JsonKey(name: '_gt')
    timestamptz? gt,
    @JsonKey(name: '_gte')
    timestamptz? gte,
    @JsonKey(name: '_in')
    List<timestamptz>? in,
    @JsonKey(name: '_is_null')
    bool? isNull,
    @JsonKey(name: '_lt')
    timestamptz? lt,
    @JsonKey(name: '_lte')
    timestamptz? lte,
    @JsonKey(name: '_neq')
    timestamptz? neq,
    @JsonKey(name: '_nin')
    List<timestamptz>? nin,
  }) = _TimestamptzComparisonExp;

  factory TimestamptzComparisonExp.fromJson(Map<String, Object?> json) => _TimestamptzComparisonExpFromJson(json);
}

/// User account information. Don't modify its structure as Hasura Auth relies on it to function properly. 
@freezed
class Users with _$Users {
  const Users._();

  /// User account information. Don't modify its structure as Hasura Auth relies on it to function properly. 
  const factory Users({
    String? activeMfaType,
    required String avatarUrl,
    required timestamptz createdAt,
    String? currentChallenge,
    required String defaultRole,
    /// An object relationship
    required authRoles defaultRoleByRole,
    required bool disabled,
    required String displayName,
    citext? email,
    required bool emailVerified,
    required uuid id,
    required bool isAnonymous,
    timestamptz? lastSeen,
    required String locale,
    jsonb? metadata,
    citext? newEmail,
    String? otpHash,
    required timestamptz otpHashExpiresAt,
    String? otpMethodLastUsed,
    String? passwordHash,
    String? phoneNumber,
    required bool phoneNumberVerified,
    /// An array relationship
    required List<authRefreshTokens> refreshTokens,
    /// An aggregate relationship
    @JsonKey(name: 'refreshTokens_aggregate')
    required authRefreshTokens_aggregate refreshTokensAggregate,
    /// An array relationship
    required List<authUserRoles> roles,
    /// An aggregate relationship
    @JsonKey(name: 'roles_aggregate')
    required authUserRoles_aggregate rolesAggregate,
    /// An array relationship
    required List<authUserSecurityKeys> securityKeys,
    /// An aggregate relationship
    @JsonKey(name: 'securityKeys_aggregate')
    required authUserSecurityKeys_aggregate securityKeysAggregate,
    String? ticket,
    required timestamptz ticketExpiresAt,
    String? totpSecret,
    required timestamptz updatedAt,
    /// An array relationship
    required List<authUserProviders> userProviders,
    /// An aggregate relationship
    @JsonKey(name: 'userProviders_aggregate')
    required authUserProviders_aggregate userProvidersAggregate,
  }) = _Users;

  factory Users.fromJson(Map<String, Object?> json) => _UsersFromJson(json);
}

/// aggregated selection of "auth.users" 
@freezed
class UsersAggregate with _$UsersAggregate {
  const UsersAggregate._();

  /// aggregated selection of "auth.users" 
  const factory UsersAggregate({
    users_aggregate_fields? aggregate,
    required List<users> nodes,
  }) = _UsersAggregate;

  factory UsersAggregate.fromJson(Map<String, Object?> json) => _UsersAggregateFromJson(json);
}

@unfreezed
class UsersAggregateBoolExp with _$UsersAggregateBoolExp {
  const UsersAggregateBoolExp._();

  const factory UsersAggregateBoolExp({
    @JsonKey(name: 'bool_and')
    users_aggregate_bool_exp_bool_and? boolAnd,
    @JsonKey(name: 'bool_or')
    users_aggregate_bool_exp_bool_or? boolOr,
    users_aggregate_bool_exp_count? count,
  }) = _UsersAggregateBoolExp;

  factory UsersAggregateBoolExp.fromJson(Map<String, Object?> json) => _UsersAggregateBoolExpFromJson(json);
}

@unfreezed
class UsersAggregateBoolExpBoolAnd with _$UsersAggregateBoolExpBoolAnd {
  const UsersAggregateBoolExpBoolAnd._();

  const factory UsersAggregateBoolExpBoolAnd({
    required users_select_column_users_aggregate_bool_exp_bool_and_arguments_columns arguments,
    bool? distinct,
    users_bool_exp? filter,
    required Boolean_comparison_exp predicate,
  }) = _UsersAggregateBoolExpBoolAnd;

  factory UsersAggregateBoolExpBoolAnd.fromJson(Map<String, Object?> json) => _UsersAggregateBoolExpBoolAndFromJson(json);
}

@unfreezed
class UsersAggregateBoolExpBoolOr with _$UsersAggregateBoolExpBoolOr {
  const UsersAggregateBoolExpBoolOr._();

  const factory UsersAggregateBoolExpBoolOr({
    required users_select_column_users_aggregate_bool_exp_bool_or_arguments_columns arguments,
    bool? distinct,
    users_bool_exp? filter,
    required Boolean_comparison_exp predicate,
  }) = _UsersAggregateBoolExpBoolOr;

  factory UsersAggregateBoolExpBoolOr.fromJson(Map<String, Object?> json) => _UsersAggregateBoolExpBoolOrFromJson(json);
}

@unfreezed
class UsersAggregateBoolExpCount with _$UsersAggregateBoolExpCount {
  const UsersAggregateBoolExpCount._();

  const factory UsersAggregateBoolExpCount({
    List<users_select_column>? arguments,
    bool? distinct,
    users_bool_exp? filter,
    required Int_comparison_exp predicate,
  }) = _UsersAggregateBoolExpCount;

  factory UsersAggregateBoolExpCount.fromJson(Map<String, Object?> json) => _UsersAggregateBoolExpCountFromJson(json);
}

/// aggregate fields of "auth.users" 
@freezed
class UsersAggregateFields with _$UsersAggregateFields {
  const UsersAggregateFields._();

  /// aggregate fields of "auth.users" 
  const factory UsersAggregateFields({
    required int count,
    users_max_fields? max,
    users_min_fields? min,
  }) = _UsersAggregateFields;

  factory UsersAggregateFields.fromJson(Map<String, Object?> json) => _UsersAggregateFieldsFromJson(json);
}

/// order by aggregate values of table "auth.users" 
@unfreezed
class UsersAggregateOrderBy with _$UsersAggregateOrderBy {
  const UsersAggregateOrderBy._();

  /// order by aggregate values of table "auth.users" 
  const factory UsersAggregateOrderBy({
    order_by? count,
    users_max_order_by? max,
    users_min_order_by? min,
  }) = _UsersAggregateOrderBy;

  factory UsersAggregateOrderBy.fromJson(Map<String, Object?> json) => _UsersAggregateOrderByFromJson(json);
}

/// append existing jsonb value of filtered columns with new jsonb value 
@unfreezed
class UsersAppendInput with _$UsersAppendInput {
  const UsersAppendInput._();

  /// append existing jsonb value of filtered columns with new jsonb value 
  const factory UsersAppendInput({
    jsonb? metadata,
  }) = _UsersAppendInput;

  factory UsersAppendInput.fromJson(Map<String, Object?> json) => _UsersAppendInputFromJson(json);
}

/// input type for inserting array relation for remote table "auth.users" 
@unfreezed
class UsersArrRelInsertInput with _$UsersArrRelInsertInput {
  const UsersArrRelInsertInput._();

  /// input type for inserting array relation for remote table "auth.users" 
  const factory UsersArrRelInsertInput({
    required List<users_insert_input> data,
    /// upsert condition
    @JsonKey(name: 'on_conflict')
    users_on_conflict? onConflict,
  }) = _UsersArrRelInsertInput;

  factory UsersArrRelInsertInput.fromJson(Map<String, Object?> json) => _UsersArrRelInsertInputFromJson(json);
}

/// Boolean expression to filter rows from the table "auth.users". All fields are combined with a logical 'AND'. 
@unfreezed
class UsersBoolExp with _$UsersBoolExp {
  const UsersBoolExp._();

  /// Boolean expression to filter rows from the table "auth.users". All fields are combined with a logical 'AND'. 
  const factory UsersBoolExp({
    @JsonKey(name: '_and')
    List<users_bool_exp>? and,
    @JsonKey(name: '_not')
    users_bool_exp? not,
    @JsonKey(name: '_or')
    List<users_bool_exp>? or,
    String_comparison_exp? activeMfaType,
    String_comparison_exp? avatarUrl,
    timestamptz_comparison_exp? createdAt,
    String_comparison_exp? currentChallenge,
    String_comparison_exp? defaultRole,
    authRoles_bool_exp? defaultRoleByRole,
    Boolean_comparison_exp? disabled,
    String_comparison_exp? displayName,
    citext_comparison_exp? email,
    Boolean_comparison_exp? emailVerified,
    uuid_comparison_exp? id,
    Boolean_comparison_exp? isAnonymous,
    timestamptz_comparison_exp? lastSeen,
    String_comparison_exp? locale,
    jsonb_comparison_exp? metadata,
    citext_comparison_exp? newEmail,
    String_comparison_exp? otpHash,
    timestamptz_comparison_exp? otpHashExpiresAt,
    String_comparison_exp? otpMethodLastUsed,
    String_comparison_exp? passwordHash,
    String_comparison_exp? phoneNumber,
    Boolean_comparison_exp? phoneNumberVerified,
    authRefreshTokens_bool_exp? refreshTokens,
    @JsonKey(name: 'refreshTokens_aggregate')
    authRefreshTokens_aggregate_bool_exp? refreshTokensAggregate,
    authUserRoles_bool_exp? roles,
    @JsonKey(name: 'roles_aggregate')
    authUserRoles_aggregate_bool_exp? rolesAggregate,
    authUserSecurityKeys_bool_exp? securityKeys,
    @JsonKey(name: 'securityKeys_aggregate')
    authUserSecurityKeys_aggregate_bool_exp? securityKeysAggregate,
    String_comparison_exp? ticket,
    timestamptz_comparison_exp? ticketExpiresAt,
    String_comparison_exp? totpSecret,
    timestamptz_comparison_exp? updatedAt,
    authUserProviders_bool_exp? userProviders,
    @JsonKey(name: 'userProviders_aggregate')
    authUserProviders_aggregate_bool_exp? userProvidersAggregate,
  }) = _UsersBoolExp;

  factory UsersBoolExp.fromJson(Map<String, Object?> json) => _UsersBoolExpFromJson(json);
}

enum UsersConstraint{
  /// unique or primary key constraint on columns "email" 
@JsonKey(name: users_email_key) users_email_key
  /// unique or primary key constraint on columns "phone_number" 
@JsonKey(name: users_phone_number_key) users_phone_number_key
  /// unique or primary key constraint on columns "id" 
@JsonKey(name: users_pkey) users_pkey
}

/// delete the field or element with specified path (for JSON arrays, negative integers count from the end) 
@unfreezed
class UsersDeleteAtPathInput with _$UsersDeleteAtPathInput {
  const UsersDeleteAtPathInput._();

  /// delete the field or element with specified path (for JSON arrays, negative integers count from the end) 
  const factory UsersDeleteAtPathInput({
    List<String>? metadata,
  }) = _UsersDeleteAtPathInput;

  factory UsersDeleteAtPathInput.fromJson(Map<String, Object?> json) => _UsersDeleteAtPathInputFromJson(json);
}

/// delete the array element with specified index (negative integers count from the end). throws an error if top level container is not an array 
@unfreezed
class UsersDeleteElemInput with _$UsersDeleteElemInput {
  const UsersDeleteElemInput._();

  /// delete the array element with specified index (negative integers count from the end). throws an error if top level container is not an array 
  const factory UsersDeleteElemInput({
    int? metadata,
  }) = _UsersDeleteElemInput;

  factory UsersDeleteElemInput.fromJson(Map<String, Object?> json) => _UsersDeleteElemInputFromJson(json);
}

/// delete key/value pair or string element. key/value pairs are matched based on their key value 
@unfreezed
class UsersDeleteKeyInput with _$UsersDeleteKeyInput {
  const UsersDeleteKeyInput._();

  /// delete key/value pair or string element. key/value pairs are matched based on their key value 
  const factory UsersDeleteKeyInput({
    String? metadata,
  }) = _UsersDeleteKeyInput;

  factory UsersDeleteKeyInput.fromJson(Map<String, Object?> json) => _UsersDeleteKeyInputFromJson(json);
}

/// input type for inserting data into table "auth.users" 
@unfreezed
class UsersInsertInput with _$UsersInsertInput {
  const UsersInsertInput._();

  /// input type for inserting data into table "auth.users" 
  const factory UsersInsertInput({
    String? activeMfaType,
    String? avatarUrl,
    timestamptz? createdAt,
    String? currentChallenge,
    String? defaultRole,
    authRoles_obj_rel_insert_input? defaultRoleByRole,
    bool? disabled,
    String? displayName,
    citext? email,
    bool? emailVerified,
    uuid? id,
    bool? isAnonymous,
    timestamptz? lastSeen,
    String? locale,
    jsonb? metadata,
    citext? newEmail,
    String? otpHash,
    timestamptz? otpHashExpiresAt,
    String? otpMethodLastUsed,
    String? passwordHash,
    String? phoneNumber,
    bool? phoneNumberVerified,
    authRefreshTokens_arr_rel_insert_input? refreshTokens,
    authUserRoles_arr_rel_insert_input? roles,
    authUserSecurityKeys_arr_rel_insert_input? securityKeys,
    String? ticket,
    timestamptz? ticketExpiresAt,
    String? totpSecret,
    timestamptz? updatedAt,
    authUserProviders_arr_rel_insert_input? userProviders,
  }) = _UsersInsertInput;

  factory UsersInsertInput.fromJson(Map<String, Object?> json) => _UsersInsertInputFromJson(json);
}

/// aggregate max on columns 
@freezed
class UsersMaxFields with _$UsersMaxFields {
  const UsersMaxFields._();

  /// aggregate max on columns 
  const factory UsersMaxFields({
    String? activeMfaType,
    String? avatarUrl,
    timestamptz? createdAt,
    String? currentChallenge,
    String? defaultRole,
    String? displayName,
    citext? email,
    uuid? id,
    timestamptz? lastSeen,
    String? locale,
    citext? newEmail,
    String? otpHash,
    timestamptz? otpHashExpiresAt,
    String? otpMethodLastUsed,
    String? passwordHash,
    String? phoneNumber,
    String? ticket,
    timestamptz? ticketExpiresAt,
    String? totpSecret,
    timestamptz? updatedAt,
  }) = _UsersMaxFields;

  factory UsersMaxFields.fromJson(Map<String, Object?> json) => _UsersMaxFieldsFromJson(json);
}

/// order by max() on columns of table "auth.users" 
@unfreezed
class UsersMaxOrderBy with _$UsersMaxOrderBy {
  const UsersMaxOrderBy._();

  /// order by max() on columns of table "auth.users" 
  const factory UsersMaxOrderBy({
    order_by? activeMfaType,
    order_by? avatarUrl,
    order_by? createdAt,
    order_by? currentChallenge,
    order_by? defaultRole,
    order_by? displayName,
    order_by? email,
    order_by? id,
    order_by? lastSeen,
    order_by? locale,
    order_by? newEmail,
    order_by? otpHash,
    order_by? otpHashExpiresAt,
    order_by? otpMethodLastUsed,
    order_by? passwordHash,
    order_by? phoneNumber,
    order_by? ticket,
    order_by? ticketExpiresAt,
    order_by? totpSecret,
    order_by? updatedAt,
  }) = _UsersMaxOrderBy;

  factory UsersMaxOrderBy.fromJson(Map<String, Object?> json) => _UsersMaxOrderByFromJson(json);
}

/// aggregate min on columns 
@freezed
class UsersMinFields with _$UsersMinFields {
  const UsersMinFields._();

  /// aggregate min on columns 
  const factory UsersMinFields({
    String? activeMfaType,
    String? avatarUrl,
    timestamptz? createdAt,
    String? currentChallenge,
    String? defaultRole,
    String? displayName,
    citext? email,
    uuid? id,
    timestamptz? lastSeen,
    String? locale,
    citext? newEmail,
    String? otpHash,
    timestamptz? otpHashExpiresAt,
    String? otpMethodLastUsed,
    String? passwordHash,
    String? phoneNumber,
    String? ticket,
    timestamptz? ticketExpiresAt,
    String? totpSecret,
    timestamptz? updatedAt,
  }) = _UsersMinFields;

  factory UsersMinFields.fromJson(Map<String, Object?> json) => _UsersMinFieldsFromJson(json);
}

/// order by min() on columns of table "auth.users" 
@unfreezed
class UsersMinOrderBy with _$UsersMinOrderBy {
  const UsersMinOrderBy._();

  /// order by min() on columns of table "auth.users" 
  const factory UsersMinOrderBy({
    order_by? activeMfaType,
    order_by? avatarUrl,
    order_by? createdAt,
    order_by? currentChallenge,
    order_by? defaultRole,
    order_by? displayName,
    order_by? email,
    order_by? id,
    order_by? lastSeen,
    order_by? locale,
    order_by? newEmail,
    order_by? otpHash,
    order_by? otpHashExpiresAt,
    order_by? otpMethodLastUsed,
    order_by? passwordHash,
    order_by? phoneNumber,
    order_by? ticket,
    order_by? ticketExpiresAt,
    order_by? totpSecret,
    order_by? updatedAt,
  }) = _UsersMinOrderBy;

  factory UsersMinOrderBy.fromJson(Map<String, Object?> json) => _UsersMinOrderByFromJson(json);
}

/// response of any mutation on the table "auth.users" 
@freezed
class UsersMutationResponse with _$UsersMutationResponse {
  const UsersMutationResponse._();

  /// response of any mutation on the table "auth.users" 
  const factory UsersMutationResponse({
    /// number of rows affected by the mutation
    @JsonKey(name: 'affected_rows')
    required int affectedRows,
    /// data from the rows affected by the mutation
    required List<users> returning,
  }) = _UsersMutationResponse;

  factory UsersMutationResponse.fromJson(Map<String, Object?> json) => _UsersMutationResponseFromJson(json);
}

/// input type for inserting object relation for remote table "auth.users" 
@unfreezed
class UsersObjRelInsertInput with _$UsersObjRelInsertInput {
  const UsersObjRelInsertInput._();

  /// input type for inserting object relation for remote table "auth.users" 
  const factory UsersObjRelInsertInput({
    required users_insert_input data,
    /// upsert condition
    @JsonKey(name: 'on_conflict')
    users_on_conflict? onConflict,
  }) = _UsersObjRelInsertInput;

  factory UsersObjRelInsertInput.fromJson(Map<String, Object?> json) => _UsersObjRelInsertInputFromJson(json);
}

/// on_conflict condition type for table "auth.users" 
@unfreezed
class UsersOnConflict with _$UsersOnConflict {
  const UsersOnConflict._();

  /// on_conflict condition type for table "auth.users" 
  const factory UsersOnConflict({
    required users_constraint constraint,
    @JsonKey(name: 'update_columns')
    required List<users_update_column> updateColumns,
    users_bool_exp? where,
  }) = _UsersOnConflict;

  factory UsersOnConflict.fromJson(Map<String, Object?> json) => _UsersOnConflictFromJson(json);
}

/// Ordering options when selecting data from "auth.users". 
@unfreezed
class UsersOrderBy with _$UsersOrderBy {
  const UsersOrderBy._();

  /// Ordering options when selecting data from "auth.users". 
  const factory UsersOrderBy({
    order_by? activeMfaType,
    order_by? avatarUrl,
    order_by? createdAt,
    order_by? currentChallenge,
    order_by? defaultRole,
    authRoles_order_by? defaultRoleByRole,
    order_by? disabled,
    order_by? displayName,
    order_by? email,
    order_by? emailVerified,
    order_by? id,
    order_by? isAnonymous,
    order_by? lastSeen,
    order_by? locale,
    order_by? metadata,
    order_by? newEmail,
    order_by? otpHash,
    order_by? otpHashExpiresAt,
    order_by? otpMethodLastUsed,
    order_by? passwordHash,
    order_by? phoneNumber,
    order_by? phoneNumberVerified,
    @JsonKey(name: 'refreshTokens_aggregate')
    authRefreshTokens_aggregate_order_by? refreshTokensAggregate,
    @JsonKey(name: 'roles_aggregate')
    authUserRoles_aggregate_order_by? rolesAggregate,
    @JsonKey(name: 'securityKeys_aggregate')
    authUserSecurityKeys_aggregate_order_by? securityKeysAggregate,
    order_by? ticket,
    order_by? ticketExpiresAt,
    order_by? totpSecret,
    order_by? updatedAt,
    @JsonKey(name: 'userProviders_aggregate')
    authUserProviders_aggregate_order_by? userProvidersAggregate,
  }) = _UsersOrderBy;

  factory UsersOrderBy.fromJson(Map<String, Object?> json) => _UsersOrderByFromJson(json);
}

/// primary key columns input for table: auth.users 
@unfreezed
class UsersPkColumnsInput with _$UsersPkColumnsInput {
  const UsersPkColumnsInput._();

  /// primary key columns input for table: auth.users 
  const factory UsersPkColumnsInput({
    required uuid id,
  }) = _UsersPkColumnsInput;

  factory UsersPkColumnsInput.fromJson(Map<String, Object?> json) => _UsersPkColumnsInputFromJson(json);
}

/// prepend existing jsonb value of filtered columns with new jsonb value 
@unfreezed
class UsersPrependInput with _$UsersPrependInput {
  const UsersPrependInput._();

  /// prepend existing jsonb value of filtered columns with new jsonb value 
  const factory UsersPrependInput({
    jsonb? metadata,
  }) = _UsersPrependInput;

  factory UsersPrependInput.fromJson(Map<String, Object?> json) => _UsersPrependInputFromJson(json);
}

enum UsersSelectColumn{
  /// column name 
@JsonKey(name: activeMfaType) activemfatype
  /// column name 
@JsonKey(name: avatarUrl) avatarurl
  /// column name 
@JsonKey(name: createdAt) createdat
  /// column name 
@JsonKey(name: currentChallenge) currentchallenge
  /// column name 
@JsonKey(name: defaultRole) defaultrole
  /// column name 
@JsonKey(name: disabled) disabled
  /// column name 
@JsonKey(name: displayName) displayname
  /// column name 
@JsonKey(name: email) email
  /// column name 
@JsonKey(name: emailVerified) emailverified
  /// column name 
@JsonKey(name: id) id
  /// column name 
@JsonKey(name: isAnonymous) isanonymous
  /// column name 
@JsonKey(name: lastSeen) lastseen
  /// column name 
@JsonKey(name: locale) locale
  /// column name 
@JsonKey(name: metadata) metadata
  /// column name 
@JsonKey(name: newEmail) newemail
  /// column name 
@JsonKey(name: otpHash) otphash
  /// column name 
@JsonKey(name: otpHashExpiresAt) otphashexpiresat
  /// column name 
@JsonKey(name: otpMethodLastUsed) otpmethodlastused
  /// column name 
@JsonKey(name: passwordHash) passwordhash
  /// column name 
@JsonKey(name: phoneNumber) phonenumber
  /// column name 
@JsonKey(name: phoneNumberVerified) phonenumberverified
  /// column name 
@JsonKey(name: ticket) ticket
  /// column name 
@JsonKey(name: ticketExpiresAt) ticketexpiresat
  /// column name 
@JsonKey(name: totpSecret) totpsecret
  /// column name 
@JsonKey(name: updatedAt) updatedat
}

enum UsersSelectColumnUsersAggregateBoolExpBoolAndArgumentsColumns{
  /// column name 
@JsonKey(name: disabled) disabled
  /// column name 
@JsonKey(name: emailVerified) emailverified
  /// column name 
@JsonKey(name: isAnonymous) isanonymous
  /// column name 
@JsonKey(name: phoneNumberVerified) phonenumberverified
}

enum UsersSelectColumnUsersAggregateBoolExpBoolOrArgumentsColumns{
  /// column name 
@JsonKey(name: disabled) disabled
  /// column name 
@JsonKey(name: emailVerified) emailverified
  /// column name 
@JsonKey(name: isAnonymous) isanonymous
  /// column name 
@JsonKey(name: phoneNumberVerified) phonenumberverified
}

/// input type for updating data in table "auth.users" 
@unfreezed
class UsersSetInput with _$UsersSetInput {
  const UsersSetInput._();

  /// input type for updating data in table "auth.users" 
  const factory UsersSetInput({
    String? activeMfaType,
    String? avatarUrl,
    timestamptz? createdAt,
    String? currentChallenge,
    String? defaultRole,
    bool? disabled,
    String? displayName,
    citext? email,
    bool? emailVerified,
    uuid? id,
    bool? isAnonymous,
    timestamptz? lastSeen,
    String? locale,
    jsonb? metadata,
    citext? newEmail,
    String? otpHash,
    timestamptz? otpHashExpiresAt,
    String? otpMethodLastUsed,
    String? passwordHash,
    String? phoneNumber,
    bool? phoneNumberVerified,
    String? ticket,
    timestamptz? ticketExpiresAt,
    String? totpSecret,
    timestamptz? updatedAt,
  }) = _UsersSetInput;

  factory UsersSetInput.fromJson(Map<String, Object?> json) => _UsersSetInputFromJson(json);
}

/// Streaming cursor of the table "users" 
@unfreezed
class UsersStreamCursorInput with _$UsersStreamCursorInput {
  const UsersStreamCursorInput._();

  /// Streaming cursor of the table "users" 
  const factory UsersStreamCursorInput({
    /// Stream column input with initial value
    @JsonKey(name: 'initial_value')
    required users_stream_cursor_value_input initialValue,
    /// cursor ordering
    cursor_ordering? ordering,
  }) = _UsersStreamCursorInput;

  factory UsersStreamCursorInput.fromJson(Map<String, Object?> json) => _UsersStreamCursorInputFromJson(json);
}

/// Initial value of the column from where the streaming should start 
@unfreezed
class UsersStreamCursorValueInput with _$UsersStreamCursorValueInput {
  const UsersStreamCursorValueInput._();

  /// Initial value of the column from where the streaming should start 
  const factory UsersStreamCursorValueInput({
    String? activeMfaType,
    String? avatarUrl,
    timestamptz? createdAt,
    String? currentChallenge,
    String? defaultRole,
    bool? disabled,
    String? displayName,
    citext? email,
    bool? emailVerified,
    uuid? id,
    bool? isAnonymous,
    timestamptz? lastSeen,
    String? locale,
    jsonb? metadata,
    citext? newEmail,
    String? otpHash,
    timestamptz? otpHashExpiresAt,
    String? otpMethodLastUsed,
    String? passwordHash,
    String? phoneNumber,
    bool? phoneNumberVerified,
    String? ticket,
    timestamptz? ticketExpiresAt,
    String? totpSecret,
    timestamptz? updatedAt,
  }) = _UsersStreamCursorValueInput;

  factory UsersStreamCursorValueInput.fromJson(Map<String, Object?> json) => _UsersStreamCursorValueInputFromJson(json);
}

enum UsersUpdateColumn{
  /// column name 
@JsonKey(name: activeMfaType) activemfatype
  /// column name 
@JsonKey(name: avatarUrl) avatarurl
  /// column name 
@JsonKey(name: createdAt) createdat
  /// column name 
@JsonKey(name: currentChallenge) currentchallenge
  /// column name 
@JsonKey(name: defaultRole) defaultrole
  /// column name 
@JsonKey(name: disabled) disabled
  /// column name 
@JsonKey(name: displayName) displayname
  /// column name 
@JsonKey(name: email) email
  /// column name 
@JsonKey(name: emailVerified) emailverified
  /// column name 
@JsonKey(name: id) id
  /// column name 
@JsonKey(name: isAnonymous) isanonymous
  /// column name 
@JsonKey(name: lastSeen) lastseen
  /// column name 
@JsonKey(name: locale) locale
  /// column name 
@JsonKey(name: metadata) metadata
  /// column name 
@JsonKey(name: newEmail) newemail
  /// column name 
@JsonKey(name: otpHash) otphash
  /// column name 
@JsonKey(name: otpHashExpiresAt) otphashexpiresat
  /// column name 
@JsonKey(name: otpMethodLastUsed) otpmethodlastused
  /// column name 
@JsonKey(name: passwordHash) passwordhash
  /// column name 
@JsonKey(name: phoneNumber) phonenumber
  /// column name 
@JsonKey(name: phoneNumberVerified) phonenumberverified
  /// column name 
@JsonKey(name: ticket) ticket
  /// column name 
@JsonKey(name: ticketExpiresAt) ticketexpiresat
  /// column name 
@JsonKey(name: totpSecret) totpsecret
  /// column name 
@JsonKey(name: updatedAt) updatedat
}

@unfreezed
class UsersUpdates with _$UsersUpdates {
  const UsersUpdates._();

  const factory UsersUpdates({
    /// append existing jsonb value of filtered columns with new jsonb value
    @JsonKey(name: '_append')
    users_append_input? append,
    /// delete the field or element with specified path (for JSON arrays, negative integers count from the end)
    @JsonKey(name: '_delete_at_path')
    users_delete_at_path_input? deleteAtPath,
    /// delete the array element with specified index (negative integers count from the end). throws an error if top level container is not an array
    @JsonKey(name: '_delete_elem')
    users_delete_elem_input? deleteElem,
    /// delete key/value pair or string element. key/value pairs are matched based on their key value
    @JsonKey(name: '_delete_key')
    users_delete_key_input? deleteKey,
    /// prepend existing jsonb value of filtered columns with new jsonb value
    @JsonKey(name: '_prepend')
    users_prepend_input? prepend,
    /// sets the columns of the filtered rows to the given values
    @JsonKey(name: '_set')
    users_set_input? set,
    required users_bool_exp where,
  }) = _UsersUpdates;

  factory UsersUpdates.fromJson(Map<String, Object?> json) => _UsersUpdatesFromJson(json);
}

/// Boolean expression to compare columns of type "uuid". All fields are combined with logical 'AND'. 
@unfreezed
class UuidComparisonExp with _$UuidComparisonExp {
  const UuidComparisonExp._();

  /// Boolean expression to compare columns of type "uuid". All fields are combined with logical 'AND'. 
  const factory UuidComparisonExp({
    @JsonKey(name: '_eq')
    uuid? eq,
    @JsonKey(name: '_gt')
    uuid? gt,
    @JsonKey(name: '_gte')
    uuid? gte,
    @JsonKey(name: '_in')
    List<uuid>? in,
    @JsonKey(name: '_is_null')
    bool? isNull,
    @JsonKey(name: '_lt')
    uuid? lt,
    @JsonKey(name: '_lte')
    uuid? lte,
    @JsonKey(name: '_neq')
    uuid? neq,
    @JsonKey(name: '_nin')
    List<uuid>? nin,
  }) = _UuidComparisonExp;

  factory UuidComparisonExp.fromJson(Map<String, Object?> json) => _UuidComparisonExpFromJson(json);
}