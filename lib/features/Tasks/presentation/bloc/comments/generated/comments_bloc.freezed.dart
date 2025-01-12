// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../comments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommentsEvent {
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
    required TResult Function(_CommentsEventGet value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsEventGet value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsEventGet value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsEventCopyWith<$Res> {
  factory $CommentsEventCopyWith(
          CommentsEvent value, $Res Function(CommentsEvent) then) =
      _$CommentsEventCopyWithImpl<$Res, CommentsEvent>;
}

/// @nodoc
class _$CommentsEventCopyWithImpl<$Res, $Val extends CommentsEvent>
    implements $CommentsEventCopyWith<$Res> {
  _$CommentsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CommentsEventGetImplCopyWith<$Res> {
  factory _$$CommentsEventGetImplCopyWith(_$CommentsEventGetImpl value,
          $Res Function(_$CommentsEventGetImpl) then) =
      __$$CommentsEventGetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CommentsEventGetImplCopyWithImpl<$Res>
    extends _$CommentsEventCopyWithImpl<$Res, _$CommentsEventGetImpl>
    implements _$$CommentsEventGetImplCopyWith<$Res> {
  __$$CommentsEventGetImplCopyWithImpl(_$CommentsEventGetImpl _value,
      $Res Function(_$CommentsEventGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CommentsEventGetImpl implements _CommentsEventGet {
  const _$CommentsEventGetImpl();

  @override
  String toString() {
    return 'CommentsEvent.get()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CommentsEventGetImpl);
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
    required TResult Function(_CommentsEventGet value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsEventGet value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsEventGet value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _CommentsEventGet implements CommentsEvent {
  const factory _CommentsEventGet() = _$CommentsEventGetImpl;
}

/// @nodoc
mixin _$CommentsState {
  PaginatedList<Notification> get comments =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginatedList<Notification> comments) getting,
    required TResult Function(PaginatedList<Notification> comments) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<Notification> comments)? getting,
    TResult? Function(PaginatedList<Notification> comments)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<Notification> comments)? getting,
    TResult Function(PaginatedList<Notification> comments)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsStateGetting value) getting,
    required TResult Function(_CommentsStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsStateGetting value)? getting,
    TResult? Function(_CommentsStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsStateGetting value)? getting,
    TResult Function(_CommentsStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CommentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsStateCopyWith<CommentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsStateCopyWith<$Res> {
  factory $CommentsStateCopyWith(
          CommentsState value, $Res Function(CommentsState) then) =
      _$CommentsStateCopyWithImpl<$Res, CommentsState>;
  @useResult
  $Res call({PaginatedList<Notification> comments});

  $PaginatedListCopyWith<Notification, $Res> get comments;
}

/// @nodoc
class _$CommentsStateCopyWithImpl<$Res, $Val extends CommentsState>
    implements $CommentsStateCopyWith<$Res> {
  _$CommentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Notification>,
    ) as $Val);
  }

  /// Create a copy of CommentsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedListCopyWith<Notification, $Res> get comments {
    return $PaginatedListCopyWith<Notification, $Res>(_value.comments, (value) {
      return _then(_value.copyWith(comments: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentsStateGettingImplCopyWith<$Res>
    implements $CommentsStateCopyWith<$Res> {
  factory _$$CommentsStateGettingImplCopyWith(_$CommentsStateGettingImpl value,
          $Res Function(_$CommentsStateGettingImpl) then) =
      __$$CommentsStateGettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaginatedList<Notification> comments});

  @override
  $PaginatedListCopyWith<Notification, $Res> get comments;
}

/// @nodoc
class __$$CommentsStateGettingImplCopyWithImpl<$Res>
    extends _$CommentsStateCopyWithImpl<$Res, _$CommentsStateGettingImpl>
    implements _$$CommentsStateGettingImplCopyWith<$Res> {
  __$$CommentsStateGettingImplCopyWithImpl(_$CommentsStateGettingImpl _value,
      $Res Function(_$CommentsStateGettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_$CommentsStateGettingImpl(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Notification>,
    ));
  }
}

/// @nodoc

class _$CommentsStateGettingImpl implements _CommentsStateGetting {
  const _$CommentsStateGettingImpl({required this.comments});

  @override
  final PaginatedList<Notification> comments;

  @override
  String toString() {
    return 'CommentsState.getting(comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsStateGettingImpl &&
            (identical(other.comments, comments) ||
                other.comments == comments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comments);

  /// Create a copy of CommentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsStateGettingImplCopyWith<_$CommentsStateGettingImpl>
      get copyWith =>
          __$$CommentsStateGettingImplCopyWithImpl<_$CommentsStateGettingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginatedList<Notification> comments) getting,
    required TResult Function(PaginatedList<Notification> comments) loaded,
  }) {
    return getting(comments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<Notification> comments)? getting,
    TResult? Function(PaginatedList<Notification> comments)? loaded,
  }) {
    return getting?.call(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<Notification> comments)? getting,
    TResult Function(PaginatedList<Notification> comments)? loaded,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsStateGetting value) getting,
    required TResult Function(_CommentsStateLoaded value) loaded,
  }) {
    return getting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsStateGetting value)? getting,
    TResult? Function(_CommentsStateLoaded value)? loaded,
  }) {
    return getting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsStateGetting value)? getting,
    TResult Function(_CommentsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting(this);
    }
    return orElse();
  }
}

