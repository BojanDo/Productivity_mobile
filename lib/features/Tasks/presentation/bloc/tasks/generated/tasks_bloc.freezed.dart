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
  List<int>? get projects => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  List<int>? get assigned => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int>? projects, String? status,
            String? label, List<int>? assigned)
        get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int>? projects, String? status, String? label,
            List<int>? assigned)?
        get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int>? projects, String? status, String? label,
            List<int>? assigned)?
        get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksEventGet value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksEventGet value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksEventGet value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TasksEventCopyWith<TasksEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res, TasksEvent>;
  @useResult
  $Res call(
      {List<int>? projects,
      String? status,
      String? label,
      List<int>? assigned});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = freezed,
    Object? status = freezed,
    Object? label = freezed,
    Object? assigned = freezed,
  }) {
    return _then(_value.copyWith(
      projects: freezed == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      assigned: freezed == assigned
          ? _value.assigned
          : assigned // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksEventGetImplCopyWith<$Res>
    implements $TasksEventCopyWith<$Res> {
  factory _$$TasksEventGetImplCopyWith(
          _$TasksEventGetImpl value, $Res Function(_$TasksEventGetImpl) then) =
      __$$TasksEventGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int>? projects,
      String? status,
      String? label,
      List<int>? assigned});
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
    Object? projects = freezed,
    Object? status = freezed,
    Object? label = freezed,
    Object? assigned = freezed,
  }) {
    return _then(_$TasksEventGetImpl(
      projects: freezed == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      assigned: freezed == assigned
          ? _value._assigned
          : assigned // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$TasksEventGetImpl implements _TasksEventGet {
  const _$TasksEventGetImpl(
      {final List<int>? projects,
      this.status,
      this.label,
      final List<int>? assigned})
      : _projects = projects,
        _assigned = assigned;

  final List<int>? _projects;
  @override
  List<int>? get projects {
    final value = _projects;
    if (value == null) return null;
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? status;
  @override
  final String? label;
  final List<int>? _assigned;
  @override
  List<int>? get assigned {
    final value = _assigned;
    if (value == null) return null;
    if (_assigned is EqualUnmodifiableListView) return _assigned;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TasksEvent.get(projects: $projects, status: $status, label: $label, assigned: $assigned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksEventGetImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other._assigned, _assigned));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_projects),
      status,
      label,
      const DeepCollectionEquality().hash(_assigned));

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
    required TResult Function(List<int>? projects, String? status,
            String? label, List<int>? assigned)
        get,
  }) {
    return get(projects, status, label, assigned);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int>? projects, String? status, String? label,
            List<int>? assigned)?
        get,
  }) {
    return get?.call(projects, status, label, assigned);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int>? projects, String? status, String? label,
            List<int>? assigned)?
        get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(projects, status, label, assigned);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TasksEventGet value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TasksEventGet value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TasksEventGet value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _TasksEventGet implements TasksEvent {
  const factory _TasksEventGet(
      {final List<int>? projects,
      final String? status,
      final String? label,
      final List<int>? assigned}) = _$TasksEventGetImpl;

  @override
  List<int>? get projects;
  @override
  String? get status;
  @override
  String? get label;
  @override
  List<int>? get assigned;

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasksEventGetImplCopyWith<_$TasksEventGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginatedList<TaskSlim> tasks) getting,
    required TResult Function(PaginatedList<TaskSlim> tasks) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<TaskSlim> tasks)? getting,
    TResult? Function(PaginatedList<TaskSlim> tasks)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<TaskSlim> tasks)? getting,
    TResult Function(PaginatedList<TaskSlim> tasks)? loaded,
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
  $Res call({PaginatedList<TaskSlim> tasks});

  $PaginatedListCopyWith<TaskSlim, $Res> get tasks;
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
    Object? tasks = null,
  }) {
    return _then(_$TasksStateGettingImpl(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as PaginatedList<TaskSlim>,
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
}

/// @nodoc

class _$TasksStateGettingImpl implements _TasksStateGetting {
  const _$TasksStateGettingImpl({required this.tasks});

  @override
  final PaginatedList<TaskSlim> tasks;

  @override
  String toString() {
    return 'TasksState.getting(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksStateGettingImpl &&
            (identical(other.tasks, tasks) || other.tasks == tasks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasks);

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
    required TResult Function(PaginatedList<TaskSlim> tasks) getting,
    required TResult Function(PaginatedList<TaskSlim> tasks) loaded,
    required TResult Function() error,
  }) {
    return getting(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<TaskSlim> tasks)? getting,
    TResult? Function(PaginatedList<TaskSlim> tasks)? loaded,
    TResult? Function()? error,
  }) {
    return getting?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<TaskSlim> tasks)? getting,
    TResult Function(PaginatedList<TaskSlim> tasks)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting(tasks);
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
      {required final PaginatedList<TaskSlim> tasks}) = _$TasksStateGettingImpl;

  PaginatedList<TaskSlim> get tasks;

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
  $Res call({PaginatedList<TaskSlim> tasks});

  $PaginatedListCopyWith<TaskSlim, $Res> get tasks;
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
  }) {
    return _then(_$TasksStateLoadedImpl(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as PaginatedList<TaskSlim>,
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
}

/// @nodoc

class _$TasksStateLoadedImpl implements _TasksStateLoaded {
  const _$TasksStateLoadedImpl({required this.tasks});

  @override
  final PaginatedList<TaskSlim> tasks;

  @override
  String toString() {
    return 'TasksState.loaded(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksStateLoadedImpl &&
            (identical(other.tasks, tasks) || other.tasks == tasks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasks);

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
    required TResult Function(PaginatedList<TaskSlim> tasks) getting,
    required TResult Function(PaginatedList<TaskSlim> tasks) loaded,
    required TResult Function() error,
  }) {
    return loaded(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<TaskSlim> tasks)? getting,
    TResult? Function(PaginatedList<TaskSlim> tasks)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<TaskSlim> tasks)? getting,
    TResult Function(PaginatedList<TaskSlim> tasks)? loaded,
    TResult Function()? error,
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
      {required final PaginatedList<TaskSlim> tasks}) = _$TasksStateLoadedImpl;

  PaginatedList<TaskSlim> get tasks;

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
    required TResult Function(PaginatedList<TaskSlim> tasks) getting,
    required TResult Function(PaginatedList<TaskSlim> tasks) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<TaskSlim> tasks)? getting,
    TResult? Function(PaginatedList<TaskSlim> tasks)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<TaskSlim> tasks)? getting,
    TResult Function(PaginatedList<TaskSlim> tasks)? loaded,
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
