// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../create_project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateOrganizationParams _$CreateOrganizationParamsFromJson(
    Map<String, dynamic> json) {
  return _CreateOrganizationParams.fromJson(json);
}

/// @nodoc
mixin _$CreateOrganizationParams {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  String get profilePicture => throw _privateConstructorUsedError;

  /// Serializes this CreateOrganizationParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateOrganizationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateOrganizationParamsCopyWith<CreateOrganizationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrganizationParamsCopyWith<$Res> {
  factory $CreateOrganizationParamsCopyWith(CreateOrganizationParams value,
          $Res Function(CreateOrganizationParams) then) =
      _$CreateOrganizationParamsCopyWithImpl<$Res, CreateOrganizationParams>;
  @useResult
  $Res call(
      {String title,
      String description,
      @JsonKey(name: 'profile_picture') String profilePicture});
}

/// @nodoc
class _$CreateOrganizationParamsCopyWithImpl<$Res,
        $Val extends CreateOrganizationParams>
    implements $CreateOrganizationParamsCopyWith<$Res> {
  _$CreateOrganizationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateOrganizationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? profilePicture = null,
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
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateOrganizationParamsImplCopyWith<$Res>
    implements $CreateOrganizationParamsCopyWith<$Res> {
  factory _$$CreateOrganizationParamsImplCopyWith(
          _$CreateOrganizationParamsImpl value,
          $Res Function(_$CreateOrganizationParamsImpl) then) =
      __$$CreateOrganizationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      @JsonKey(name: 'profile_picture') String profilePicture});
}

/// @nodoc
class __$$CreateOrganizationParamsImplCopyWithImpl<$Res>
    extends _$CreateOrganizationParamsCopyWithImpl<$Res,
        _$CreateOrganizationParamsImpl>
    implements _$$CreateOrganizationParamsImplCopyWith<$Res> {
  __$$CreateOrganizationParamsImplCopyWithImpl(
      _$CreateOrganizationParamsImpl _value,
      $Res Function(_$CreateOrganizationParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateOrganizationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? profilePicture = null,
  }) {
    return _then(_$CreateOrganizationParamsImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateOrganizationParamsImpl implements _CreateOrganizationParams {
  const _$CreateOrganizationParamsImpl(
      {required this.title,
      required this.description,
      @JsonKey(name: 'profile_picture') required this.profilePicture});

  factory _$CreateOrganizationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateOrganizationParamsImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'profile_picture')
  final String profilePicture;

  @override
  String toString() {
    return 'CreateOrganizationParams(title: $title, description: $description, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrganizationParamsImpl &&
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

  /// Create a copy of CreateOrganizationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrganizationParamsImplCopyWith<_$CreateOrganizationParamsImpl>
      get copyWith => __$$CreateOrganizationParamsImplCopyWithImpl<
          _$CreateOrganizationParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateOrganizationParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateOrganizationParams implements CreateOrganizationParams {
  const factory _CreateOrganizationParams(
      {required final String title,
      required final String description,
      @JsonKey(name: 'profile_picture')
      required final String profilePicture}) = _$CreateOrganizationParamsImpl;

  factory _CreateOrganizationParams.fromJson(Map<String, dynamic> json) =
      _$CreateOrganizationParamsImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'profile_picture')
  String get profilePicture;

  /// Create a copy of CreateOrganizationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateOrganizationParamsImplCopyWith<_$CreateOrganizationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
