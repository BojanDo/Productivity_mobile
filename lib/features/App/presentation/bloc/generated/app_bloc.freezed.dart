// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) toAuthenticated,
    required TResult Function() toNotAuthenticated,
    required TResult Function(Organization organization) toOffline,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(Widget? content) overlayAdd,
    required TResult Function() overlayRemove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? toAuthenticated,
    TResult? Function()? toNotAuthenticated,
    TResult? Function(Organization organization)? toOffline,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(Widget? content)? overlayAdd,
    TResult? Function()? overlayRemove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? toAuthenticated,
    TResult Function()? toNotAuthenticated,
    TResult Function(Organization organization)? toOffline,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(Widget? content)? overlayAdd,
    TResult Function()? overlayRemove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEventToAuthenticated value) toAuthenticated,
    required TResult Function(_AppEventToNotAuthenticated value)
        toNotAuthenticated,
    required TResult Function(_AppEventToOffline value) toOffline,
    required TResult Function(_AppEventError value) error,
    required TResult Function(_AppEventSuccess value) success,
    required TResult Function(_AppEventOverlayAdd value) overlayAdd,
    required TResult Function(_AppEventOverlayRemove value) overlayRemove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppEventToAuthenticated value)? toAuthenticated,
    TResult? Function(_AppEventToNotAuthenticated value)? toNotAuthenticated,
    TResult? Function(_AppEventToOffline value)? toOffline,
    TResult? Function(_AppEventError value)? error,
    TResult? Function(_AppEventSuccess value)? success,
    TResult? Function(_AppEventOverlayAdd value)? overlayAdd,
    TResult? Function(_AppEventOverlayRemove value)? overlayRemove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEventToAuthenticated value)? toAuthenticated,
    TResult Function(_AppEventToNotAuthenticated value)? toNotAuthenticated,
    TResult Function(_AppEventToOffline value)? toOffline,
    TResult Function(_AppEventError value)? error,
    TResult Function(_AppEventSuccess value)? success,
    TResult Function(_AppEventOverlayAdd value)? overlayAdd,
    TResult Function(_AppEventOverlayRemove value)? overlayRemove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppEventToAuthenticatedImplCopyWith<$Res> {
  factory _$$AppEventToAuthenticatedImplCopyWith(
          _$AppEventToAuthenticatedImpl value,
          $Res Function(_$AppEventToAuthenticatedImpl) then) =
      __$$AppEventToAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AppEventToAuthenticatedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppEventToAuthenticatedImpl>
    implements _$$AppEventToAuthenticatedImplCopyWith<$Res> {
  __$$AppEventToAuthenticatedImplCopyWithImpl(
      _$AppEventToAuthenticatedImpl _value,
      $Res Function(_$AppEventToAuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AppEventToAuthenticatedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AppEventToAuthenticatedImpl implements _AppEventToAuthenticated {
  const _$AppEventToAuthenticatedImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AppEvent.toAuthenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppEventToAuthenticatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppEventToAuthenticatedImplCopyWith<_$AppEventToAuthenticatedImpl>
      get copyWith => __$$AppEventToAuthenticatedImplCopyWithImpl<
          _$AppEventToAuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) toAuthenticated,
    required TResult Function() toNotAuthenticated,
    required TResult Function(Organization organization) toOffline,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(Widget? content) overlayAdd,
    required TResult Function() overlayRemove,
  }) {
    return toAuthenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? toAuthenticated,
    TResult? Function()? toNotAuthenticated,
    TResult? Function(Organization organization)? toOffline,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(Widget? content)? overlayAdd,
    TResult? Function()? overlayRemove,
  }) {
    return toAuthenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? toAuthenticated,
    TResult Function()? toNotAuthenticated,
    TResult Function(Organization organization)? toOffline,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(Widget? content)? overlayAdd,
    TResult Function()? overlayRemove,
    required TResult orElse(),
  }) {
    if (toAuthenticated != null) {
      return toAuthenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEventToAuthenticated value) toAuthenticated,
    required TResult Function(_AppEventToNotAuthenticated value)
        toNotAuthenticated,
    required TResult Function(_AppEventToOffline value) toOffline,
    required TResult Function(_AppEventError value) error,
    required TResult Function(_AppEventSuccess value) success,
    required TResult Function(_AppEventOverlayAdd value) overlayAdd,
    required TResult Function(_AppEventOverlayRemove value) overlayRemove,
  }) {
    return toAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppEventToAuthenticated value)? toAuthenticated,
    TResult? Function(_AppEventToNotAuthenticated value)? toNotAuthenticated,
    TResult? Function(_AppEventToOffline value)? toOffline,
    TResult? Function(_AppEventError value)? error,
    TResult? Function(_AppEventSuccess value)? success,
    TResult? Function(_AppEventOverlayAdd value)? overlayAdd,
    TResult? Function(_AppEventOverlayRemove value)? overlayRemove,
  }) {
    return toAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEventToAuthenticated value)? toAuthenticated,
    TResult Function(_AppEventToNotAuthenticated value)? toNotAuthenticated,
    TResult Function(_AppEventToOffline value)? toOffline,
    TResult Function(_AppEventError value)? error,
    TResult Function(_AppEventSuccess value)? success,
    TResult Function(_AppEventOverlayAdd value)? overlayAdd,
    TResult Function(_AppEventOverlayRemove value)? overlayRemove,
    required TResult orElse(),
  }) {
    if (toAuthenticated != null) {
      return toAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _AppEventToAuthenticated implements AppEvent {
  const factory _AppEventToAuthenticated({required final User user}) =
      _$AppEventToAuthenticatedImpl;

  User get user;

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppEventToAuthenticatedImplCopyWith<_$AppEventToAuthenticatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppEventToNotAuthenticatedImplCopyWith<$Res> {
  factory _$$AppEventToNotAuthenticatedImplCopyWith(
          _$AppEventToNotAuthenticatedImpl value,
          $Res Function(_$AppEventToNotAuthenticatedImpl) then) =
      __$$AppEventToNotAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppEventToNotAuthenticatedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppEventToNotAuthenticatedImpl>
    implements _$$AppEventToNotAuthenticatedImplCopyWith<$Res> {
  __$$AppEventToNotAuthenticatedImplCopyWithImpl(
      _$AppEventToNotAuthenticatedImpl _value,
      $Res Function(_$AppEventToNotAuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppEventToNotAuthenticatedImpl implements _AppEventToNotAuthenticated {
  const _$AppEventToNotAuthenticatedImpl();

  @override
  String toString() {
    return 'AppEvent.toNotAuthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppEventToNotAuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) toAuthenticated,
    required TResult Function() toNotAuthenticated,
    required TResult Function(Organization organization) toOffline,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(Widget? content) overlayAdd,
    required TResult Function() overlayRemove,
  }) {
    return toNotAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? toAuthenticated,
    TResult? Function()? toNotAuthenticated,
    TResult? Function(Organization organization)? toOffline,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(Widget? content)? overlayAdd,
    TResult? Function()? overlayRemove,
  }) {
    return toNotAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? toAuthenticated,
    TResult Function()? toNotAuthenticated,
    TResult Function(Organization organization)? toOffline,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(Widget? content)? overlayAdd,
    TResult Function()? overlayRemove,
    required TResult orElse(),
  }) {
    if (toNotAuthenticated != null) {
      return toNotAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEventToAuthenticated value) toAuthenticated,
    required TResult Function(_AppEventToNotAuthenticated value)
        toNotAuthenticated,
    required TResult Function(_AppEventToOffline value) toOffline,
    required TResult Function(_AppEventError value) error,
    required TResult Function(_AppEventSuccess value) success,
    required TResult Function(_AppEventOverlayAdd value) overlayAdd,
    required TResult Function(_AppEventOverlayRemove value) overlayRemove,
  }) {
    return toNotAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppEventToAuthenticated value)? toAuthenticated,
    TResult? Function(_AppEventToNotAuthenticated value)? toNotAuthenticated,
    TResult? Function(_AppEventToOffline value)? toOffline,
    TResult? Function(_AppEventError value)? error,
    TResult? Function(_AppEventSuccess value)? success,
    TResult? Function(_AppEventOverlayAdd value)? overlayAdd,
    TResult? Function(_AppEventOverlayRemove value)? overlayRemove,
  }) {
    return toNotAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEventToAuthenticated value)? toAuthenticated,
    TResult Function(_AppEventToNotAuthenticated value)? toNotAuthenticated,
    TResult Function(_AppEventToOffline value)? toOffline,
    TResult Function(_AppEventError value)? error,
    TResult Function(_AppEventSuccess value)? success,
    TResult Function(_AppEventOverlayAdd value)? overlayAdd,
    TResult Function(_AppEventOverlayRemove value)? overlayRemove,
    required TResult orElse(),
  }) {
    if (toNotAuthenticated != null) {
      return toNotAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _AppEventToNotAuthenticated implements AppEvent {
  const factory _AppEventToNotAuthenticated() =
      _$AppEventToNotAuthenticatedImpl;
}

/// @nodoc
abstract class _$$AppEventToOfflineImplCopyWith<$Res> {
  factory _$$AppEventToOfflineImplCopyWith(_$AppEventToOfflineImpl value,
          $Res Function(_$AppEventToOfflineImpl) then) =
      __$$AppEventToOfflineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Organization organization});

  $OrganizationCopyWith<$Res> get organization;
}

