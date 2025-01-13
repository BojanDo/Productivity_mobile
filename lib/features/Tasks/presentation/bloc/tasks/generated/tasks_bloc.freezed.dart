// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? projectId, int? assignedId) get,
    required TResult Function() filter,
    required TResult Function(int id) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? projectId, int? assignedId)? get,
    TResult? Function()? filter,
    TResult? Function(int id)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? projectId, int? assignedId)? get,
    TResult Function()? filter,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksEventGet value) get,
    required TResult Function(_TasksEventFilter value) filter,
    required TResult Function(_TasksEventDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksEventGet value)? get,
    TResult? Function(_TasksEventFilter value)? filter,
    TResult? Function(_TasksEventDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksEventGet value)? get,
    TResult Function(_TasksEventFilter value)? filter,
    TResult Function(_TasksEventDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res, TasksEvent>;
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res, $Val extends TasksEvent>
    implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TasksEventGetImplCopyWith<$Res> {
  factory _$$TasksEventGetImplCopyWith(
          _$TasksEventGetImpl value, $Res Function(_$TasksEventGetImpl) then) =
      __$$TasksEventGetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? projectId, int? assignedId});
}

/// @nodoc
class __$$TasksEventGetImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksEventGetImpl>
    implements _$$TasksEventGetImplCopyWith<$Res> {
  __$$TasksEventGetImplCopyWithImpl(
      _$TasksEventGetImpl _value, $Res Function(_$TasksEventGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = freezed,
    Object? assignedId = freezed,
  }) {
    return _then(_$TasksEventGetImpl(
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int?,
      assignedId: freezed == assignedId
          ? _value.assignedId
          : assignedId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TasksEventGetImpl implements _TasksEventGet {
  const _$TasksEventGetImpl({this.projectId, this.assignedId});

  @override
  final int? projectId;
  @override
  final int? assignedId;

  @override
  String toString() {
    return 'TasksEvent.get(projectId: $projectId, assignedId: $assignedId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksEventGetImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.assignedId, assignedId) ||
                other.assignedId == assignedId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectId, assignedId);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksEventGetImplCopyWith<_$TasksEventGetImpl> get copyWith =>
      __$$TasksEventGetImplCopyWithImpl<_$TasksEventGetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? projectId, int? assignedId) get,
    required TResult Function() filter,
    required TResult Function(int id) delete,
  }) {
    return get(projectId, assignedId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? projectId, int? assignedId)? get,
    TResult? Function()? filter,
    TResult? Function(int id)? delete,
  }) {
    return get?.call(projectId, assignedId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? projectId, int? assignedId)? get,
    TResult Function()? filter,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(projectId, assignedId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksEventGet value) get,
    required TResult Function(_TasksEventFilter value) filter,
    required TResult Function(_TasksEventDelete value) delete,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksEventGet value)? get,
    TResult? Function(_TasksEventFilter value)? filter,
    TResult? Function(_TasksEventDelete value)? delete,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksEventGet value)? get,
    TResult Function(_TasksEventFilter value)? filter,
    TResult Function(_TasksEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _TasksEventGet implements TasksEvent {
  const factory _TasksEventGet({final int? projectId, final int? assignedId}) =
      _$TasksEventGetImpl;

  int? get projectId;
  int? get assignedId;

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasksEventGetImplCopyWith<_$TasksEventGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksEventFilterImplCopyWith<$Res> {
  factory _$$TasksEventFilterImplCopyWith(_$TasksEventFilterImpl value,
          $Res Function(_$TasksEventFilterImpl) then) =
      __$$TasksEventFilterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksEventFilterImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksEventFilterImpl>
    implements _$$TasksEventFilterImplCopyWith<$Res> {
  __$$TasksEventFilterImplCopyWithImpl(_$TasksEventFilterImpl _value,
      $Res Function(_$TasksEventFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TasksEventFilterImpl implements _TasksEventFilter {
  const _$TasksEventFilterImpl();

  @override
  String toString() {
    return 'TasksEvent.filter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TasksEventFilterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? projectId, int? assignedId) get,
    required TResult Function() filter,
    required TResult Function(int id) delete,
  }) {
    return filter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? projectId, int? assignedId)? get,
    TResult? Function()? filter,
    TResult? Function(int id)? delete,
  }) {
    return filter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? projectId, int? assignedId)? get,
    TResult Function()? filter,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksEventGet value) get,
    required TResult Function(_TasksEventFilter value) filter,
    required TResult Function(_TasksEventDelete value) delete,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksEventGet value)? get,
    TResult? Function(_TasksEventFilter value)? filter,
    TResult? Function(_TasksEventDelete value)? delete,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksEventGet value)? get,
    TResult Function(_TasksEventFilter value)? filter,
    TResult Function(_TasksEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class _TasksEventFilter implements TasksEvent {
  const factory _TasksEventFilter() = _$TasksEventFilterImpl;
}

/// @nodoc
abstract class _$$TasksEventDeleteImplCopyWith<$Res> {
  factory _$$TasksEventDeleteImplCopyWith(_$TasksEventDeleteImpl value,
          $Res Function(_$TasksEventDeleteImpl) then) =
      __$$TasksEventDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$TasksEventDeleteImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$TasksEventDeleteImpl>
    implements _$$TasksEventDeleteImplCopyWith<$Res> {
  __$$TasksEventDeleteImplCopyWithImpl(_$TasksEventDeleteImpl _value,
      $Res Function(_$TasksEventDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$TasksEventDeleteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TasksEventDeleteImpl implements _TasksEventDelete {
  const _$TasksEventDeleteImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'TasksEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksEventDeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksEventDeleteImplCopyWith<_$TasksEventDeleteImpl> get copyWith =>
      __$$TasksEventDeleteImplCopyWithImpl<_$TasksEventDeleteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? projectId, int? assignedId) get,
    required TResult Function() filter,
    required TResult Function(int id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? projectId, int? assignedId)? get,
    TResult? Function()? filter,
    TResult? Function(int id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? projectId, int? assignedId)? get,
    TResult Function()? filter,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksEventGet value) get,
    required TResult Function(_TasksEventFilter value) filter,
    required TResult Function(_TasksEventDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksEventGet value)? get,
    TResult? Function(_TasksEventFilter value)? filter,
    TResult? Function(_TasksEventDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksEventGet value)? get,
    TResult Function(_TasksEventFilter value)? filter,
    TResult Function(_TasksEventDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _TasksEventDelete implements TasksEvent {
  const factory _TasksEventDelete({required final int id}) =
      _$TasksEventDeleteImpl;

  int get id;

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasksEventDeleteImplCopyWith<_$TasksEventDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<Status, List<TaskSlim>> seperatedTasks)
        getting,
    required TResult Function(
            PaginatedList<TaskSlim> tasks,
            Map<Status, List<TaskSlim>> seperatedTasks,
            PaginatedList<User> users)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<Status, List<TaskSlim>> seperatedTasks)? getting,
    TResult? Function(
            PaginatedList<TaskSlim> tasks,
            Map<Status, List<TaskSlim>> seperatedTasks,
            PaginatedList<User> users)?
        loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<Status, List<TaskSlim>> seperatedTasks)? getting,
    TResult Function(
            PaginatedList<TaskSlim> tasks,
            Map<Status, List<TaskSlim>> seperatedTasks,
            PaginatedList<User> users)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksStateGetting value) getting,
    required TResult Function(_TasksStateLoaded value) loaded,
    required TResult Function(_TasksStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksStateGetting value)? getting,
    TResult? Function(_TasksStateLoaded value)? loaded,
    TResult? Function(_TasksStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksStateGetting value)? getting,
    TResult Function(_TasksStateLoaded value)? loaded,
    TResult Function(_TasksStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res, TasksState>;
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res, $Val extends TasksState>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TasksStateGettingImplCopyWith<$Res> {
  factory _$$TasksStateGettingImplCopyWith(_$TasksStateGettingImpl value,
          $Res Function(_$TasksStateGettingImpl) then) =
      __$$TasksStateGettingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<Status, List<TaskSlim>> seperatedTasks});
}

/// @nodoc
class __$$TasksStateGettingImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksStateGettingImpl>
    implements _$$TasksStateGettingImplCopyWith<$Res> {
  __$$TasksStateGettingImplCopyWithImpl(_$TasksStateGettingImpl _value,
      $Res Function(_$TasksStateGettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seperatedTasks = null,
  }) {
    return _then(_$TasksStateGettingImpl(
      seperatedTasks: null == seperatedTasks
          ? _value._seperatedTasks
          : seperatedTasks // ignore: cast_nullable_to_non_nullable
              as Map<Status, List<TaskSlim>>,
    ));
  }
}

/// @nodoc

class _$TasksStateGettingImpl implements _TasksStateGetting {
  const _$TasksStateGettingImpl(
      {required final Map<Status, List<TaskSlim>> seperatedTasks})
      : _seperatedTasks = seperatedTasks;

  final Map<Status, List<TaskSlim>> _seperatedTasks;
  @override
  Map<Status, List<TaskSlim>> get seperatedTasks {
    if (_seperatedTasks is EqualUnmodifiableMapView) return _seperatedTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_seperatedTasks);
  }

  @override
  String toString() {
    return 'TasksState.getting(seperatedTasks: $seperatedTasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksStateGettingImpl &&
            const DeepCollectionEquality()
                .equals(other._seperatedTasks, _seperatedTasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_seperatedTasks));

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksStateGettingImplCopyWith<_$TasksStateGettingImpl> get copyWith =>
      __$$TasksStateGettingImplCopyWithImpl<_$TasksStateGettingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<Status, List<TaskSlim>> seperatedTasks)
        getting,
    required TResult Function(
            PaginatedList<TaskSlim> tasks,
            Map<Status, List<TaskSlim>> seperatedTasks,
            PaginatedList<User> users)
        loaded,
    required TResult Function() error,
  }) {
    return getting(seperatedTasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<Status, List<TaskSlim>> seperatedTasks)? getting,
    TResult? Function(
            PaginatedList<TaskSlim> tasks,
            Map<Status, List<TaskSlim>> seperatedTasks,
            PaginatedList<User> users)?
        loaded,
    TResult? Function()? error,
  }) {
    return getting?.call(seperatedTasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<Status, List<TaskSlim>> seperatedTasks)? getting,
    TResult Function(
            PaginatedList<TaskSlim> tasks,
            Map<Status, List<TaskSlim>> seperatedTasks,
            PaginatedList<User> users)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting(seperatedTasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksStateGetting value) getting,
    required TResult Function(_TasksStateLoaded value) loaded,
    required TResult Function(_TasksStateError value) error,
  }) {
    return getting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksStateGetting value)? getting,
    TResult? Function(_TasksStateLoaded value)? loaded,
    TResult? Function(_TasksStateError value)? error,
  }) {
    return getting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksStateGetting value)? getting,
    TResult Function(_TasksStateLoaded value)? loaded,
    TResult Function(_TasksStateError value)? error,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting(this);
    }
    return orElse();
  }
}

