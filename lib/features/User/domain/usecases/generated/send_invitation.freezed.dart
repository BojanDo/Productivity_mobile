// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../send_invitation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendInvitationParams _$SendInvitationParamsFromJson(Map<String, dynamic> json) {
  return _SendInvitationParams.fromJson(json);
}

/// @nodoc
mixin _$SendInvitationParams {
  String get email => throw _privateConstructorUsedError;

  /// Serializes this SendInvitationParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendInvitationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendInvitationParamsCopyWith<SendInvitationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendInvitationParamsCopyWith<$Res> {
  factory $SendInvitationParamsCopyWith(SendInvitationParams value,
          $Res Function(SendInvitationParams) then) =
      _$SendInvitationParamsCopyWithImpl<$Res, SendInvitationParams>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$SendInvitationParamsCopyWithImpl<$Res,
        $Val extends SendInvitationParams>
    implements $SendInvitationParamsCopyWith<$Res> {
  _$SendInvitationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendInvitationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendInvitationParamsImplCopyWith<$Res>
    implements $SendInvitationParamsCopyWith<$Res> {
  factory _$$SendInvitationParamsImplCopyWith(_$SendInvitationParamsImpl value,
          $Res Function(_$SendInvitationParamsImpl) then) =
      __$$SendInvitationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendInvitationParamsImplCopyWithImpl<$Res>
    extends _$SendInvitationParamsCopyWithImpl<$Res, _$SendInvitationParamsImpl>
    implements _$$SendInvitationParamsImplCopyWith<$Res> {
  __$$SendInvitationParamsImplCopyWithImpl(_$SendInvitationParamsImpl _value,
      $Res Function(_$SendInvitationParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendInvitationParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendInvitationParamsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendInvitationParamsImpl implements _SendInvitationParams {
  const _$SendInvitationParamsImpl({required this.email});

  factory _$SendInvitationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendInvitationParamsImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'SendInvitationParams(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendInvitationParamsImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of SendInvitationParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendInvitationParamsImplCopyWith<_$SendInvitationParamsImpl>
      get copyWith =>
          __$$SendInvitationParamsImplCopyWithImpl<_$SendInvitationParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendInvitationParamsImplToJson(
      this,
    );
  }
}

abstract class _SendInvitationParams implements SendInvitationParams {
  const factory _SendInvitationParams({required final String email}) =
      _$SendInvitationParamsImpl;

  factory _SendInvitationParams.fromJson(Map<String, dynamic> json) =
      _$SendInvitationParamsImpl.fromJson;

  @override
  String get email;

  /// Create a copy of SendInvitationParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendInvitationParamsImplCopyWith<_$SendInvitationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
