// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../update_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateCommentParams _$UpdateCommentParamsFromJson(Map<String, dynamic> json) {
  return _UpdateCommentParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateCommentParams {
  String get description => throw _privateConstructorUsedError;

  /// Serializes this UpdateCommentParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateCommentParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateCommentParamsCopyWith<UpdateCommentParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCommentParamsCopyWith<$Res> {
  factory $UpdateCommentParamsCopyWith(
          UpdateCommentParams value, $Res Function(UpdateCommentParams) then) =
      _$UpdateCommentParamsCopyWithImpl<$Res, UpdateCommentParams>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class _$UpdateCommentParamsCopyWithImpl<$Res, $Val extends UpdateCommentParams>
    implements $UpdateCommentParamsCopyWith<$Res> {
  _$UpdateCommentParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateCommentParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateCommentParamsImplCopyWith<$Res>
    implements $UpdateCommentParamsCopyWith<$Res> {
  factory _$$UpdateCommentParamsImplCopyWith(_$UpdateCommentParamsImpl value,
          $Res Function(_$UpdateCommentParamsImpl) then) =
      __$$UpdateCommentParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$UpdateCommentParamsImplCopyWithImpl<$Res>
    extends _$UpdateCommentParamsCopyWithImpl<$Res, _$UpdateCommentParamsImpl>
    implements _$$UpdateCommentParamsImplCopyWith<$Res> {
  __$$UpdateCommentParamsImplCopyWithImpl(_$UpdateCommentParamsImpl _value,
      $Res Function(_$UpdateCommentParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateCommentParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$UpdateCommentParamsImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateCommentParamsImpl implements _UpdateCommentParams {
  const _$UpdateCommentParamsImpl({required this.description});

  factory _$UpdateCommentParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateCommentParamsImplFromJson(json);

  @override
  final String description;

  @override
  String toString() {
    return 'UpdateCommentParams(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCommentParamsImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description);

  /// Create a copy of UpdateCommentParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCommentParamsImplCopyWith<_$UpdateCommentParamsImpl> get copyWith =>
      __$$UpdateCommentParamsImplCopyWithImpl<_$UpdateCommentParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateCommentParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateCommentParams implements UpdateCommentParams {
  const factory _UpdateCommentParams({required final String description}) =
      _$UpdateCommentParamsImpl;

  factory _UpdateCommentParams.fromJson(Map<String, dynamic> json) =
      _$UpdateCommentParamsImpl.fromJson;

  @override
  String get description;

  /// Create a copy of UpdateCommentParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCommentParamsImplCopyWith<_$UpdateCommentParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