/// @nodoc
class __$$AppEventToOfflineImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppEventToOfflineImpl>
    implements _$$AppEventToOfflineImplCopyWith<$Res> {
  __$$AppEventToOfflineImplCopyWithImpl(_$AppEventToOfflineImpl _value,
      $Res Function(_$AppEventToOfflineImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organization = null,
  }) {
    return _then(_$AppEventToOfflineImpl(
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization,
    ));
  }

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationCopyWith<$Res> get organization {
    return $OrganizationCopyWith<$Res>(_value.organization, (value) {
      return _then(_value.copyWith(organization: value));
    });
  }
}

/// @nodoc

class _$AppEventToOfflineImpl implements _AppEventToOffline {
  const _$AppEventToOfflineImpl({required this.organization});

  @override
  final Organization organization;

  @override
  String toString() {
    return 'AppEvent.toOffline(organization: $organization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppEventToOfflineImpl &&
            (identical(other.organization, organization) ||
                other.organization == organization));
  }

  @override
  int get hashCode => Object.hash(runtimeType, organization);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppEventToOfflineImplCopyWith<_$AppEventToOfflineImpl> get copyWith =>
      __$$AppEventToOfflineImplCopyWithImpl<_$AppEventToOfflineImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) toAuthenticated,
    required TResult Function() toNotAuthenticated,
    required TResult Function(Organization organization) toOffline,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(Widget? content) overlayAdd,
    required TResult Function() overlayRemove,
  }) {
    return toOffline(organization);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? toAuthenticated,
    TResult? Function()? toNotAuthenticated,
    TResult? Function(Organization organization)? toOffline,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(Widget? content)? overlayAdd,
    TResult? Function()? overlayRemove,
  }) {
    return toOffline?.call(organization);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? toAuthenticated,
    TResult Function()? toNotAuthenticated,
    TResult Function(Organization organization)? toOffline,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(Widget? content)? overlayAdd,
    TResult Function()? overlayRemove,
    required TResult orElse(),
  }) {
    if (toOffline != null) {
      return toOffline(organization);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEventToAuthenticated value) toAuthenticated,
    required TResult Function(_AppEventToNotAuthenticated value)
        toNotAuthenticated,
    required TResult Function(_AppEventToOffline value) toOffline,
    required TResult Function(_AppEventError value) error,
    required TResult Function(_AppEventSuccess value) success,
    required TResult Function(_AppEventOverlayAdd value) overlayAdd,
    required TResult Function(_AppEventOverlayRemove value) overlayRemove,
  }) {
    return toOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppEventToAuthenticated value)? toAuthenticated,
    TResult? Function(_AppEventToNotAuthenticated value)? toNotAuthenticated,
    TResult? Function(_AppEventToOffline value)? toOffline,
    TResult? Function(_AppEventError value)? error,
    TResult? Function(_AppEventSuccess value)? success,
    TResult? Function(_AppEventOverlayAdd value)? overlayAdd,
    TResult? Function(_AppEventOverlayRemove value)? overlayRemove,
  }) {
    return toOffline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEventToAuthenticated value)? toAuthenticated,
    TResult Function(_AppEventToNotAuthenticated value)? toNotAuthenticated,
    TResult Function(_AppEventToOffline value)? toOffline,
    TResult Function(_AppEventError value)? error,
    TResult Function(_AppEventSuccess value)? success,
    TResult Function(_AppEventOverlayAdd value)? overlayAdd,
    TResult Function(_AppEventOverlayRemove value)? overlayRemove,
    required TResult orElse(),
  }) {
    if (toOffline != null) {
      return toOffline(this);
    }
    return orElse();
  }
}

