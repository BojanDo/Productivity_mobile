// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../validate_email.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidateEmailParams _$ValidateEmailParamsFromJson(Map<String, dynamic> json) {
  return _ValidateEmailParams.fromJson(json);
}

/// @nodoc
mixin _$ValidateEmailParams {
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_key')
  String get accessKey => throw _privateConstructorUsedError;
  int get smtp => throw _privateConstructorUsedError;
  int get format => throw _privateConstructorUsedError;

  /// Serializes this ValidateEmailParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidateEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidateEmailParamsCopyWith<ValidateEmailParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateEmailParamsCopyWith<$Res> {
  factory $ValidateEmailParamsCopyWith(
          ValidateEmailParams value, $Res Function(ValidateEmailParams) then) =
      _$ValidateEmailParamsCopyWithImpl<$Res, ValidateEmailParams>;
  @useResult
  $Res call(
      {String email,
      @JsonKey(name: 'access_key') String accessKey,
      int smtp,
      int format});
}

/// @nodoc
class _$ValidateEmailParamsCopyWithImpl<$Res, $Val extends ValidateEmailParams>
    implements $ValidateEmailParamsCopyWith<$Res> {
  _$ValidateEmailParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidateEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? accessKey = null,
    Object? smtp = null,
    Object? format = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      accessKey: null == accessKey
          ? _value.accessKey
          : accessKey // ignore: cast_nullable_to_non_nullable
              as String,
      smtp: null == smtp
          ? _value.smtp
          : smtp // ignore: cast_nullable_to_non_nullable
              as int,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidateEmailParamsImplCopyWith<$Res>
    implements $ValidateEmailParamsCopyWith<$Res> {
  factory _$$ValidateEmailParamsImplCopyWith(_$ValidateEmailParamsImpl value,
          $Res Function(_$ValidateEmailParamsImpl) then) =
      __$$ValidateEmailParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      @JsonKey(name: 'access_key') String accessKey,
      int smtp,
      int format});
}

/// @nodoc
class __$$ValidateEmailParamsImplCopyWithImpl<$Res>
    extends _$ValidateEmailParamsCopyWithImpl<$Res, _$ValidateEmailParamsImpl>
    implements _$$ValidateEmailParamsImplCopyWith<$Res> {
  __$$ValidateEmailParamsImplCopyWithImpl(_$ValidateEmailParamsImpl _value,
      $Res Function(_$ValidateEmailParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidateEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? accessKey = null,
    Object? smtp = null,
    Object? format = null,
  }) {
    return _then(_$ValidateEmailParamsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      accessKey: null == accessKey
          ? _value.accessKey
          : accessKey // ignore: cast_nullable_to_non_nullable
              as String,
      smtp: null == smtp
          ? _value.smtp
          : smtp // ignore: cast_nullable_to_non_nullable
              as int,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateEmailParamsImpl implements _ValidateEmailParams {
  const _$ValidateEmailParamsImpl(
      {required this.email,
      @JsonKey(name: 'access_key') this.accessKey = kMailBoxApiKey,
      this.smtp = 1,
      this.format = 0});

  factory _$ValidateEmailParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateEmailParamsImplFromJson(json);

  @override
  final String email;
  @override
  @JsonKey(name: 'access_key')
  final String accessKey;
  @override
  @JsonKey()
  final int smtp;
  @override
  @JsonKey()
  final int format;

  @override
  String toString() {
    return 'ValidateEmailParams(email: $email, accessKey: $accessKey, smtp: $smtp, format: $format)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateEmailParamsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.accessKey, accessKey) ||
                other.accessKey == accessKey) &&
            (identical(other.smtp, smtp) || other.smtp == smtp) &&
            (identical(other.format, format) || other.format == format));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, accessKey, smtp, format);

  /// Create a copy of ValidateEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateEmailParamsImplCopyWith<_$ValidateEmailParamsImpl> get copyWith =>
      __$$ValidateEmailParamsImplCopyWithImpl<_$ValidateEmailParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateEmailParamsImplToJson(
      this,
    );
  }
}

abstract class _ValidateEmailParams implements ValidateEmailParams {
  const factory _ValidateEmailParams(
      {required final String email,
      @JsonKey(name: 'access_key') final String accessKey,
      final int smtp,
      final int format}) = _$ValidateEmailParamsImpl;

  factory _ValidateEmailParams.fromJson(Map<String, dynamic> json) =
      _$ValidateEmailParamsImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(name: 'access_key')
  String get accessKey;
  @override
  int get smtp;
  @override
  int get format;

  /// Create a copy of ValidateEmailParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidateEmailParamsImplCopyWith<_$ValidateEmailParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
