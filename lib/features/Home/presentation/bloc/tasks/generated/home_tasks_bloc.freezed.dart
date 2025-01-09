// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../home_tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeTasksEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeTasksEventGet value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeTasksEventGet value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeTasksEventGet value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeTasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeTasksEventCopyWith<HomeTasksEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTasksEventCopyWith<$Res> {
  factory $HomeTasksEventCopyWith(
          HomeTasksEvent value, $Res Function(HomeTasksEvent) then) =
      _$HomeTasksEventCopyWithImpl<$Res, HomeTasksEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$HomeTasksEventCopyWithImpl<$Res, $Val extends HomeTasksEvent>
    implements $HomeTasksEventCopyWith<$Res> {
  _$HomeTasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeTasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeTasksEventGetImplCopyWith<$Res>
    implements $HomeTasksEventCopyWith<$Res> {
  factory _$$HomeTasksEventGetImplCopyWith(_$HomeTasksEventGetImpl value,
          $Res Function(_$HomeTasksEventGetImpl) then) =
      __$$HomeTasksEventGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$HomeTasksEventGetImplCopyWithImpl<$Res>
    extends _$HomeTasksEventCopyWithImpl<$Res, _$HomeTasksEventGetImpl>
    implements _$$HomeTasksEventGetImplCopyWith<$Res> {
  __$$HomeTasksEventGetImplCopyWithImpl(_$HomeTasksEventGetImpl _value,
      $Res Function(_$HomeTasksEventGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeTasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$HomeTasksEventGetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeTasksEventGetImpl implements _HomeTasksEventGet {
  const _$HomeTasksEventGetImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'HomeTasksEvent.get(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeTasksEventGetImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of HomeTasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeTasksEventGetImplCopyWith<_$HomeTasksEventGetImpl> get copyWith =>
      __$$HomeTasksEventGetImplCopyWithImpl<_$HomeTasksEventGetImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) get,
  }) {
    return get(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? get,
  }) {
    return get?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeTasksEventGet value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeTasksEventGet value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeTasksEventGet value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _HomeTasksEventGet implements HomeTasksEvent {
  const factory _HomeTasksEventGet({required final int id}) =
      _$HomeTasksEventGetImpl;

  @override
  int get id;

  /// Create a copy of HomeTasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeTasksEventGetImplCopyWith<_$HomeTasksEventGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeTasksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getting,
    required TResult Function(PaginatedList<TaskSlim> tasks) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getting,
    TResult? Function(PaginatedList<TaskSlim> tasks)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getting,
    TResult Function(PaginatedList<TaskSlim> tasks)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeTasksStateGetting value) getting,
    required TResult Function(_HomeTasksStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeTasksStateGetting value)? getting,
    TResult? Function(_HomeTasksStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeTasksStateGetting value)? getting,
    TResult Function(_HomeTasksStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTasksStateCopyWith<$Res> {
  factory $HomeTasksStateCopyWith(
          HomeTasksState value, $Res Function(HomeTasksState) then) =
      _$HomeTasksStateCopyWithImpl<$Res, HomeTasksState>;
}

/// @nodoc
class _$HomeTasksStateCopyWithImpl<$Res, $Val extends HomeTasksState>
    implements $HomeTasksStateCopyWith<$Res> {
  _$HomeTasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeTasksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeTasksStateGettingImplCopyWith<$Res> {
  factory _$$HomeTasksStateGettingImplCopyWith(
          _$HomeTasksStateGettingImpl value,
          $Res Function(_$HomeTasksStateGettingImpl) then) =
      __$$HomeTasksStateGettingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeTasksStateGettingImplCopyWithImpl<$Res>
    extends _$HomeTasksStateCopyWithImpl<$Res, _$HomeTasksStateGettingImpl>
    implements _$$HomeTasksStateGettingImplCopyWith<$Res> {
  __$$HomeTasksStateGettingImplCopyWithImpl(_$HomeTasksStateGettingImpl _value,
      $Res Function(_$HomeTasksStateGettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeTasksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeTasksStateGettingImpl implements _HomeTasksStateGetting {
  const _$HomeTasksStateGettingImpl();

  @override
  String toString() {
    return 'HomeTasksState.getting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeTasksStateGettingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getting,
    required TResult Function(PaginatedList<TaskSlim> tasks) loaded,
  }) {
    return getting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getting,
    TResult? Function(PaginatedList<TaskSlim> tasks)? loaded,
  }) {
    return getting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getting,
    TResult Function(PaginatedList<TaskSlim> tasks)? loaded,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeTasksStateGetting value) getting,
    required TResult Function(_HomeTasksStateLoaded value) loaded,
  }) {
    return getting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeTasksStateGetting value)? getting,
    TResult? Function(_HomeTasksStateLoaded value)? loaded,
  }) {
    return getting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeTasksStateGetting value)? getting,
    TResult Function(_HomeTasksStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting(this);
    }
    return orElse();
  }
}

abstract class _HomeTasksStateGetting implements HomeTasksState {
  const factory _HomeTasksStateGetting() = _$HomeTasksStateGettingImpl;
}

/// @nodoc
abstract class _$$HomeTasksStateLoadedImplCopyWith<$Res> {
  factory _$$HomeTasksStateLoadedImplCopyWith(_$HomeTasksStateLoadedImpl value,
          $Res Function(_$HomeTasksStateLoadedImpl) then) =
      __$$HomeTasksStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaginatedList<TaskSlim> tasks});

  $PaginatedListCopyWith<TaskSlim, $Res> get tasks;
}

/// @nodoc
class __$$HomeTasksStateLoadedImplCopyWithImpl<$Res>
    extends _$HomeTasksStateCopyWithImpl<$Res, _$HomeTasksStateLoadedImpl>
    implements _$$HomeTasksStateLoadedImplCopyWith<$Res> {
  __$$HomeTasksStateLoadedImplCopyWithImpl(_$HomeTasksStateLoadedImpl _value,
      $Res Function(_$HomeTasksStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeTasksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$HomeTasksStateLoadedImpl(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as PaginatedList<TaskSlim>,
    ));
  }

  /// Create a copy of HomeTasksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedListCopyWith<TaskSlim, $Res> get tasks {
    return $PaginatedListCopyWith<TaskSlim, $Res>(_value.tasks, (value) {
      return _then(_value.copyWith(tasks: value));
    });
  }
}