abstract class _AppEventToOffline implements AppEvent {
  const factory _AppEventToOffline({required final Organization organization}) =
      _$AppEventToOfflineImpl;

  Organization get organization;

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppEventToOfflineImplCopyWith<_$AppEventToOfflineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppEventErrorImplCopyWith<$Res> {
  factory _$$AppEventErrorImplCopyWith(
          _$AppEventErrorImpl value, $Res Function(_$AppEventErrorImpl) then) =
      __$$AppEventErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AppEventErrorImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppEventErrorImpl>
    implements _$$AppEventErrorImplCopyWith<$Res> {
  __$$AppEventErrorImplCopyWithImpl(
      _$AppEventErrorImpl _value, $Res Function(_$AppEventErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AppEventErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppEventErrorImpl implements _AppEventError {
  const _$AppEventErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppEvent.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppEventErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppEventErrorImplCopyWith<_$AppEventErrorImpl> get copyWith =>
      __$$AppEventErrorImplCopyWithImpl<_$AppEventErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) toAuthenticated,
    required TResult Function() toNotAuthenticated,
    required TResult Function(Organization organization) toOffline,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(Widget? content) overlayAdd,
    required TResult Function() overlayRemove,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? toAuthenticated,
    TResult? Function()? toNotAuthenticated,
    TResult? Function(Organization organization)? toOffline,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(Widget? content)? overlayAdd,
    TResult? Function()? overlayRemove,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? toAuthenticated,
    TResult Function()? toNotAuthenticated,
    TResult Function(Organization organization)? toOffline,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(Widget? content)? overlayAdd,
    TResult Function()? overlayRemove,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEventToAuthenticated value) toAuthenticated,
    required TResult Function(_AppEventToNotAuthenticated value)
        toNotAuthenticated,
    required TResult Function(_AppEventToOffline value) toOffline,
    required TResult Function(_AppEventError value) error,
    required TResult Function(_AppEventSuccess value) success,
    required TResult Function(_AppEventOverlayAdd value) overlayAdd,
    required TResult Function(_AppEventOverlayRemove value) overlayRemove,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppEventToAuthenticated value)? toAuthenticated,
    TResult? Function(_AppEventToNotAuthenticated value)? toNotAuthenticated,
    TResult? Function(_AppEventToOffline value)? toOffline,
    TResult? Function(_AppEventError value)? error,
    TResult? Function(_AppEventSuccess value)? success,
    TResult? Function(_AppEventOverlayAdd value)? overlayAdd,
    TResult? Function(_AppEventOverlayRemove value)? overlayRemove,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEventToAuthenticated value)? toAuthenticated,
    TResult Function(_AppEventToNotAuthenticated value)? toNotAuthenticated,
    TResult Function(_AppEventToOffline value)? toOffline,
    TResult Function(_AppEventError value)? error,
    TResult Function(_AppEventSuccess value)? success,
    TResult Function(_AppEventOverlayAdd value)? overlayAdd,
    TResult Function(_AppEventOverlayRemove value)? overlayRemove,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AppEventError implements AppEvent {
  const factory _AppEventError({required final String message}) =
      _$AppEventErrorImpl;

  String get message;

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppEventErrorImplCopyWith<_$AppEventErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppEventSuccessImplCopyWith<$Res> {
  factory _$$AppEventSuccessImplCopyWith(_$AppEventSuccessImpl value,
          $Res Function(_$AppEventSuccessImpl) then) =
      __$$AppEventSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AppEventSuccessImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppEventSuccessImpl>
    implements _$$AppEventSuccessImplCopyWith<$Res> {
  __$$AppEventSuccessImplCopyWithImpl(
      _$AppEventSuccessImpl _value, $Res Function(_$AppEventSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AppEventSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppEventSuccessImpl implements _AppEventSuccess {
  const _$AppEventSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppEvent.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppEventSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppEventSuccessImplCopyWith<_$AppEventSuccessImpl> get copyWith =>
      __$$AppEventSuccessImplCopyWithImpl<_$AppEventSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) toAuthenticated,
    required TResult Function() toNotAuthenticated,
    required TResult Function(Organization organization) toOffline,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(Widget? content) overlayAdd,
    required TResult Function() overlayRemove,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? toAuthenticated,
    TResult? Function()? toNotAuthenticated,
    TResult? Function(Organization organization)? toOffline,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(Widget? content)? overlayAdd,
    TResult? Function()? overlayRemove,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? toAuthenticated,
    TResult Function()? toNotAuthenticated,
    TResult Function(Organization organization)? toOffline,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(Widget? content)? overlayAdd,
    TResult Function()? overlayRemove,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEventToAuthenticated value) toAuthenticated,
    required TResult Function(_AppEventToNotAuthenticated value)
        toNotAuthenticated,
    required TResult Function(_AppEventToOffline value) toOffline,
    required TResult Function(_AppEventError value) error,
    required TResult Function(_AppEventSuccess value) success,
    required TResult Function(_AppEventOverlayAdd value) overlayAdd,
    required TResult Function(_AppEventOverlayRemove value) overlayRemove,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppEventToAuthenticated value)? toAuthenticated,
    TResult? Function(_AppEventToNotAuthenticated value)? toNotAuthenticated,
    TResult? Function(_AppEventToOffline value)? toOffline,
    TResult? Function(_AppEventError value)? error,
    TResult? Function(_AppEventSuccess value)? success,
    TResult? Function(_AppEventOverlayAdd value)? overlayAdd,
    TResult? Function(_AppEventOverlayRemove value)? overlayRemove,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEventToAuthenticated value)? toAuthenticated,
    TResult Function(_AppEventToNotAuthenticated value)? toNotAuthenticated,
    TResult Function(_AppEventToOffline value)? toOffline,
    TResult Function(_AppEventError value)? error,
    TResult Function(_AppEventSuccess value)? success,
    TResult Function(_AppEventOverlayAdd value)? overlayAdd,
    TResult Function(_AppEventOverlayRemove value)? overlayRemove,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AppEventSuccess implements AppEvent {
  const factory _AppEventSuccess({required final String message}) =
      _$AppEventSuccessImpl;

  String get message;

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppEventSuccessImplCopyWith<_$AppEventSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppEventOverlayAddImplCopyWith<$Res> {
  factory _$$AppEventOverlayAddImplCopyWith(_$AppEventOverlayAddImpl value,
          $Res Function(_$AppEventOverlayAddImpl) then) =
      __$$AppEventOverlayAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Widget? content});
}

/// @nodoc
class __$$AppEventOverlayAddImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppEventOverlayAddImpl>
    implements _$$AppEventOverlayAddImplCopyWith<$Res> {
  __$$AppEventOverlayAddImplCopyWithImpl(_$AppEventOverlayAddImpl _value,
      $Res Function(_$AppEventOverlayAddImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_$AppEventOverlayAddImpl(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$AppEventOverlayAddImpl implements _AppEventOverlayAdd {
  const _$AppEventOverlayAddImpl({this.content});

  @override
  final Widget? content;

  @override
  String toString() {
    return 'AppEvent.overlayAdd(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppEventOverlayAddImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppEventOverlayAddImplCopyWith<_$AppEventOverlayAddImpl> get copyWith =>
      __$$AppEventOverlayAddImplCopyWithImpl<_$AppEventOverlayAddImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) toAuthenticated,
    required TResult Function() toNotAuthenticated,
    required TResult Function(Organization organization) toOffline,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(Widget? content) overlayAdd,
    required TResult Function() overlayRemove,
  }) {
    return overlayAdd(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? toAuthenticated,
    TResult? Function()? toNotAuthenticated,
    TResult? Function(Organization organization)? toOffline,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(Widget? content)? overlayAdd,
    TResult? Function()? overlayRemove,
  }) {
    return overlayAdd?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? toAuthenticated,
    TResult Function()? toNotAuthenticated,
    TResult Function(Organization organization)? toOffline,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(Widget? content)? overlayAdd,
    TResult Function()? overlayRemove,
    required TResult orElse(),
  }) {
    if (overlayAdd != null) {
      return overlayAdd(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEventToAuthenticated value) toAuthenticated,
    required TResult Function(_AppEventToNotAuthenticated value)
        toNotAuthenticated,
    required TResult Function(_AppEventToOffline value) toOffline,
    required TResult Function(_AppEventError value) error,
    required TResult Function(_AppEventSuccess value) success,
    required TResult Function(_AppEventOverlayAdd value) overlayAdd,
    required TResult Function(_AppEventOverlayRemove value) overlayRemove,
  }) {
    return overlayAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppEventToAuthenticated value)? toAuthenticated,
    TResult? Function(_AppEventToNotAuthenticated value)? toNotAuthenticated,
    TResult? Function(_AppEventToOffline value)? toOffline,
    TResult? Function(_AppEventError value)? error,
    TResult? Function(_AppEventSuccess value)? success,
    TResult? Function(_AppEventOverlayAdd value)? overlayAdd,
    TResult? Function(_AppEventOverlayRemove value)? overlayRemove,
  }) {
    return overlayAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEventToAuthenticated value)? toAuthenticated,
    TResult Function(_AppEventToNotAuthenticated value)? toNotAuthenticated,
    TResult Function(_AppEventToOffline value)? toOffline,
    TResult Function(_AppEventError value)? error,
    TResult Function(_AppEventSuccess value)? success,
    TResult Function(_AppEventOverlayAdd value)? overlayAdd,
    TResult Function(_AppEventOverlayRemove value)? overlayRemove,
    required TResult orElse(),
  }) {
    if (overlayAdd != null) {
      return overlayAdd(this);
    }
    return orElse();
  }
}

