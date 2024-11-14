// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../add_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddCommentParams _$AddCommentParamsFromJson(Map<String, dynamic> json) {
  return _AddCommentParams.fromJson(json);
}

/// @nodoc
mixin _$AddCommentParams {
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  int get taskId => throw _privateConstructorUsedError;

  /// Serializes this AddCommentParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddCommentParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddCommentParamsCopyWith<AddCommentParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCommentParamsCopyWith<$Res> {
  factory $AddCommentParamsCopyWith(
          AddCommentParams value, $Res Function(AddCommentParams) then) =
      _$AddCommentParamsCopyWithImpl<$Res, AddCommentParams>;
  @useResult
  $Res call({String description, @JsonKey(name: 'task_id') int taskId});
}

/// @nodoc
class _$AddCommentParamsCopyWithImpl<$Res, $Val extends AddCommentParams>
    implements $AddCommentParamsCopyWith<$Res> {
  _$AddCommentParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddCommentParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? taskId = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCommentParamsImplCopyWith<$Res>
    implements $AddCommentParamsCopyWith<$Res> {
  factory _$$AddCommentParamsImplCopyWith(_$AddCommentParamsImpl value,
          $Res Function(_$AddCommentParamsImpl) then) =
      __$$AddCommentParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, @JsonKey(name: 'task_id') int taskId});
}

/// @nodoc
class __$$AddCommentParamsImplCopyWithImpl<$Res>
    extends _$AddCommentParamsCopyWithImpl<$Res, _$AddCommentParamsImpl>
    implements _$$AddCommentParamsImplCopyWith<$Res> {
  __$$AddCommentParamsImplCopyWithImpl(_$AddCommentParamsImpl _value,
      $Res Function(_$AddCommentParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCommentParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? taskId = null,
  }) {
    return _then(_$AddCommentParamsImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddCommentParamsImpl implements _AddCommentParams {
  const _$AddCommentParamsImpl(
      {required this.description,
      @JsonKey(name: 'task_id') required this.taskId});

  factory _$AddCommentParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddCommentParamsImplFromJson(json);

  @override
  final String description;
  @override
  @JsonKey(name: 'task_id')
  final int taskId;

  @override
  String toString() {
    return 'AddCommentParams(description: $description, taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommentParamsImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description, taskId);

  /// Create a copy of AddCommentParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCommentParamsImplCopyWith<_$AddCommentParamsImpl> get copyWith =>
      __$$AddCommentParamsImplCopyWithImpl<_$AddCommentParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCommentParamsImplToJson(
      this,
    );
  }
}

abstract class _AddCommentParams implements AddCommentParams {
  const factory _AddCommentParams(
          {required final String description,
          @JsonKey(name: 'task_id') required final int taskId}) =
      _$AddCommentParamsImpl;

  factory _AddCommentParams.fromJson(Map<String, dynamic> json) =
      _$AddCommentParamsImpl.fromJson;

  @override
  String get description;
  @override
  @JsonKey(name: 'task_id')
  int get taskId;

  /// Create a copy of AddCommentParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCommentParamsImplCopyWith<_$AddCommentParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