abstract class _TasksStateGetting implements TasksState {
  const factory _TasksStateGetting(
          {required final Map<Status, List<TaskSlim>> seperatedTasks}) =
      _$TasksStateGettingImpl;

  Map<Status, List<TaskSlim>> get seperatedTasks;

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasksStateGettingImplCopyWith<_$TasksStateGettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksStateLoadedImplCopyWith<$Res> {
  factory _$$TasksStateLoadedImplCopyWith(_$TasksStateLoadedImpl value,
          $Res Function(_$TasksStateLoadedImpl) then) =
      __$$TasksStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PaginatedList<TaskSlim> tasks,
      Map<Status, List<TaskSlim>> seperatedTasks,
      PaginatedList<User> users});

  $PaginatedListCopyWith<TaskSlim, $Res> get tasks;
  $PaginatedListCopyWith<User, $Res> get users;
}

/// @nodoc
class __$$TasksStateLoadedImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksStateLoadedImpl>
    implements _$$TasksStateLoadedImplCopyWith<$Res> {
  __$$TasksStateLoadedImplCopyWithImpl(_$TasksStateLoadedImpl _value,
      $Res Function(_$TasksStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? seperatedTasks = null,
    Object? users = null,
  }) {
    return _then(_$TasksStateLoadedImpl(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as PaginatedList<TaskSlim>,
      seperatedTasks: null == seperatedTasks
          ? _value._seperatedTasks
          : seperatedTasks // ignore: cast_nullable_to_non_nullable
              as Map<Status, List<TaskSlim>>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as PaginatedList<User>,
    ));
  }

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedListCopyWith<TaskSlim, $Res> get tasks {
    return $PaginatedListCopyWith<TaskSlim, $Res>(_value.tasks, (value) {
      return _then(_value.copyWith(tasks: value));
    });
  }

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedListCopyWith<User, $Res> get users {
    return $PaginatedListCopyWith<User, $Res>(_value.users, (value) {
      return _then(_value.copyWith(users: value));
    });
  }
}