/// @nodoc

class _$HomeTasksStateLoadedImpl implements _HomeTasksStateLoaded {
  const _$HomeTasksStateLoadedImpl({required this.tasks});

  @override
  final PaginatedList<TaskSlim> tasks;

  @override
  String toString() {
    return 'HomeTasksState.loaded(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeTasksStateLoadedImpl &&
            (identical(other.tasks, tasks) || other.tasks == tasks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasks);

  /// Create a copy of HomeTasksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeTasksStateLoadedImplCopyWith<_$HomeTasksStateLoadedImpl>
      get copyWith =>
          __$$HomeTasksStateLoadedImplCopyWithImpl<_$HomeTasksStateLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getting,
    required TResult Function(PaginatedList<TaskSlim> tasks) loaded,
  }) {
    return loaded(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getting,
    TResult? Function(PaginatedList<TaskSlim> tasks)? loaded,
  }) {
    return loaded?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getting,
    TResult Function(PaginatedList<TaskSlim> tasks)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeTasksStateGetting value) getting,
    required TResult Function(_HomeTasksStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeTasksStateGetting value)? getting,
    TResult? Function(_HomeTasksStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeTasksStateGetting value)? getting,
    TResult Function(_HomeTasksStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _HomeTasksStateLoaded implements HomeTasksState {
  const factory _HomeTasksStateLoaded(
          {required final PaginatedList<TaskSlim> tasks}) =
      _$HomeTasksStateLoadedImpl;

  PaginatedList<TaskSlim> get tasks;

  /// Create a copy of HomeTasksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeTasksStateLoadedImplCopyWith<_$HomeTasksStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
