// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterParams _$RegisterParamsFromJson(Map<String, dynamic> json) {
  return _RegisterParams.fromJson(json);
}

/// @nodoc
mixin _$RegisterParams {
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_picture')
  String? get profilePicture => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'password_confirmation')
  String get passwordConfirm => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_title')
  String get jobTitle => throw _privateConstructorUsedError;

  /// Serializes this RegisterParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterParamsCopyWith<RegisterParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterParamsCopyWith<$Res> {
  factory $RegisterParamsCopyWith(
          RegisterParams value, $Res Function(RegisterParams) then) =
      _$RegisterParamsCopyWithImpl<$Res, RegisterParams>;
  @useResult
  $Res call(
      {String firstname,
      String lastname,
      String email,
      @JsonKey(name: 'profile_picture') String? profilePicture,
      String password,
      @JsonKey(name: 'password_confirmation') String passwordConfirm,
      @JsonKey(name: 'job_title') String jobTitle});
}

/// @nodoc
class _$RegisterParamsCopyWithImpl<$Res, $Val extends RegisterParams>
    implements $RegisterParamsCopyWith<$Res> {
  _$RegisterParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? email = null,
    Object? profilePicture = freezed,
    Object? password = null,
    Object? passwordConfirm = null,
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
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      jobTitle: null == jobTitle
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterParamsImplCopyWith<$Res>
    implements $RegisterParamsCopyWith<$Res> {
  factory _$$RegisterParamsImplCopyWith(_$RegisterParamsImpl value,
          $Res Function(_$RegisterParamsImpl) then) =
      __$$RegisterParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstname,
      String lastname,
      String email,
      @JsonKey(name: 'profile_picture') String? profilePicture,
      String password,
      @JsonKey(name: 'password_confirmation') String passwordConfirm,
      @JsonKey(name: 'job_title') String jobTitle});
}

/// @nodoc
class __$$RegisterParamsImplCopyWithImpl<$Res>
    extends _$RegisterParamsCopyWithImpl<$Res, _$RegisterParamsImpl>
    implements _$$RegisterParamsImplCopyWith<$Res> {
  __$$RegisterParamsImplCopyWithImpl(
      _$RegisterParamsImpl _value, $Res Function(_$RegisterParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstname = null,
    Object? lastname = null,
    Object? email = null,
    Object? profilePicture = freezed,
    Object? password = null,
    Object? passwordConfirm = null,
    Object? jobTitle = null,
  }) {
    return _then(_$RegisterParamsImpl(
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
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
class _$RegisterParamsImpl implements _RegisterParams {
  const _$RegisterParamsImpl(
      {required this.firstname,
      required this.lastname,
      required this.email,
      @JsonKey(name: 'profile_picture') this.profilePicture,
      required this.password,
      @JsonKey(name: 'password_confirmation') required this.passwordConfirm,
      @JsonKey(name: 'job_title') required this.jobTitle});

  factory _$RegisterParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterParamsImplFromJson(json);

  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String email;
  @override
  @JsonKey(name: 'profile_picture')
  final String? profilePicture;
  @override
  final String password;
  @override
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirm;
  @override
  @JsonKey(name: 'job_title')
  final String jobTitle;

  @override
  String toString() {
    return 'RegisterParams(firstname: $firstname, lastname: $lastname, email: $email, profilePicture: $profilePicture, password: $password, passwordConfirm: $passwordConfirm, jobTitle: $jobTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterParamsImpl &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                other.passwordConfirm == passwordConfirm) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, firstname, lastname, email,
      profilePicture, password, passwordConfirm, jobTitle);

  /// Create a copy of RegisterParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterParamsImplCopyWith<_$RegisterParamsImpl> get copyWith =>
      __$$RegisterParamsImplCopyWithImpl<_$RegisterParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterParamsImplToJson(
      this,
    );
  }
}

abstract class _RegisterParams implements RegisterParams {
  const factory _RegisterParams(
          {required final String firstname,
          required final String lastname,
          required final String email,
          @JsonKey(name: 'profile_picture') final String? profilePicture,
          required final String password,
          @JsonKey(name: 'password_confirmation')
          required final String passwordConfirm,
          @JsonKey(name: 'job_title') required final String jobTitle}) =
      _$RegisterParamsImpl;

  factory _RegisterParams.fromJson(Map<String, dynamic> json) =
      _$RegisterParamsImpl.fromJson;

  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get email;
  @override
  @JsonKey(name: 'profile_picture')
  String? get profilePicture;
  @override
  String get password;
  @override
  @JsonKey(name: 'password_confirmation')
  String get passwordConfirm;
  @override
  @JsonKey(name: 'job_title')
  String get jobTitle;

  /// Create a copy of RegisterParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterParamsImplCopyWith<_$RegisterParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
