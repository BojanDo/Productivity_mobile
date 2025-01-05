// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskEvent {
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
    required TResult Function(_TaskEventGet value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskEventGet value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskEventGet value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskEventCopyWith<TaskEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskEvent
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
abstract class _$$TaskEventGetImplCopyWith<$Res>
    implements $TaskEventCopyWith<$Res> {
  factory _$$TaskEventGetImplCopyWith(
          _$TaskEventGetImpl value, $Res Function(_$TaskEventGetImpl) then) =
      __$$TaskEventGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$TaskEventGetImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$TaskEventGetImpl>
    implements _$$TaskEventGetImplCopyWith<$Res> {
  __$$TaskEventGetImplCopyWithImpl(
      _$TaskEventGetImpl _value, $Res Function(_$TaskEventGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$TaskEventGetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TaskEventGetImpl implements _TaskEventGet {
  const _$TaskEventGetImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'TaskEvent.get(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskEventGetImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskEventGetImplCopyWith<_$TaskEventGetImpl> get copyWith =>
      __$$TaskEventGetImplCopyWithImpl<_$TaskEventGetImpl>(this, _$identity);

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
    required TResult Function(_TaskEventGet value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskEventGet value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskEventGet value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _TaskEventGet implements TaskEvent {
  const factory _TaskEventGet({required final int id}) = _$TaskEventGetImpl;

  @override
  int get id;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskEventGetImplCopyWith<_$TaskEventGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskState {
  Task get task => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) getting,
    required TResult Function(Task task) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? getting,
    TResult? Function(Task task)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? getting,
    TResult Function(Task task)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskStateGetting value) getting,
    required TResult Function(_TaskStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskStateGetting value)? getting,
    TResult? Function(_TaskStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskStateGetting value)? getting,
    TResult Function(_TaskStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ) as $Val);
  }

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskStateGettingImplCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$TaskStateGettingImplCopyWith(_$TaskStateGettingImpl value,
          $Res Function(_$TaskStateGettingImpl) then) =
      __$$TaskStateGettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Task task});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskStateGettingImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskStateGettingImpl>
    implements _$$TaskStateGettingImplCopyWith<$Res> {
  __$$TaskStateGettingImplCopyWithImpl(_$TaskStateGettingImpl _value,
      $Res Function(_$TaskStateGettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TaskStateGettingImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$TaskStateGettingImpl implements _TaskStateGetting {
  const _$TaskStateGettingImpl({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskState.getting(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskStateGettingImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskStateGettingImplCopyWith<_$TaskStateGettingImpl> get copyWith =>
      __$$TaskStateGettingImplCopyWithImpl<_$TaskStateGettingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) getting,
    required TResult Function(Task task) loaded,
  }) {
    return getting(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? getting,
    TResult? Function(Task task)? loaded,
  }) {
    return getting?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? getting,
    TResult Function(Task task)? loaded,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskStateGetting value) getting,
    required TResult Function(_TaskStateLoaded value) loaded,
  }) {
    return getting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskStateGetting value)? getting,
    TResult? Function(_TaskStateLoaded value)? loaded,
  }) {
    return getting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskStateGetting value)? getting,
    TResult Function(_TaskStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting(this);
    }
    return orElse();
  }
}

abstract class _TaskStateGetting implements TaskState {
  const factory _TaskStateGetting({required final Task task}) =
      _$TaskStateGettingImpl;

  @override
  Task get task;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskStateGettingImplCopyWith<_$TaskStateGettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskStateLoadedImplCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$TaskStateLoadedImplCopyWith(_$TaskStateLoadedImpl value,
          $Res Function(_$TaskStateLoadedImpl) then) =
      __$$TaskStateLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Task task});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskStateLoadedImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskStateLoadedImpl>
    implements _$$TaskStateLoadedImplCopyWith<$Res> {
  __$$TaskStateLoadedImplCopyWithImpl(
      _$TaskStateLoadedImpl _value, $Res Function(_$TaskStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TaskStateLoadedImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$TaskStateLoadedImpl implements _TaskStateLoaded {
  const _$TaskStateLoadedImpl({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TaskState.loaded(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskStateLoadedImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskStateLoadedImplCopyWith<_$TaskStateLoadedImpl> get copyWith =>
      __$$TaskStateLoadedImplCopyWithImpl<_$TaskStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) getting,
    required TResult Function(Task task) loaded,
  }) {
    return loaded(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? getting,
    TResult? Function(Task task)? loaded,
  }) {
    return loaded?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? getting,
    TResult Function(Task task)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TaskStateGetting value) getting,
    required TResult Function(_TaskStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TaskStateGetting value)? getting,
    TResult? Function(_TaskStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TaskStateGetting value)? getting,
    TResult Function(_TaskStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _TaskStateLoaded implements TaskState {
  const factory _TaskStateLoaded({required final Task task}) =
      _$TaskStateLoadedImpl;

  @override
  Task get task;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskStateLoadedImplCopyWith<_$TaskStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