abstract class _AppEventOverlayAdd implements AppEvent {
  const factory _AppEventOverlayAdd({final Widget? content}) =
      _$AppEventOverlayAddImpl;

  Widget? get content;

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppEventOverlayAddImplCopyWith<_$AppEventOverlayAddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppEventOverlayRemoveImplCopyWith<$Res> {
  factory _$$AppEventOverlayRemoveImplCopyWith(
          _$AppEventOverlayRemoveImpl value,
          $Res Function(_$AppEventOverlayRemoveImpl) then) =
      __$$AppEventOverlayRemoveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppEventOverlayRemoveImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppEventOverlayRemoveImpl>
    implements _$$AppEventOverlayRemoveImplCopyWith<$Res> {
  __$$AppEventOverlayRemoveImplCopyWithImpl(_$AppEventOverlayRemoveImpl _value,
      $Res Function(_$AppEventOverlayRemoveImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppEventOverlayRemoveImpl implements _AppEventOverlayRemove {
  const _$AppEventOverlayRemoveImpl();

  @override
  String toString() {
    return 'AppEvent.overlayRemove()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppEventOverlayRemoveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) toAuthenticated,
    required TResult Function() toNotAuthenticated,
    required TResult Function(Organization organization) toOffline,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(Widget? content) overlayAdd,
    required TResult Function() overlayRemove,
  }) {
    return overlayRemove();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? toAuthenticated,
    TResult? Function()? toNotAuthenticated,
    TResult? Function(Organization organization)? toOffline,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(Widget? content)? overlayAdd,
    TResult? Function()? overlayRemove,
  }) {
    return overlayRemove?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? toAuthenticated,
    TResult Function()? toNotAuthenticated,
    TResult Function(Organization organization)? toOffline,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(Widget? content)? overlayAdd,
    TResult Function()? overlayRemove,
    required TResult orElse(),
  }) {
    if (overlayRemove != null) {
      return overlayRemove();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEventToAuthenticated value) toAuthenticated,
    required TResult Function(_AppEventToNotAuthenticated value)
        toNotAuthenticated,
    required TResult Function(_AppEventToOffline value) toOffline,
    required TResult Function(_AppEventError value) error,
    required TResult Function(_AppEventSuccess value) success,
    required TResult Function(_AppEventOverlayAdd value) overlayAdd,
    required TResult Function(_AppEventOverlayRemove value) overlayRemove,
  }) {
    return overlayRemove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppEventToAuthenticated value)? toAuthenticated,
    TResult? Function(_AppEventToNotAuthenticated value)? toNotAuthenticated,
    TResult? Function(_AppEventToOffline value)? toOffline,
    TResult? Function(_AppEventError value)? error,
    TResult? Function(_AppEventSuccess value)? success,
    TResult? Function(_AppEventOverlayAdd value)? overlayAdd,
    TResult? Function(_AppEventOverlayRemove value)? overlayRemove,
  }) {
    return overlayRemove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppEventToAuthenticated value)? toAuthenticated,
    TResult Function(_AppEventToNotAuthenticated value)? toNotAuthenticated,
    TResult Function(_AppEventToOffline value)? toOffline,
    TResult Function(_AppEventError value)? error,
    TResult Function(_AppEventSuccess value)? success,
    TResult Function(_AppEventOverlayAdd value)? overlayAdd,
    TResult Function(_AppEventOverlayRemove value)? overlayRemove,
    required TResult orElse(),
  }) {
    if (overlayRemove != null) {
      return overlayRemove(this);
    }
    return orElse();
  }
}

