// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../projects_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectsEventGet value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProjectsEventGet value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectsEventGet value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsEventCopyWith<$Res> {
  factory $ProjectsEventCopyWith(
          ProjectsEvent value, $Res Function(ProjectsEvent) then) =
      _$ProjectsEventCopyWithImpl<$Res, ProjectsEvent>;
}

/// @nodoc
class _$ProjectsEventCopyWithImpl<$Res, $Val extends ProjectsEvent>
    implements $ProjectsEventCopyWith<$Res> {
  _$ProjectsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProjectsEventGetImplCopyWith<$Res> {
  factory _$$ProjectsEventGetImplCopyWith(_$ProjectsEventGetImpl value,
          $Res Function(_$ProjectsEventGetImpl) then) =
      __$$ProjectsEventGetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectsEventGetImplCopyWithImpl<$Res>
    extends _$ProjectsEventCopyWithImpl<$Res, _$ProjectsEventGetImpl>
    implements _$$ProjectsEventGetImplCopyWith<$Res> {
  __$$ProjectsEventGetImplCopyWithImpl(_$ProjectsEventGetImpl _value,
      $Res Function(_$ProjectsEventGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProjectsEventGetImpl implements _ProjectsEventGet {
  const _$ProjectsEventGetImpl();

  @override
  String toString() {
    return 'ProjectsEvent.get()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProjectsEventGetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
  }) {
    return get();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
  }) {
    return get?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectsEventGet value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProjectsEventGet value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectsEventGet value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _ProjectsEventGet implements ProjectsEvent {
  const factory _ProjectsEventGet() = _$ProjectsEventGetImpl;
}

/// @nodoc
mixin _$ProjectsState {
  PaginatedList<Project> get projects => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginatedList<Project> projects) getting,
    required TResult Function(PaginatedList<Project> projects) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<Project> projects)? getting,
    TResult? Function(PaginatedList<Project> projects)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<Project> projects)? getting,
    TResult Function(PaginatedList<Project> projects)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectsStateGetting value) getting,
    required TResult Function(_ProjectsStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProjectsStateGetting value)? getting,
    TResult? Function(_ProjectsStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectsStateGetting value)? getting,
    TResult Function(_ProjectsStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectsStateCopyWith<ProjectsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsStateCopyWith<$Res> {
  factory $ProjectsStateCopyWith(
          ProjectsState value, $Res Function(ProjectsState) then) =
      _$ProjectsStateCopyWithImpl<$Res, ProjectsState>;
  @useResult
  $Res call({PaginatedList<Project> projects});

  $PaginatedListCopyWith<Project, $Res> get projects;
}

/// @nodoc
class _$ProjectsStateCopyWithImpl<$Res, $Val extends ProjectsState>
    implements $ProjectsStateCopyWith<$Res> {
  _$ProjectsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
  }) {
    return _then(_value.copyWith(
      projects: null == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Project>,
    ) as $Val);
  }

  /// Create a copy of ProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedListCopyWith<Project, $Res> get projects {
    return $PaginatedListCopyWith<Project, $Res>(_value.projects, (value) {
      return _then(_value.copyWith(projects: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectsStateGettingImplCopyWith<$Res>
    implements $ProjectsStateCopyWith<$Res> {
  factory _$$ProjectsStateGettingImplCopyWith(_$ProjectsStateGettingImpl value,
          $Res Function(_$ProjectsStateGettingImpl) then) =
      __$$ProjectsStateGettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaginatedList<Project> projects});

  @override
  $PaginatedListCopyWith<Project, $Res> get projects;
}

/// @nodoc
class __$$ProjectsStateGettingImplCopyWithImpl<$Res>
    extends _$ProjectsStateCopyWithImpl<$Res, _$ProjectsStateGettingImpl>
    implements _$$ProjectsStateGettingImplCopyWith<$Res> {
  __$$ProjectsStateGettingImplCopyWithImpl(_$ProjectsStateGettingImpl _value,
      $Res Function(_$ProjectsStateGettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
  }) {
    return _then(_$ProjectsStateGettingImpl(
      projects: null == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Project>,
    ));
  }
}

/// @nodoc

class _$ProjectsStateGettingImpl implements _ProjectsStateGetting {
  const _$ProjectsStateGettingImpl({required this.projects});

  @override
  final PaginatedList<Project> projects;

  @override
  String toString() {
    return 'ProjectsState.getting(projects: $projects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsStateGettingImpl &&
            (identical(other.projects, projects) ||
                other.projects == projects));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projects);

  /// Create a copy of ProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectsStateGettingImplCopyWith<_$ProjectsStateGettingImpl>
      get copyWith =>
          __$$ProjectsStateGettingImplCopyWithImpl<_$ProjectsStateGettingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginatedList<Project> projects) getting,
    required TResult Function(PaginatedList<Project> projects) loaded,
  }) {
    return getting(projects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<Project> projects)? getting,
    TResult? Function(PaginatedList<Project> projects)? loaded,
  }) {
    return getting?.call(projects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<Project> projects)? getting,
    TResult Function(PaginatedList<Project> projects)? loaded,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectsStateGetting value) getting,
    required TResult Function(_ProjectsStateLoaded value) loaded,
  }) {
    return getting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProjectsStateGetting value)? getting,
    TResult? Function(_ProjectsStateLoaded value)? loaded,
  }) {
    return getting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectsStateGetting value)? getting,
    TResult Function(_ProjectsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting(this);
    }
    return orElse();
  }
}

