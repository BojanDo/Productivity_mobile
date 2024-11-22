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
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(Widget? content) overlayAdd,
    required TResult Function() overlayRemove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(Widget? content)? overlayAdd,
    TResult? Function()? overlayRemove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(Widget? content)? overlayAdd,
    TResult Function()? overlayRemove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppEventError value) error,
    required TResult Function(_AppEventSuccess value) success,
    required TResult Function(_AppEventOverlayAdd value) overlayAdd,
    required TResult Function(_AppEventOverlayRemove value) overlayRemove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppEventError value)? error,
    TResult? Function(_AppEventSuccess value)? success,
    TResult? Function(_AppEventOverlayAdd value)? overlayAdd,
    TResult? Function(_AppEventOverlayRemove value)? overlayRemove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(Widget content)? overlayAdd,
    TResult? Function()? overlayRemove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(Widget content)? overlayAdd,
    TResult Function()? overlayRemove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppSideEffectError value) error,
    required TResult Function(_AppSideEffectSuccess value) success,
    required TResult Function(_AppSideEffectOverlayAdd value) overlayAdd,
    required TResult Function(_AppSideEffectOverlayRemove value) overlayRemove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppSideEffectError value)? error,
    TResult? Function(_AppSideEffectSuccess value)? success,
    TResult? Function(_AppSideEffectOverlayAdd value)? overlayAdd,
    TResult? Function(_AppSideEffectOverlayRemove value)? overlayRemove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppSideEffectError value)? error,
    TResult Function(_AppSideEffectSuccess value)? success,
    TResult Function(_AppSideEffectOverlayAdd value)? overlayAdd,
    TResult Function(_AppSideEffectOverlayRemove value)? overlayRemove,
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
mixin _$AppState {}

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
abstract class _$$AppStateImplCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AppStateImpl implements _AppState {
  const _$AppStateImpl();

  @override
  String toString() {
    return 'AppState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AppState implements AppState {
  const factory _AppState() = _$AppStateImpl;
}