abstract class _AppEventOverlayRemove implements AppEvent {
  const factory _AppEventOverlayRemove() = _$AppEventOverlayRemoveImpl;
}

/// @nodoc
mixin _$AppSideEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(Widget content) overlayAdd,
    required TResult Function() overlayRemove,
    required TResult Function() connectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(Widget content)? overlayAdd,
    TResult? Function()? overlayRemove,
    TResult? Function()? connectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(Widget content)? overlayAdd,
    TResult Function()? overlayRemove,
    TResult Function()? connectionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppSideEffectError value) error,
    required TResult Function(_AppSideEffectSuccess value) success,
    required TResult Function(_AppSideEffectOverlayAdd value) overlayAdd,
    required TResult Function(_AppSideEffectOverlayRemove value) overlayRemove,
    required TResult Function(_AppSideEffectConnectionError value)
        connectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppSideEffectError value)? error,
    TResult? Function(_AppSideEffectSuccess value)? success,
    TResult? Function(_AppSideEffectOverlayAdd value)? overlayAdd,
    TResult? Function(_AppSideEffectOverlayRemove value)? overlayRemove,
    TResult? Function(_AppSideEffectConnectionError value)? connectionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppSideEffectError value)? error,
    TResult Function(_AppSideEffectSuccess value)? success,
    TResult Function(_AppSideEffectOverlayAdd value)? overlayAdd,
    TResult Function(_AppSideEffectOverlayRemove value)? overlayRemove,
    TResult Function(_AppSideEffectConnectionError value)? connectionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSideEffectCopyWith<$Res> {
  factory $AppSideEffectCopyWith(
          AppSideEffect value, $Res Function(AppSideEffect) then) =
      _$AppSideEffectCopyWithImpl<$Res, AppSideEffect>;
}