abstract class _ProjectsStateGetting implements ProjectsState {
  const factory _ProjectsStateGetting(
          {required final PaginatedList<Project> projects}) =
      _$ProjectsStateGettingImpl;

  @override
  PaginatedList<Project> get projects;

  /// Create a copy of ProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectsStateGettingImplCopyWith<_$ProjectsStateGettingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectsStateLoadedImplCopyWith<$Res>
    implements $ProjectsStateCopyWith<$Res> {
  factory _$$ProjectsStateLoadedImplCopyWith(_$ProjectsStateLoadedImpl value,
          $Res Function(_$ProjectsStateLoadedImpl) then) =
      __$$ProjectsStateLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaginatedList<Project> projects});

  @override
  $PaginatedListCopyWith<Project, $Res> get projects;
}

/// @nodoc
class __$$ProjectsStateLoadedImplCopyWithImpl<$Res>
    extends _$ProjectsStateCopyWithImpl<$Res, _$ProjectsStateLoadedImpl>
    implements _$$ProjectsStateLoadedImplCopyWith<$Res> {
  __$$ProjectsStateLoadedImplCopyWithImpl(_$ProjectsStateLoadedImpl _value,
      $Res Function(_$ProjectsStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
  }) {
    return _then(_$ProjectsStateLoadedImpl(
      projects: null == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Project>,
    ));
  }
}

/// @nodoc

class _$ProjectsStateLoadedImpl implements _ProjectsStateLoaded {
  const _$ProjectsStateLoadedImpl({required this.projects});

  @override
  final PaginatedList<Project> projects;

  @override
  String toString() {
    return 'ProjectsState.loaded(projects: $projects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsStateLoadedImpl &&
            (identical(other.projects, projects) ||
                other.projects == projects));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projects);

  /// Create a copy of ProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectsStateLoadedImplCopyWith<_$ProjectsStateLoadedImpl> get copyWith =>
      __$$ProjectsStateLoadedImplCopyWithImpl<_$ProjectsStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginatedList<Project> projects) getting,
    required TResult Function(PaginatedList<Project> projects) loaded,
  }) {
    return loaded(projects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<Project> projects)? getting,
    TResult? Function(PaginatedList<Project> projects)? loaded,
  }) {
    return loaded?.call(projects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<Project> projects)? getting,
    TResult Function(PaginatedList<Project> projects)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectsStateGetting value) getting,
    required TResult Function(_ProjectsStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProjectsStateGetting value)? getting,
    TResult? Function(_ProjectsStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectsStateGetting value)? getting,
    TResult Function(_ProjectsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ProjectsStateLoaded implements ProjectsState {
  const factory _ProjectsStateLoaded(
          {required final PaginatedList<Project> projects}) =
      _$ProjectsStateLoadedImpl;

  @override
  PaginatedList<Project> get projects;

  /// Create a copy of ProjectsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectsStateLoadedImplCopyWith<_$ProjectsStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
