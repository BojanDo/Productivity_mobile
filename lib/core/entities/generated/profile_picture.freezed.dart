// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../profile_picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfilePicture {
  String get initial => throw _privateConstructorUsedError;
  String? get current => throw _privateConstructorUsedError;

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfilePictureCopyWith<ProfilePicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePictureCopyWith<$Res> {
  factory $ProfilePictureCopyWith(
          ProfilePicture value, $Res Function(ProfilePicture) then) =
      _$ProfilePictureCopyWithImpl<$Res, ProfilePicture>;
  @useResult
  $Res call({String initial, String? current});
}

/// @nodoc
class _$ProfilePictureCopyWithImpl<$Res, $Val extends ProfilePicture>
    implements $ProfilePictureCopyWith<$Res> {
  _$ProfilePictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initial = null,
    Object? current = freezed,
  }) {
    return _then(_value.copyWith(
      initial: null == initial
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as String,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfilePictureImplCopyWith<$Res>
    implements $ProfilePictureCopyWith<$Res> {
  factory _$$ProfilePictureImplCopyWith(_$ProfilePictureImpl value,
          $Res Function(_$ProfilePictureImpl) then) =
      __$$ProfilePictureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String initial, String? current});
}

/// @nodoc
class __$$ProfilePictureImplCopyWithImpl<$Res>
    extends _$ProfilePictureCopyWithImpl<$Res, _$ProfilePictureImpl>
    implements _$$ProfilePictureImplCopyWith<$Res> {
  __$$ProfilePictureImplCopyWithImpl(
      _$ProfilePictureImpl _value, $Res Function(_$ProfilePictureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initial = null,
    Object? current = freezed,
  }) {
    return _then(_$ProfilePictureImpl(
      initial: null == initial
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as String,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProfilePictureImpl implements _ProfilePicture {
  const _$ProfilePictureImpl({required this.initial, this.current});

  @override
  final String initial;
  @override
  final String? current;

  @override
  String toString() {
    return 'ProfilePicture(initial: $initial, current: $current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePictureImpl &&
            (identical(other.initial, initial) || other.initial == initial) &&
            (identical(other.current, current) || other.current == current));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initial, current);

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilePictureImplCopyWith<_$ProfilePictureImpl> get copyWith =>
      __$$ProfilePictureImplCopyWithImpl<_$ProfilePictureImpl>(
          this, _$identity);
}

abstract class _ProfilePicture implements ProfilePicture {
  const factory _ProfilePicture(
      {required final String initial,
      final String? current}) = _$ProfilePictureImpl;

  @override
  String get initial;
  @override
  String? get current;

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfilePictureImplCopyWith<_$ProfilePictureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
