// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../update_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateUserParams _$UpdateUserParamsFromJson(Map<String, dynamic> json) {
  return _UpdateUserParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserParams {
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  String get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_title')
  String get jobTitle => throw _privateConstructorUsedError;

  /// Serializes this UpdateUserParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateUserParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateUserParamsCopyWith<UpdateUserParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserParamsCopyWith<$Res> {
  factory $UpdateUserParamsCopyWith(
          UpdateUserParams value, $Res Function(UpdateUserParams) then) =
      _$UpdateUserParamsCopyWithImpl<$Res, UpdateUserParams>;
  @useResult
  $Res call(
      {String firstname,
      String lastname,
      @JsonKey(name: 'profile_picture') String profilePicture,
      @JsonKey(name: 'job_title') String jobTitle});
}

/// @nodoc
class _$UpdateUserParamsCopyWithImpl<$Res, $Val extends UpdateUserParams>
    implements $UpdateUserParamsCopyWith<$Res> {
  _$UpdateUserParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateUserParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? profilePicture = null,
    Object? jobTitle = null,
  }) {
    return _then(_value.copyWith(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserParamsImplCopyWith<$Res>
    implements $UpdateUserParamsCopyWith<$Res> {
  factory _$$UpdateUserParamsImplCopyWith(_$UpdateUserParamsImpl value,
          $Res Function(_$UpdateUserParamsImpl) then) =
      __$$UpdateUserParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstname,
      String lastname,
      @JsonKey(name: 'profile_picture') String profilePicture,
      @JsonKey(name: 'job_title') String jobTitle});
}

/// @nodoc
class __$$UpdateUserParamsImplCopyWithImpl<$Res>
    extends _$UpdateUserParamsCopyWithImpl<$Res, _$UpdateUserParamsImpl>
    implements _$$UpdateUserParamsImplCopyWith<$Res> {
  __$$UpdateUserParamsImplCopyWithImpl(_$UpdateUserParamsImpl _value,
      $Res Function(_$UpdateUserParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateUserParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? profilePicture = null,
    Object? jobTitle = null,
  }) {
    return _then(_$UpdateUserParamsImpl(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserParamsImpl implements _UpdateUserParams {
  const _$UpdateUserParamsImpl(
      {required this.firstname,
      required this.lastname,
      @JsonKey(name: 'profile_picture') required this.profilePicture,
      @JsonKey(name: 'job_title') required this.jobTitle});

  factory _$UpdateUserParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserParamsImplFromJson(json);

  @override
  final String firstname;
  @override
  final String lastname;
  @override
  @JsonKey(name: 'profile_picture')
  final String profilePicture;
  @override
  @JsonKey(name: 'job_title')
  final String jobTitle;

  @override
  String toString() {
    return 'UpdateUserParams(firstname: $firstname, lastname: $lastname, profilePicture: $profilePicture, jobTitle: $jobTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserParamsImpl &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstname, lastname, profilePicture, jobTitle);

  /// Create a copy of UpdateUserParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserParamsImplCopyWith<_$UpdateUserParamsImpl> get copyWith =>
      __$$UpdateUserParamsImplCopyWithImpl<_$UpdateUserParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserParams implements UpdateUserParams {
  const factory _UpdateUserParams(
      {required final String firstname,
      required final String lastname,
      @JsonKey(name: 'profile_picture') required final String profilePicture,
      @JsonKey(name: 'job_title')
      required final String jobTitle}) = _$UpdateUserParamsImpl;

  factory _UpdateUserParams.fromJson(Map<String, dynamic> json) =
      _$UpdateUserParamsImpl.fromJson;

  @override
  String get firstname;
  @override
  String get lastname;
  @override
  @JsonKey(name: 'profile_picture')
  String get profilePicture;
  @override
  @JsonKey(name: 'job_title')
  String get jobTitle;

  /// Create a copy of UpdateUserParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserParamsImplCopyWith<_$UpdateUserParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
