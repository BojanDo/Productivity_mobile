// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../drawer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DrawerEvent {
  String get route => throw _privateConstructorUsedError;
  DrawerVisibleList get visibleList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String route, DrawerVisibleList visibleList)
        route,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String route, DrawerVisibleList visibleList)? route,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String route, DrawerVisibleList visibleList)? route,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Routed value) route,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Routed value)? route,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Routed value)? route,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DrawerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DrawerEventCopyWith<DrawerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerEventCopyWith<$Res> {
  factory $DrawerEventCopyWith(
          DrawerEvent value, $Res Function(DrawerEvent) then) =
      _$DrawerEventCopyWithImpl<$Res, DrawerEvent>;
  @useResult
  $Res call({String route, DrawerVisibleList visibleList});
}

/// @nodoc
class _$DrawerEventCopyWithImpl<$Res, $Val extends DrawerEvent>
    implements $DrawerEventCopyWith<$Res> {
  _$DrawerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DrawerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? visibleList = null,
  }) {
    return _then(_value.copyWith(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      visibleList: null == visibleList
          ? _value.visibleList
          : visibleList // ignore: cast_nullable_to_non_nullable
              as DrawerVisibleList,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutedImplCopyWith<$Res>
    implements $DrawerEventCopyWith<$Res> {
  factory _$$RoutedImplCopyWith(
          _$RoutedImpl value, $Res Function(_$RoutedImpl) then) =
      __$$RoutedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String route, DrawerVisibleList visibleList});
}

/// @nodoc
class __$$RoutedImplCopyWithImpl<$Res>
    extends _$DrawerEventCopyWithImpl<$Res, _$RoutedImpl>
    implements _$$RoutedImplCopyWith<$Res> {
  __$$RoutedImplCopyWithImpl(
      _$RoutedImpl _value, $Res Function(_$RoutedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = null,
    Object? visibleList = null,
  }) {
    return _then(_$RoutedImpl(
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      visibleList: null == visibleList
          ? _value.visibleList
          : visibleList // ignore: cast_nullable_to_non_nullable
              as DrawerVisibleList,
    ));
  }
}

/// @nodoc

class _$RoutedImpl implements _Routed {
  const _$RoutedImpl({required this.route, required this.visibleList});

  @override
  final String route;
  @override
  final DrawerVisibleList visibleList;

  @override
  String toString() {
    return 'DrawerEvent.route(route: $route, visibleList: $visibleList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutedImpl &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.visibleList, visibleList) ||
                other.visibleList == visibleList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route, visibleList);

  /// Create a copy of DrawerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutedImplCopyWith<_$RoutedImpl> get copyWith =>
      __$$RoutedImplCopyWithImpl<_$RoutedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String route, DrawerVisibleList visibleList)
        route,
  }) {
    return route(this.route, visibleList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String route, DrawerVisibleList visibleList)? route,
  }) {
    return route?.call(this.route, visibleList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String route, DrawerVisibleList visibleList)? route,
    required TResult orElse(),
  }) {
    if (route != null) {
      return route(this.route, visibleList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Routed value) route,
  }) {
    return route(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Routed value)? route,
  }) {
    return route?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Routed value)? route,
    required TResult orElse(),
  }) {
    if (route != null) {
      return route(this);
    }
    return orElse();
  }
}

abstract class _Routed implements DrawerEvent {
  const factory _Routed(
      {required final String route,
      required final DrawerVisibleList visibleList}) = _$RoutedImpl;

  @override
  String get route;
  @override
  DrawerVisibleList get visibleList;

  /// Create a copy of DrawerEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutedImplCopyWith<_$RoutedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DrawerState {
  String get currentRoute => throw _privateConstructorUsedError;
  DrawerVisibleList get visibleList => throw _privateConstructorUsedError;

  /// Create a copy of DrawerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DrawerStateCopyWith<DrawerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawerStateCopyWith<$Res> {
  factory $DrawerStateCopyWith(
          DrawerState value, $Res Function(DrawerState) then) =
      _$DrawerStateCopyWithImpl<$Res, DrawerState>;
  @useResult
  $Res call({String currentRoute, DrawerVisibleList visibleList});
}

/// @nodoc
class _$DrawerStateCopyWithImpl<$Res, $Val extends DrawerState>
    implements $DrawerStateCopyWith<$Res> {
  _$DrawerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DrawerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRoute = null,
    Object? visibleList = null,
  }) {
    return _then(_value.copyWith(
      currentRoute: null == currentRoute
          ? _value.currentRoute
          : currentRoute // ignore: cast_nullable_to_non_nullable
              as String,
      visibleList: null == visibleList
          ? _value.visibleList
          : visibleList // ignore: cast_nullable_to_non_nullable
              as DrawerVisibleList,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DrawerStateImplCopyWith<$Res>
    implements $DrawerStateCopyWith<$Res> {
  factory _$$DrawerStateImplCopyWith(
          _$DrawerStateImpl value, $Res Function(_$DrawerStateImpl) then) =
      __$$DrawerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currentRoute, DrawerVisibleList visibleList});
}

/// @nodoc
class __$$DrawerStateImplCopyWithImpl<$Res>
    extends _$DrawerStateCopyWithImpl<$Res, _$DrawerStateImpl>
    implements _$$DrawerStateImplCopyWith<$Res> {
  __$$DrawerStateImplCopyWithImpl(
      _$DrawerStateImpl _value, $Res Function(_$DrawerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DrawerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRoute = null,
    Object? visibleList = null,
  }) {
    return _then(_$DrawerStateImpl(
      currentRoute: null == currentRoute
          ? _value.currentRoute
          : currentRoute // ignore: cast_nullable_to_non_nullable
              as String,
      visibleList: null == visibleList
          ? _value.visibleList
          : visibleList // ignore: cast_nullable_to_non_nullable
              as DrawerVisibleList,
    ));
  }
}

/// @nodoc

class _$DrawerStateImpl implements _DrawerState {
  const _$DrawerStateImpl(
      {required this.currentRoute, required this.visibleList});

  @override
  final String currentRoute;
  @override
  final DrawerVisibleList visibleList;

  @override
  String toString() {
    return 'DrawerState(currentRoute: $currentRoute, visibleList: $visibleList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawerStateImpl &&
            (identical(other.currentRoute, currentRoute) ||
                other.currentRoute == currentRoute) &&
            (identical(other.visibleList, visibleList) ||
                other.visibleList == visibleList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentRoute, visibleList);

  /// Create a copy of DrawerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DrawerStateImplCopyWith<_$DrawerStateImpl> get copyWith =>
      __$$DrawerStateImplCopyWithImpl<_$DrawerStateImpl>(this, _$identity);
}

abstract class _DrawerState implements DrawerState {
  const factory _DrawerState(
      {required final String currentRoute,
      required final DrawerVisibleList visibleList}) = _$DrawerStateImpl;

  @override
  String get currentRoute;
  @override
  DrawerVisibleList get visibleList;

  /// Create a copy of DrawerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DrawerStateImplCopyWith<_$DrawerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