abstract class _CommentsStateGetting implements CommentsState {
  const factory _CommentsStateGetting(
          {required final PaginatedList<Notification> comments}) =
      _$CommentsStateGettingImpl;

  @override
  PaginatedList<Notification> get comments;

  /// Create a copy of CommentsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsStateGettingImplCopyWith<_$CommentsStateGettingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommentsStateLoadedImplCopyWith<$Res>
    implements $CommentsStateCopyWith<$Res> {
  factory _$$CommentsStateLoadedImplCopyWith(_$CommentsStateLoadedImpl value,
          $Res Function(_$CommentsStateLoadedImpl) then) =
      __$$CommentsStateLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaginatedList<Notification> comments});

  @override
  $PaginatedListCopyWith<Notification, $Res> get comments;
}

/// @nodoc
class __$$CommentsStateLoadedImplCopyWithImpl<$Res>
    extends _$CommentsStateCopyWithImpl<$Res, _$CommentsStateLoadedImpl>
    implements _$$CommentsStateLoadedImplCopyWith<$Res> {
  __$$CommentsStateLoadedImplCopyWithImpl(_$CommentsStateLoadedImpl _value,
      $Res Function(_$CommentsStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_$CommentsStateLoadedImpl(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Notification>,
    ));
  }
}

/// @nodoc

class _$CommentsStateLoadedImpl implements _CommentsStateLoaded {
  const _$CommentsStateLoadedImpl({required this.comments});

  @override
  final PaginatedList<Notification> comments;

  @override
  String toString() {
    return 'CommentsState.loaded(comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsStateLoadedImpl &&
            (identical(other.comments, comments) ||
                other.comments == comments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comments);

  /// Create a copy of CommentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsStateLoadedImplCopyWith<_$CommentsStateLoadedImpl> get copyWith =>
      __$$CommentsStateLoadedImplCopyWithImpl<_$CommentsStateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginatedList<Notification> comments) getting,
    required TResult Function(PaginatedList<Notification> comments) loaded,
  }) {
    return loaded(comments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<Notification> comments)? getting,
    TResult? Function(PaginatedList<Notification> comments)? loaded,
  }) {
    return loaded?.call(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<Notification> comments)? getting,
    TResult Function(PaginatedList<Notification> comments)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CommentsStateGetting value) getting,
    required TResult Function(_CommentsStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CommentsStateGetting value)? getting,
    TResult? Function(_CommentsStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CommentsStateGetting value)? getting,
    TResult Function(_CommentsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CommentsStateLoaded implements CommentsState {
  const factory _CommentsStateLoaded(
          {required final PaginatedList<Notification> comments}) =
      _$CommentsStateLoadedImpl;

  @override
  PaginatedList<Notification> get comments;

  /// Create a copy of CommentsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsStateLoadedImplCopyWith<_$CommentsStateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