/// @nodoc
class _$AppSideEffectCopyWithImpl<$Res, $Val extends AppSideEffect>
    implements $AppSideEffectCopyWith<$Res> {
  _$AppSideEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSideEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppSideEffectErrorImplCopyWith<$Res> {
  factory _$$AppSideEffectErrorImplCopyWith(_$AppSideEffectErrorImpl value,
          $Res Function(_$AppSideEffectErrorImpl) then) =
      __$$AppSideEffectErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AppSideEffectErrorImplCopyWithImpl<$Res>
    extends _$AppSideEffectCopyWithImpl<$Res, _$AppSideEffectErrorImpl>
    implements _$$AppSideEffectErrorImplCopyWith<$Res> {
  __$$AppSideEffectErrorImplCopyWithImpl(_$AppSideEffectErrorImpl _value,
      $Res Function(_$AppSideEffectErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSideEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AppSideEffectErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppSideEffectErrorImpl implements _AppSideEffectError {
  const _$AppSideEffectErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppSideEffect.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSideEffectErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppSideEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSideEffectErrorImplCopyWith<_$AppSideEffectErrorImpl> get copyWith =>
      __$$AppSideEffectErrorImplCopyWithImpl<_$AppSideEffectErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(Widget content) overlayAdd,
    required TResult Function() overlayRemove,
    required TResult Function() connectionError,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(Widget content)? overlayAdd,
    TResult? Function()? overlayRemove,
    TResult? Function()? connectionError,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(Widget content)? overlayAdd,
    TResult Function()? overlayRemove,
    TResult Function()? connectionError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppSideEffectError value) error,
    required TResult Function(_AppSideEffectSuccess value) success,
    required TResult Function(_AppSideEffectOverlayAdd value) overlayAdd,
    required TResult Function(_AppSideEffectOverlayRemove value) overlayRemove,
    required TResult Function(_AppSideEffectConnectionError value)
        connectionError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppSideEffectError value)? error,
    TResult? Function(_AppSideEffectSuccess value)? success,
    TResult? Function(_AppSideEffectOverlayAdd value)? overlayAdd,
    TResult? Function(_AppSideEffectOverlayRemove value)? overlayRemove,
    TResult? Function(_AppSideEffectConnectionError value)? connectionError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppSideEffectError value)? error,
    TResult Function(_AppSideEffectSuccess value)? success,
    TResult Function(_AppSideEffectOverlayAdd value)? overlayAdd,
    TResult Function(_AppSideEffectOverlayRemove value)? overlayRemove,
    TResult Function(_AppSideEffectConnectionError value)? connectionError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AppSideEffectError implements AppSideEffect {
  const factory _AppSideEffectError({required final String message}) =
      _$AppSideEffectErrorImpl;

  String get message;

  /// Create a copy of AppSideEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSideEffectErrorImplCopyWith<_$AppSideEffectErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppSideEffectSuccessImplCopyWith<$Res> {
  factory _$$AppSideEffectSuccessImplCopyWith(_$AppSideEffectSuccessImpl value,
          $Res Function(_$AppSideEffectSuccessImpl) then) =
      __$$AppSideEffectSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AppSideEffectSuccessImplCopyWithImpl<$Res>
    extends _$AppSideEffectCopyWithImpl<$Res, _$AppSideEffectSuccessImpl>
    implements _$$AppSideEffectSuccessImplCopyWith<$Res> {
  __$$AppSideEffectSuccessImplCopyWithImpl(_$AppSideEffectSuccessImpl _value,
      $Res Function(_$AppSideEffectSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSideEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AppSideEffectSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppSideEffectSuccessImpl implements _AppSideEffectSuccess {
  const _$AppSideEffectSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppSideEffect.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSideEffectSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppSideEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSideEffectSuccessImplCopyWith<_$AppSideEffectSuccessImpl>
      get copyWith =>
          __$$AppSideEffectSuccessImplCopyWithImpl<_$AppSideEffectSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(Widget content) overlayAdd,
    required TResult Function() overlayRemove,
    required TResult Function() connectionError,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(Widget content)? overlayAdd,
    TResult? Function()? overlayRemove,
    TResult? Function()? connectionError,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(Widget content)? overlayAdd,
    TResult Function()? overlayRemove,
    TResult Function()? connectionError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppSideEffectError value) error,
    required TResult Function(_AppSideEffectSuccess value) success,
    required TResult Function(_AppSideEffectOverlayAdd value) overlayAdd,
    required TResult Function(_AppSideEffectOverlayRemove value) overlayRemove,
    required TResult Function(_AppSideEffectConnectionError value)
        connectionError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppSideEffectError value)? error,
    TResult? Function(_AppSideEffectSuccess value)? success,
    TResult? Function(_AppSideEffectOverlayAdd value)? overlayAdd,
    TResult? Function(_AppSideEffectOverlayRemove value)? overlayRemove,
    TResult? Function(_AppSideEffectConnectionError value)? connectionError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppSideEffectError value)? error,
    TResult Function(_AppSideEffectSuccess value)? success,
    TResult Function(_AppSideEffectOverlayAdd value)? overlayAdd,
    TResult Function(_AppSideEffectOverlayRemove value)? overlayRemove,
    TResult Function(_AppSideEffectConnectionError value)? connectionError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AppSideEffectSuccess implements AppSideEffect {
  const factory _AppSideEffectSuccess({required final String message}) =
      _$AppSideEffectSuccessImpl;

  String get message;

  /// Create a copy of AppSideEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSideEffectSuccessImplCopyWith<_$AppSideEffectSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppSideEffectOverlayAddImplCopyWith<$Res> {
  factory _$$AppSideEffectOverlayAddImplCopyWith(
          _$AppSideEffectOverlayAddImpl value,
          $Res Function(_$AppSideEffectOverlayAddImpl) then) =
      __$$AppSideEffectOverlayAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Widget content});
}

/// @nodoc
class __$$AppSideEffectOverlayAddImplCopyWithImpl<$Res>
    extends _$AppSideEffectCopyWithImpl<$Res, _$AppSideEffectOverlayAddImpl>
    implements _$$AppSideEffectOverlayAddImplCopyWith<$Res> {
  __$$AppSideEffectOverlayAddImplCopyWithImpl(
      _$AppSideEffectOverlayAddImpl _value,
      $Res Function(_$AppSideEffectOverlayAddImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSideEffect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$AppSideEffectOverlayAddImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$AppSideEffectOverlayAddImpl implements _AppSideEffectOverlayAdd {
  const _$AppSideEffectOverlayAddImpl({required this.content});

  @override
  final Widget content;

  @override
  String toString() {
    return 'AppSideEffect.overlayAdd(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSideEffectOverlayAddImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of AppSideEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSideEffectOverlayAddImplCopyWith<_$AppSideEffectOverlayAddImpl>
      get copyWith => __$$AppSideEffectOverlayAddImplCopyWithImpl<
          _$AppSideEffectOverlayAddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(Widget content) overlayAdd,
    required TResult Function() overlayRemove,
    required TResult Function() connectionError,
  }) {
    return overlayAdd(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(Widget content)? overlayAdd,
    TResult? Function()? overlayRemove,
    TResult? Function()? connectionError,
  }) {
    return overlayAdd?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(Widget content)? overlayAdd,
    TResult Function()? overlayRemove,
    TResult Function()? connectionError,
    required TResult orElse(),
  }) {
    if (overlayAdd != null) {
      return overlayAdd(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppSideEffectError value) error,
    required TResult Function(_AppSideEffectSuccess value) success,
    required TResult Function(_AppSideEffectOverlayAdd value) overlayAdd,
    required TResult Function(_AppSideEffectOverlayRemove value) overlayRemove,
    required TResult Function(_AppSideEffectConnectionError value)
        connectionError,
  }) {
    return overlayAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppSideEffectError value)? error,
    TResult? Function(_AppSideEffectSuccess value)? success,
    TResult? Function(_AppSideEffectOverlayAdd value)? overlayAdd,
    TResult? Function(_AppSideEffectOverlayRemove value)? overlayRemove,
    TResult? Function(_AppSideEffectConnectionError value)? connectionError,
  }) {
    return overlayAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppSideEffectError value)? error,
    TResult Function(_AppSideEffectSuccess value)? success,
    TResult Function(_AppSideEffectOverlayAdd value)? overlayAdd,
    TResult Function(_AppSideEffectOverlayRemove value)? overlayRemove,
    TResult Function(_AppSideEffectConnectionError value)? connectionError,
    required TResult orElse(),
  }) {
    if (overlayAdd != null) {
      return overlayAdd(this);
    }
    return orElse();
  }
}

abstract class _AppSideEffectOverlayAdd implements AppSideEffect {
  const factory _AppSideEffectOverlayAdd({required final Widget content}) =
      _$AppSideEffectOverlayAddImpl;

  Widget get content;

