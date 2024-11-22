// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../pop_scope_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PopScopeEvent {
  bool get canPop => throw _privateConstructorUsedError;
  VoidCallback? get onPop => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool canPop, VoidCallback? onPop) canPop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool canPop, VoidCallback? onPop)? canPop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canPop, VoidCallback? onPop)? canPop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CanPop value) canPop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CanPop value)? canPop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CanPop value)? canPop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PopScopeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PopScopeEventCopyWith<PopScopeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopScopeEventCopyWith<$Res> {
  factory $PopScopeEventCopyWith(
          PopScopeEvent value, $Res Function(PopScopeEvent) then) =
      _$PopScopeEventCopyWithImpl<$Res, PopScopeEvent>;
  @useResult
  $Res call({bool canPop, VoidCallback? onPop});
}

/// @nodoc
class _$PopScopeEventCopyWithImpl<$Res, $Val extends PopScopeEvent>
    implements $PopScopeEventCopyWith<$Res> {
  _$PopScopeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PopScopeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canPop = null,
    Object? onPop = freezed,
  }) {
    return _then(_value.copyWith(
      canPop: null == canPop
          ? _value.canPop
          : canPop // ignore: cast_nullable_to_non_nullable
              as bool,
      onPop: freezed == onPop
          ? _value.onPop
          : onPop // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CanPopImplCopyWith<$Res>
    implements $PopScopeEventCopyWith<$Res> {
  factory _$$CanPopImplCopyWith(
          _$CanPopImpl value, $Res Function(_$CanPopImpl) then) =
      __$$CanPopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool canPop, VoidCallback? onPop});
}

/// @nodoc
class __$$CanPopImplCopyWithImpl<$Res>
    extends _$PopScopeEventCopyWithImpl<$Res, _$CanPopImpl>
    implements _$$CanPopImplCopyWith<$Res> {
  __$$CanPopImplCopyWithImpl(
      _$CanPopImpl _value, $Res Function(_$CanPopImpl) _then)
      : super(_value, _then);

  /// Create a copy of PopScopeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canPop = null,
    Object? onPop = freezed,
  }) {
    return _then(_$CanPopImpl(
      canPop: null == canPop
          ? _value.canPop
          : canPop // ignore: cast_nullable_to_non_nullable
              as bool,
      onPop: freezed == onPop
          ? _value.onPop
          : onPop // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$CanPopImpl implements _CanPop {
  const _$CanPopImpl({this.canPop = true, this.onPop});

  @override
  @JsonKey()
  final bool canPop;
  @override
  final VoidCallback? onPop;

  @override
  String toString() {
    return 'PopScopeEvent.canPop(canPop: $canPop, onPop: $onPop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CanPopImpl &&
            (identical(other.canPop, canPop) || other.canPop == canPop) &&
            (identical(other.onPop, onPop) || other.onPop == onPop));
  }

  @override
  int get hashCode => Object.hash(runtimeType, canPop, onPop);

  /// Create a copy of PopScopeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CanPopImplCopyWith<_$CanPopImpl> get copyWith =>
      __$$CanPopImplCopyWithImpl<_$CanPopImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool canPop, VoidCallback? onPop) canPop,
  }) {
    return canPop(this.canPop, onPop);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool canPop, VoidCallback? onPop)? canPop,
  }) {
    return canPop?.call(this.canPop, onPop);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canPop, VoidCallback? onPop)? canPop,
    required TResult orElse(),
  }) {
    if (canPop != null) {
      return canPop(this.canPop, onPop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CanPop value) canPop,
  }) {
    return canPop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CanPop value)? canPop,
  }) {
    return canPop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CanPop value)? canPop,
    required TResult orElse(),
  }) {
    if (canPop != null) {
      return canPop(this);
    }
    return orElse();
  }
}

abstract class _CanPop implements PopScopeEvent {
  const factory _CanPop({final bool canPop, final VoidCallback? onPop}) =
      _$CanPopImpl;

  @override
  bool get canPop;
  @override
  VoidCallback? get onPop;

  /// Create a copy of PopScopeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CanPopImplCopyWith<_$CanPopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PopScopeState {
  bool get canPop => throw _privateConstructorUsedError;
  VoidCallback get onPop => throw _privateConstructorUsedError;

  /// Create a copy of PopScopeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PopScopeStateCopyWith<PopScopeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopScopeStateCopyWith<$Res> {
  factory $PopScopeStateCopyWith(
          PopScopeState value, $Res Function(PopScopeState) then) =
      _$PopScopeStateCopyWithImpl<$Res, PopScopeState>;
  @useResult
  $Res call({bool canPop, VoidCallback onPop});
}

/// @nodoc
class _$PopScopeStateCopyWithImpl<$Res, $Val extends PopScopeState>
    implements $PopScopeStateCopyWith<$Res> {
  _$PopScopeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PopScopeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canPop = null,
    Object? onPop = null,
  }) {
    return _then(_value.copyWith(
      canPop: null == canPop
          ? _value.canPop
          : canPop // ignore: cast_nullable_to_non_nullable
              as bool,
      onPop: null == onPop
          ? _value.onPop
          : onPop // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopScopeStateImplCopyWith<$Res>
    implements $PopScopeStateCopyWith<$Res> {
  factory _$$PopScopeStateImplCopyWith(
          _$PopScopeStateImpl value, $Res Function(_$PopScopeStateImpl) then) =
      __$$PopScopeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool canPop, VoidCallback onPop});
}

/// @nodoc
class __$$PopScopeStateImplCopyWithImpl<$Res>
    extends _$PopScopeStateCopyWithImpl<$Res, _$PopScopeStateImpl>
    implements _$$PopScopeStateImplCopyWith<$Res> {
  __$$PopScopeStateImplCopyWithImpl(
      _$PopScopeStateImpl _value, $Res Function(_$PopScopeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PopScopeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canPop = null,
    Object? onPop = null,
  }) {
    return _then(_$PopScopeStateImpl(
      canPop: null == canPop
          ? _value.canPop
          : canPop // ignore: cast_nullable_to_non_nullable
              as bool,
      onPop: null == onPop
          ? _value.onPop
          : onPop // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$PopScopeStateImpl implements _PopScopeState {
  const _$PopScopeStateImpl({this.canPop = true, required this.onPop});

  @override
  @JsonKey()
  final bool canPop;
  @override
  final VoidCallback onPop;

  @override
  String toString() {
    return 'PopScopeState(canPop: $canPop, onPop: $onPop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopScopeStateImpl &&
            (identical(other.canPop, canPop) || other.canPop == canPop) &&
            (identical(other.onPop, onPop) || other.onPop == onPop));
  }

  @override
  int get hashCode => Object.hash(runtimeType, canPop, onPop);

  /// Create a copy of PopScopeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PopScopeStateImplCopyWith<_$PopScopeStateImpl> get copyWith =>
      __$$PopScopeStateImplCopyWithImpl<_$PopScopeStateImpl>(this, _$identity);
}

abstract class _PopScopeState implements PopScopeState {
  const factory _PopScopeState(
      {final bool canPop,
      required final VoidCallback onPop}) = _$PopScopeStateImpl;

  @override
  bool get canPop;
  @override
  VoidCallback get onPop;

  /// Create a copy of PopScopeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PopScopeStateImplCopyWith<_$PopScopeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
