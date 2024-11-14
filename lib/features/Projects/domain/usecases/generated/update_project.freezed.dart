// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../update_project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateProjectParams _$UpdateProjectParamsFromJson(Map<String, dynamic> json) {
  return _UpdateProjectParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateProjectParams {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  String? get profilePicture => throw _privateConstructorUsedError;

  /// Serializes this UpdateProjectParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateProjectParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateProjectParamsCopyWith<UpdateProjectParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProjectParamsCopyWith<$Res> {
  factory $UpdateProjectParamsCopyWith(
          UpdateProjectParams value, $Res Function(UpdateProjectParams) then) =
      _$UpdateProjectParamsCopyWithImpl<$Res, UpdateProjectParams>;
  @useResult
  $Res call(
      {String title,
      String description,
      @JsonKey(name: 'profile_picture') String? profilePicture});
}

/// @nodoc
class _$UpdateProjectParamsCopyWithImpl<$Res, $Val extends UpdateProjectParams>
    implements $UpdateProjectParamsCopyWith<$Res> {
  _$UpdateProjectParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateProjectParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? profilePicture = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProjectParamsImplCopyWith<$Res>
    implements $UpdateProjectParamsCopyWith<$Res> {
  factory _$$UpdateProjectParamsImplCopyWith(_$UpdateProjectParamsImpl value,
          $Res Function(_$UpdateProjectParamsImpl) then) =
      __$$UpdateProjectParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      @JsonKey(name: 'profile_picture') String? profilePicture});
}

/// @nodoc
class __$$UpdateProjectParamsImplCopyWithImpl<$Res>
    extends _$UpdateProjectParamsCopyWithImpl<$Res, _$UpdateProjectParamsImpl>
    implements _$$UpdateProjectParamsImplCopyWith<$Res> {
  __$$UpdateProjectParamsImplCopyWithImpl(_$UpdateProjectParamsImpl _value,
      $Res Function(_$UpdateProjectParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateProjectParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? profilePicture = freezed,
  }) {
    return _then(_$UpdateProjectParamsImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateProjectParamsImpl implements _UpdateProjectParams {
  const _$UpdateProjectParamsImpl(
      {required this.title,
      required this.description,
      @JsonKey(name: 'profile_picture') this.profilePicture});

  factory _$UpdateProjectParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateProjectParamsImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'profile_picture')
  final String? profilePicture;

  @override
  String toString() {
    return 'UpdateProjectParams(title: $title, description: $description, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProjectParamsImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, profilePicture);

  /// Create a copy of UpdateProjectParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProjectParamsImplCopyWith<_$UpdateProjectParamsImpl> get copyWith =>
      __$$UpdateProjectParamsImplCopyWithImpl<_$UpdateProjectParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProjectParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateProjectParams implements UpdateProjectParams {
  const factory _UpdateProjectParams(
          {required final String title,
          required final String description,
          @JsonKey(name: 'profile_picture') final String? profilePicture}) =
      _$UpdateProjectParamsImpl;

  factory _UpdateProjectParams.fromJson(Map<String, dynamic> json) =
      _$UpdateProjectParamsImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'profile_picture')
  String? get profilePicture;

  /// Create a copy of UpdateProjectParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProjectParamsImplCopyWith<_$UpdateProjectParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