  /// Create a copy of AppSideEffect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSideEffectOverlayAddImplCopyWith<_$AppSideEffectOverlayAddImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppSideEffectOverlayRemoveImplCopyWith<$Res> {
  factory _$$AppSideEffectOverlayRemoveImplCopyWith(
          _$AppSideEffectOverlayRemoveImpl value,
          $Res Function(_$AppSideEffectOverlayRemoveImpl) then) =
      __$$AppSideEffectOverlayRemoveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppSideEffectOverlayRemoveImplCopyWithImpl<$Res>
    extends _$AppSideEffectCopyWithImpl<$Res, _$AppSideEffectOverlayRemoveImpl>
    implements _$$AppSideEffectOverlayRemoveImplCopyWith<$Res> {
  __$$AppSideEffectOverlayRemoveImplCopyWithImpl(
      _$AppSideEffectOverlayRemoveImpl _value,
      $Res Function(_$AppSideEffectOverlayRemoveImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSideEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppSideEffectOverlayRemoveImpl implements _AppSideEffectOverlayRemove {
  const _$AppSideEffectOverlayRemoveImpl();

  @override
  String toString() {
    return 'AppSideEffect.overlayRemove()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSideEffectOverlayRemoveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(Widget content) overlayAdd,
    required TResult Function() overlayRemove,
    required TResult Function() connectionError,
  }) {
    return overlayRemove();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(Widget content)? overlayAdd,
    TResult? Function()? overlayRemove,
    TResult? Function()? connectionError,
  }) {
    return overlayRemove?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(Widget content)? overlayAdd,
    TResult Function()? overlayRemove,
    TResult Function()? connectionError,
    required TResult orElse(),
  }) {
    if (overlayRemove != null) {
      return overlayRemove();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppSideEffectError value) error,
    required TResult Function(_AppSideEffectSuccess value) success,
    required TResult Function(_AppSideEffectOverlayAdd value) overlayAdd,
    required TResult Function(_AppSideEffectOverlayRemove value) overlayRemove,
    required TResult Function(_AppSideEffectConnectionError value)
        connectionError,
  }) {
    return overlayRemove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppSideEffectError value)? error,
    TResult? Function(_AppSideEffectSuccess value)? success,
    TResult? Function(_AppSideEffectOverlayAdd value)? overlayAdd,
    TResult? Function(_AppSideEffectOverlayRemove value)? overlayRemove,
    TResult? Function(_AppSideEffectConnectionError value)? connectionError,
  }) {
    return overlayRemove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppSideEffectError value)? error,
    TResult Function(_AppSideEffectSuccess value)? success,
    TResult Function(_AppSideEffectOverlayAdd value)? overlayAdd,
    TResult Function(_AppSideEffectOverlayRemove value)? overlayRemove,
    TResult Function(_AppSideEffectConnectionError value)? connectionError,
    required TResult orElse(),
  }) {
    if (overlayRemove != null) {
      return overlayRemove(this);
    }
    return orElse();
  }
}

abstract class _AppSideEffectOverlayRemove implements AppSideEffect {
  const factory _AppSideEffectOverlayRemove() =
      _$AppSideEffectOverlayRemoveImpl;
}

/// @nodoc
abstract class _$$AppSideEffectConnectionErrorImplCopyWith<$Res> {
  factory _$$AppSideEffectConnectionErrorImplCopyWith(
          _$AppSideEffectConnectionErrorImpl value,
          $Res Function(_$AppSideEffectConnectionErrorImpl) then) =
      __$$AppSideEffectConnectionErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppSideEffectConnectionErrorImplCopyWithImpl<$Res>
    extends _$AppSideEffectCopyWithImpl<$Res,
        _$AppSideEffectConnectionErrorImpl>
    implements _$$AppSideEffectConnectionErrorImplCopyWith<$Res> {
  __$$AppSideEffectConnectionErrorImplCopyWithImpl(
      _$AppSideEffectConnectionErrorImpl _value,
      $Res Function(_$AppSideEffectConnectionErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSideEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppSideEffectConnectionErrorImpl
    implements _AppSideEffectConnectionError {
  const _$AppSideEffectConnectionErrorImpl();

  @override
  String toString() {
    return 'AppSideEffect.connectionError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSideEffectConnectionErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(Widget content) overlayAdd,
    required TResult Function() overlayRemove,
    required TResult Function() connectionError,
  }) {
    return connectionError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(Widget content)? overlayAdd,
    TResult? Function()? overlayRemove,
    TResult? Function()? connectionError,
  }) {
    return connectionError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(Widget content)? overlayAdd,
    TResult Function()? overlayRemove,
    TResult Function()? connectionError,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppSideEffectError value) error,
    required TResult Function(_AppSideEffectSuccess value) success,
    required TResult Function(_AppSideEffectOverlayAdd value) overlayAdd,
    required TResult Function(_AppSideEffectOverlayRemove value) overlayRemove,
    required TResult Function(_AppSideEffectConnectionError value)
        connectionError,
  }) {
    return connectionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppSideEffectError value)? error,
    TResult? Function(_AppSideEffectSuccess value)? success,
    TResult? Function(_AppSideEffectOverlayAdd value)? overlayAdd,
    TResult? Function(_AppSideEffectOverlayRemove value)? overlayRemove,
    TResult? Function(_AppSideEffectConnectionError value)? connectionError,
  }) {
    return connectionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppSideEffectError value)? error,
    TResult Function(_AppSideEffectSuccess value)? success,
    TResult Function(_AppSideEffectOverlayAdd value)? overlayAdd,
    TResult Function(_AppSideEffectOverlayRemove value)? overlayRemove,
    TResult Function(_AppSideEffectConnectionError value)? connectionError,
    required TResult orElse(),
  }) {
    if (connectionError != null) {
      return connectionError(this);
    }
    return orElse();
  }
}