/// @nodoc

class _$TasksStateLoadedImpl implements _TasksStateLoaded {
  const _$TasksStateLoadedImpl(
      {required this.tasks,
      required final Map<Status, List<TaskSlim>> seperatedTasks,
      required this.users})
      : _seperatedTasks = seperatedTasks;

  @override
  final PaginatedList<TaskSlim> tasks;
  final Map<Status, List<TaskSlim>> _seperatedTasks;
  @override
  Map<Status, List<TaskSlim>> get seperatedTasks {
    if (_seperatedTasks is EqualUnmodifiableMapView) return _seperatedTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_seperatedTasks);
  }

  @override
  final PaginatedList<User> users;

  @override
  String toString() {
    return 'TasksState.loaded(tasks: $tasks, seperatedTasks: $seperatedTasks, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksStateLoadedImpl &&
            (identical(other.tasks, tasks) || other.tasks == tasks) &&
            const DeepCollectionEquality()
                .equals(other._seperatedTasks, _seperatedTasks) &&
            (identical(other.users, users) || other.users == users));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasks,
      const DeepCollectionEquality().hash(_seperatedTasks), users);

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksStateLoadedImplCopyWith<_$TasksStateLoadedImpl> get copyWith =>
      __$$TasksStateLoadedImplCopyWithImpl<_$TasksStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<Status, List<TaskSlim>> seperatedTasks)
        getting,
    required TResult Function(
            PaginatedList<TaskSlim> tasks,
            Map<Status, List<TaskSlim>> seperatedTasks,
            PaginatedList<User> users)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(tasks, seperatedTasks, users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<Status, List<TaskSlim>> seperatedTasks)? getting,
    TResult? Function(
            PaginatedList<TaskSlim> tasks,
            Map<Status, List<TaskSlim>> seperatedTasks,
            PaginatedList<User> users)?
        loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(tasks, seperatedTasks, users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<Status, List<TaskSlim>> seperatedTasks)? getting,
    TResult Function(
            PaginatedList<TaskSlim> tasks,
            Map<Status, List<TaskSlim>> seperatedTasks,
            PaginatedList<User> users)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tasks, seperatedTasks, users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksStateGetting value) getting,
    required TResult Function(_TasksStateLoaded value) loaded,
    required TResult Function(_TasksStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksStateGetting value)? getting,
    TResult? Function(_TasksStateLoaded value)? loaded,
    TResult? Function(_TasksStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksStateGetting value)? getting,
    TResult Function(_TasksStateLoaded value)? loaded,
    TResult Function(_TasksStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _TasksStateLoaded implements TasksState {
  const factory _TasksStateLoaded(
      {required final PaginatedList<TaskSlim> tasks,
      required final Map<Status, List<TaskSlim>> seperatedTasks,
      required final PaginatedList<User> users}) = _$TasksStateLoadedImpl;

  PaginatedList<TaskSlim> get tasks;
  Map<Status, List<TaskSlim>> get seperatedTasks;
  PaginatedList<User> get users;

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasksStateLoadedImplCopyWith<_$TasksStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TasksStateErrorImplCopyWith<$Res> {
  factory _$$TasksStateErrorImplCopyWith(_$TasksStateErrorImpl value,
          $Res Function(_$TasksStateErrorImpl) then) =
      __$$TasksStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksStateErrorImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksStateErrorImpl>
    implements _$$TasksStateErrorImplCopyWith<$Res> {
  __$$TasksStateErrorImplCopyWithImpl(
      _$TasksStateErrorImpl _value, $Res Function(_$TasksStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TasksStateErrorImpl implements _TasksStateError {
  const _$TasksStateErrorImpl();

  @override
  String toString() {
    return 'TasksState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TasksStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<Status, List<TaskSlim>> seperatedTasks)
        getting,
    required TResult Function(
            PaginatedList<TaskSlim> tasks,
            Map<Status, List<TaskSlim>> seperatedTasks,
            PaginatedList<User> users)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<Status, List<TaskSlim>> seperatedTasks)? getting,
    TResult? Function(
            PaginatedList<TaskSlim> tasks,
            Map<Status, List<TaskSlim>> seperatedTasks,
            PaginatedList<User> users)?
        loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<Status, List<TaskSlim>> seperatedTasks)? getting,
    TResult Function(
            PaginatedList<TaskSlim> tasks,
            Map<Status, List<TaskSlim>> seperatedTasks,
            PaginatedList<User> users)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksStateGetting value) getting,
    required TResult Function(_TasksStateLoaded value) loaded,
    required TResult Function(_TasksStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksStateGetting value)? getting,
    TResult? Function(_TasksStateLoaded value)? loaded,
    TResult? Function(_TasksStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksStateGetting value)? getting,
    TResult Function(_TasksStateLoaded value)? loaded,
    TResult Function(_TasksStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _TasksStateError implements TasksState {
  const factory _TasksStateError() = _$TasksStateErrorImpl;
}
