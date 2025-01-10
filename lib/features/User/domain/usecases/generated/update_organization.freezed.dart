// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../update_organization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateOrganizationParams _$UpdateOrganizationParamsFromJson(
    Map<String, dynamic> json) {
  return _UpdateOrganizationParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateOrganizationParams {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  String? get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'delete_picture')
  bool get deletePicture => throw _privateConstructorUsedError;

  /// Serializes this UpdateOrganizationParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateOrganizationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateOrganizationParamsCopyWith<UpdateOrganizationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOrganizationParamsCopyWith<$Res> {
  factory $UpdateOrganizationParamsCopyWith(UpdateOrganizationParams value,
          $Res Function(UpdateOrganizationParams) then) =
      _$UpdateOrganizationParamsCopyWithImpl<$Res, UpdateOrganizationParams>;
  @useResult
  $Res call(
      {String name,
      String description,
      @JsonKey(name: 'profile_picture') String? profilePicture,
      @JsonKey(name: 'delete_picture') bool deletePicture});
}

/// @nodoc
class _$UpdateOrganizationParamsCopyWithImpl<$Res,
        $Val extends UpdateOrganizationParams>
    implements $UpdateOrganizationParamsCopyWith<$Res> {
  _$UpdateOrganizationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateOrganizationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? profilePicture = freezed,
    Object? deletePicture = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      deletePicture: null == deletePicture
          ? _value.deletePicture
          : deletePicture // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateOrganizationParamsImplCopyWith<$Res>
    implements $UpdateOrganizationParamsCopyWith<$Res> {
  factory _$$UpdateOrganizationParamsImplCopyWith(
          _$UpdateOrganizationParamsImpl value,
          $Res Function(_$UpdateOrganizationParamsImpl) then) =
      __$$UpdateOrganizationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      @JsonKey(name: 'profile_picture') String? profilePicture,
      @JsonKey(name: 'delete_picture') bool deletePicture});
}

/// @nodoc
class __$$UpdateOrganizationParamsImplCopyWithImpl<$Res>
    extends _$UpdateOrganizationParamsCopyWithImpl<$Res,
        _$UpdateOrganizationParamsImpl>
    implements _$$UpdateOrganizationParamsImplCopyWith<$Res> {
  __$$UpdateOrganizationParamsImplCopyWithImpl(
      _$UpdateOrganizationParamsImpl _value,
      $Res Function(_$UpdateOrganizationParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateOrganizationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? profilePicture = freezed,
    Object? deletePicture = null,
  }) {
    return _then(_$UpdateOrganizationParamsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      deletePicture: null == deletePicture
          ? _value.deletePicture
          : deletePicture // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateOrganizationParamsImpl implements _UpdateOrganizationParams {
  const _$UpdateOrganizationParamsImpl(
      {required this.name,
      required this.description,
      @JsonKey(name: 'profile_picture') this.profilePicture,
      @JsonKey(name: 'delete_picture') required this.deletePicture});

  factory _$UpdateOrganizationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateOrganizationParamsImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey(name: 'profile_picture')
  final String? profilePicture;
  @override
  @JsonKey(name: 'delete_picture')
  final bool deletePicture;

  @override
  String toString() {
    return 'UpdateOrganizationParams(name: $name, description: $description, profilePicture: $profilePicture, deletePicture: $deletePicture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateOrganizationParamsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.deletePicture, deletePicture) ||
                other.deletePicture == deletePicture));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, description, profilePicture, deletePicture);

  /// Create a copy of UpdateOrganizationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateOrganizationParamsImplCopyWith<_$UpdateOrganizationParamsImpl>
      get copyWith => __$$UpdateOrganizationParamsImplCopyWithImpl<
          _$UpdateOrganizationParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateOrganizationParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateOrganizationParams implements UpdateOrganizationParams {
  const factory _UpdateOrganizationParams(
          {required final String name,
          required final String description,
          @JsonKey(name: 'profile_picture') final String? profilePicture,
          @JsonKey(name: 'delete_picture') required final bool deletePicture}) =
      _$UpdateOrganizationParamsImpl;

  factory _UpdateOrganizationParams.fromJson(Map<String, dynamic> json) =
      _$UpdateOrganizationParamsImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(name: 'profile_picture')
  String? get profilePicture;
  @override
  @JsonKey(name: 'delete_picture')
  bool get deletePicture;

  /// Create a copy of UpdateOrganizationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateOrganizationParamsImplCopyWith<_$UpdateOrganizationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