abstract class _AppSideEffectConnectionError implements AppSideEffect {
  const factory _AppSideEffectConnectionError() =
      _$AppSideEffectConnectionErrorImpl;
}

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function() notAuthenticated,
    required TResult Function(Organization organization) offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function()? notAuthenticated,
    TResult? Function(Organization organization)? offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function(Organization organization)? offline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateAuthenticated value) authenticated,
    required TResult Function(_AppStateNotAuthenticated value) notAuthenticated,
    required TResult Function(_AppStateOffline value) offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppStateAuthenticated value)? authenticated,
    TResult? Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult? Function(_AppStateOffline value)? offline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateAuthenticated value)? authenticated,
    TResult Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(_AppStateOffline value)? offline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AppStateAuthenticatedImplCopyWith<$Res> {
  factory _$$AppStateAuthenticatedImplCopyWith(
          _$AppStateAuthenticatedImpl value,
          $Res Function(_$AppStateAuthenticatedImpl) then) =
      __$$AppStateAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AppStateAuthenticatedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateAuthenticatedImpl>
    implements _$$AppStateAuthenticatedImplCopyWith<$Res> {
  __$$AppStateAuthenticatedImplCopyWithImpl(_$AppStateAuthenticatedImpl _value,
      $Res Function(_$AppStateAuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AppStateAuthenticatedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AppStateAuthenticatedImpl implements _AppStateAuthenticated {
  const _$AppStateAuthenticatedImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'AppState.authenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateAuthenticatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateAuthenticatedImplCopyWith<_$AppStateAuthenticatedImpl>
      get copyWith => __$$AppStateAuthenticatedImplCopyWithImpl<
          _$AppStateAuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function() notAuthenticated,
    required TResult Function(Organization organization) offline,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function()? notAuthenticated,
    TResult? Function(Organization organization)? offline,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function(Organization organization)? offline,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateAuthenticated value) authenticated,
    required TResult Function(_AppStateNotAuthenticated value) notAuthenticated,
    required TResult Function(_AppStateOffline value) offline,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppStateAuthenticated value)? authenticated,
    TResult? Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult? Function(_AppStateOffline value)? offline,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateAuthenticated value)? authenticated,
    TResult Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(_AppStateOffline value)? offline,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AppStateAuthenticated implements AppState {
  const factory _AppStateAuthenticated({required final User user}) =
      _$AppStateAuthenticatedImpl;

  User get user;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppStateAuthenticatedImplCopyWith<_$AppStateAuthenticatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppStateNotAuthenticatedImplCopyWith<$Res> {
  factory _$$AppStateNotAuthenticatedImplCopyWith(
          _$AppStateNotAuthenticatedImpl value,
          $Res Function(_$AppStateNotAuthenticatedImpl) then) =
      __$$AppStateNotAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStateNotAuthenticatedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateNotAuthenticatedImpl>
    implements _$$AppStateNotAuthenticatedImplCopyWith<$Res> {
  __$$AppStateNotAuthenticatedImplCopyWithImpl(
      _$AppStateNotAuthenticatedImpl _value,
      $Res Function(_$AppStateNotAuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppStateNotAuthenticatedImpl implements _AppStateNotAuthenticated {
  const _$AppStateNotAuthenticatedImpl();

  @override
  String toString() {
    return 'AppState.notAuthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateNotAuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function() notAuthenticated,
    required TResult Function(Organization organization) offline,
  }) {
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function()? notAuthenticated,
    TResult? Function(Organization organization)? offline,
  }) {
    return notAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function(Organization organization)? offline,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateAuthenticated value) authenticated,
    required TResult Function(_AppStateNotAuthenticated value) notAuthenticated,
    required TResult Function(_AppStateOffline value) offline,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppStateAuthenticated value)? authenticated,
    TResult? Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult? Function(_AppStateOffline value)? offline,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateAuthenticated value)? authenticated,
    TResult Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(_AppStateOffline value)? offline,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _AppStateNotAuthenticated implements AppState {
  const factory _AppStateNotAuthenticated() = _$AppStateNotAuthenticatedImpl;
}

/// @nodoc
abstract class _$$AppStateOfflineImplCopyWith<$Res> {
  factory _$$AppStateOfflineImplCopyWith(_$AppStateOfflineImpl value,
          $Res Function(_$AppStateOfflineImpl) then) =
      __$$AppStateOfflineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Organization organization});

  $OrganizationCopyWith<$Res> get organization;
}

/// @nodoc
class __$$AppStateOfflineImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateOfflineImpl>
    implements _$$AppStateOfflineImplCopyWith<$Res> {
  __$$AppStateOfflineImplCopyWithImpl(
      _$AppStateOfflineImpl _value, $Res Function(_$AppStateOfflineImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organization = null,
  }) {
    return _then(_$AppStateOfflineImpl(
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization,
    ));
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationCopyWith<$Res> get organization {
    return $OrganizationCopyWith<$Res>(_value.organization, (value) {
      return _then(_value.copyWith(organization: value));
    });
  }
}

/// @nodoc

class _$AppStateOfflineImpl implements _AppStateOffline {
  const _$AppStateOfflineImpl({required this.organization});

  @override
  final Organization organization;

  @override
  String toString() {
    return 'AppState.offline(organization: $organization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateOfflineImpl &&
            (identical(other.organization, organization) ||
                other.organization == organization));
  }

  @override
  int get hashCode => Object.hash(runtimeType, organization);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateOfflineImplCopyWith<_$AppStateOfflineImpl> get copyWith =>
      __$$AppStateOfflineImplCopyWithImpl<_$AppStateOfflineImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function() notAuthenticated,
    required TResult Function(Organization organization) offline,
  }) {
    return offline(organization);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function()? notAuthenticated,
    TResult? Function(Organization organization)? offline,
  }) {
    return offline?.call(organization);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function()? notAuthenticated,
    TResult Function(Organization organization)? offline,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(organization);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateAuthenticated value) authenticated,
    required TResult Function(_AppStateNotAuthenticated value) notAuthenticated,
    required TResult Function(_AppStateOffline value) offline,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppStateAuthenticated value)? authenticated,
    TResult? Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult? Function(_AppStateOffline value)? offline,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateAuthenticated value)? authenticated,
    TResult Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(_AppStateOffline value)? offline,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class _AppStateOffline implements AppState {
  const factory _AppStateOffline({required final Organization organization}) =
      _$AppStateOfflineImpl;

  Organization get organization;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppStateOfflineImplCopyWith<_$AppStateOfflineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
