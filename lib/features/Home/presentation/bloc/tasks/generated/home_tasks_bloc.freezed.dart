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
  PaginatedList<TaskSlim> get tasks => throw _privateConstructorUsedError;
  PaginatedList<User> get users => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaginatedList<TaskSlim> tasks, PaginatedList<User> users)
        getting,
    required TResult Function(
            PaginatedList<TaskSlim> tasks, PaginatedList<User> users)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<TaskSlim> tasks, PaginatedList<User> users)?
        getting,
    TResult? Function(PaginatedList<TaskSlim> tasks, PaginatedList<User> users)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<TaskSlim> tasks, PaginatedList<User> users)?
        getting,
    TResult Function(PaginatedList<TaskSlim> tasks, PaginatedList<User> users)?
        loaded,
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

  /// Create a copy of HomeTasksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeTasksStateCopyWith<HomeTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTasksStateCopyWith<$Res> {
  factory $HomeTasksStateCopyWith(
          HomeTasksState value, $Res Function(HomeTasksState) then) =
      _$HomeTasksStateCopyWithImpl<$Res, HomeTasksState>;
  @useResult
  $Res call({PaginatedList<TaskSlim> tasks, PaginatedList<User> users});

  $PaginatedListCopyWith<TaskSlim, $Res> get tasks;
  $PaginatedListCopyWith<User, $Res> get users;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as PaginatedList<TaskSlim>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as PaginatedList<User>,
    ) as $Val);
  }

  /// Create a copy of HomeTasksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedListCopyWith<TaskSlim, $Res> get tasks {
    return $PaginatedListCopyWith<TaskSlim, $Res>(_value.tasks, (value) {
      return _then(_value.copyWith(tasks: value) as $Val);
    });
  }

  /// Create a copy of HomeTasksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedListCopyWith<User, $Res> get users {
    return $PaginatedListCopyWith<User, $Res>(_value.users, (value) {
      return _then(_value.copyWith(users: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeTasksStateGettingImplCopyWith<$Res>
    implements $HomeTasksStateCopyWith<$Res> {
  factory _$$HomeTasksStateGettingImplCopyWith(
          _$HomeTasksStateGettingImpl value,
          $Res Function(_$HomeTasksStateGettingImpl) then) =
      __$$HomeTasksStateGettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaginatedList<TaskSlim> tasks, PaginatedList<User> users});

  @override
  $PaginatedListCopyWith<TaskSlim, $Res> get tasks;
  @override
  $PaginatedListCopyWith<User, $Res> get users;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? users = null,
  }) {
    return _then(_$HomeTasksStateGettingImpl(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as PaginatedList<TaskSlim>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as PaginatedList<User>,
    ));
  }
}

/// @nodoc

class _$HomeTasksStateGettingImpl implements _HomeTasksStateGetting {
  const _$HomeTasksStateGettingImpl({required this.tasks, required this.users});

  @override
  final PaginatedList<TaskSlim> tasks;
  @override
  final PaginatedList<User> users;

  @override
  String toString() {
    return 'HomeTasksState.getting(tasks: $tasks, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeTasksStateGettingImpl &&
            (identical(other.tasks, tasks) || other.tasks == tasks) &&
            (identical(other.users, users) || other.users == users));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasks, users);

  /// Create a copy of HomeTasksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeTasksStateGettingImplCopyWith<_$HomeTasksStateGettingImpl>
      get copyWith => __$$HomeTasksStateGettingImplCopyWithImpl<
          _$HomeTasksStateGettingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PaginatedList<TaskSlim> tasks, PaginatedList<User> users)
        getting,
    required TResult Function(
            PaginatedList<TaskSlim> tasks, PaginatedList<User> users)
        loaded,
  }) {
    return getting(tasks, users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<TaskSlim> tasks, PaginatedList<User> users)?
        getting,
    TResult? Function(PaginatedList<TaskSlim> tasks, PaginatedList<User> users)?
        loaded,
  }) {
    return getting?.call(tasks, users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<TaskSlim> tasks, PaginatedList<User> users)?
        getting,
    TResult Function(PaginatedList<TaskSlim> tasks, PaginatedList<User> users)?
        loaded,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting(tasks, users);
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
  const factory _HomeTasksStateGetting(
      {required final PaginatedList<TaskSlim> tasks,
      required final PaginatedList<User> users}) = _$HomeTasksStateGettingImpl;

  @override
  PaginatedList<TaskSlim> get tasks;
  @override
  PaginatedList<User> get users;

  /// Create a copy of HomeTasksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeTasksStateGettingImplCopyWith<_$HomeTasksStateGettingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeTasksStateLoadedImplCopyWith<$Res>
    implements $HomeTasksStateCopyWith<$Res> {
  factory _$$HomeTasksStateLoadedImplCopyWith(_$HomeTasksStateLoadedImpl value,
          $Res Function(_$HomeTasksStateLoadedImpl) then) =
      __$$HomeTasksStateLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaginatedList<TaskSlim> tasks, PaginatedList<User> users});

  @override
  $PaginatedListCopyWith<TaskSlim, $Res> get tasks;
  @override
  $PaginatedListCopyWith<User, $Res> get users;
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
    Object? users = null,
  }) {
    return _then(_$HomeTasksStateLoadedImpl(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as PaginatedList<TaskSlim>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as PaginatedList<User>,
    ));
  }
}

/// @nodoc

class _$HomeTasksStateLoadedImpl implements _HomeTasksStateLoaded {
  const _$HomeTasksStateLoadedImpl({required this.tasks, required this.users});

  @override
  final PaginatedList<TaskSlim> tasks;
  @override
  final PaginatedList<User> users;

  @override
  String toString() {
    return 'HomeTasksState.loaded(tasks: $tasks, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeTasksStateLoadedImpl &&
            (identical(other.tasks, tasks) || other.tasks == tasks) &&
            (identical(other.users, users) || other.users == users));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasks, users);

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
    required TResult Function(
            PaginatedList<TaskSlim> tasks, PaginatedList<User> users)
        getting,
    required TResult Function(
            PaginatedList<TaskSlim> tasks, PaginatedList<User> users)
        loaded,
  }) {
    return loaded(tasks, users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<TaskSlim> tasks, PaginatedList<User> users)?
        getting,
    TResult? Function(PaginatedList<TaskSlim> tasks, PaginatedList<User> users)?
        loaded,
  }) {
    return loaded?.call(tasks, users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<TaskSlim> tasks, PaginatedList<User> users)?
        getting,
    TResult Function(PaginatedList<TaskSlim> tasks, PaginatedList<User> users)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tasks, users);
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
      {required final PaginatedList<TaskSlim> tasks,
      required final PaginatedList<User> users}) = _$HomeTasksStateLoadedImpl;

  @override
  PaginatedList<TaskSlim> get tasks;
  @override
  PaginatedList<User> get users;

  /// Create a copy of HomeTasksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeTasksStateLoadedImplCopyWith<_$HomeTasksStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
