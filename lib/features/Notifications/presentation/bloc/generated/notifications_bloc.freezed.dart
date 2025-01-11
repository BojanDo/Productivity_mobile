// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationsEvent {
  String? get dateFrom => throw _privateConstructorUsedError;
  String? get dateUntil => throw _privateConstructorUsedError;
  int? get projectId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? dateFrom, String? dateUntil, int? projectId)
        get,
    required TResult Function(PaginatedList<Notification> currentNotifications,
            int page, String? dateFrom, String? dateUntil, int? projectId)
        getNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? dateFrom, String? dateUntil, int? projectId)? get,
    TResult? Function(PaginatedList<Notification> currentNotifications,
            int page, String? dateFrom, String? dateUntil, int? projectId)?
        getNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? dateFrom, String? dateUntil, int? projectId)? get,
    TResult Function(PaginatedList<Notification> currentNotifications, int page,
            String? dateFrom, String? dateUntil, int? projectId)?
        getNext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationsEventGet value) get,
    required TResult Function(_NotificationsEventGetNext value) getNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationsEventGet value)? get,
    TResult? Function(_NotificationsEventGetNext value)? getNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationsEventGet value)? get,
    TResult Function(_NotificationsEventGetNext value)? getNext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationsEventCopyWith<NotificationsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res, NotificationsEvent>;
  @useResult
  $Res call({String? dateFrom, String? dateUntil, int? projectId});
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res, $Val extends NotificationsEvent>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateFrom = freezed,
    Object? dateUntil = freezed,
    Object? projectId = freezed,
  }) {
    return _then(_value.copyWith(
      dateFrom: freezed == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUntil: freezed == dateUntil
          ? _value.dateUntil
          : dateUntil // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationsEventGetImplCopyWith<$Res>
    implements $NotificationsEventCopyWith<$Res> {
  factory _$$NotificationsEventGetImplCopyWith(
          _$NotificationsEventGetImpl value,
          $Res Function(_$NotificationsEventGetImpl) then) =
      __$$NotificationsEventGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? dateFrom, String? dateUntil, int? projectId});
}

/// @nodoc
class __$$NotificationsEventGetImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res, _$NotificationsEventGetImpl>
    implements _$$NotificationsEventGetImplCopyWith<$Res> {
  __$$NotificationsEventGetImplCopyWithImpl(_$NotificationsEventGetImpl _value,
      $Res Function(_$NotificationsEventGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateFrom = freezed,
    Object? dateUntil = freezed,
    Object? projectId = freezed,
  }) {
    return _then(_$NotificationsEventGetImpl(
      dateFrom: freezed == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUntil: freezed == dateUntil
          ? _value.dateUntil
          : dateUntil // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$NotificationsEventGetImpl implements _NotificationsEventGet {
  const _$NotificationsEventGetImpl(
      {this.dateFrom, this.dateUntil, this.projectId});

  @override
  final String? dateFrom;
  @override
  final String? dateUntil;
  @override
  final int? projectId;

  @override
  String toString() {
    return 'NotificationsEvent.get(dateFrom: $dateFrom, dateUntil: $dateUntil, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsEventGetImpl &&
            (identical(other.dateFrom, dateFrom) ||
                other.dateFrom == dateFrom) &&
            (identical(other.dateUntil, dateUntil) ||
                other.dateUntil == dateUntil) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateFrom, dateUntil, projectId);

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsEventGetImplCopyWith<_$NotificationsEventGetImpl>
      get copyWith => __$$NotificationsEventGetImplCopyWithImpl<
          _$NotificationsEventGetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? dateFrom, String? dateUntil, int? projectId)
        get,
    required TResult Function(PaginatedList<Notification> currentNotifications,
            int page, String? dateFrom, String? dateUntil, int? projectId)
        getNext,
  }) {
    return get(dateFrom, dateUntil, projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? dateFrom, String? dateUntil, int? projectId)? get,
    TResult? Function(PaginatedList<Notification> currentNotifications,
            int page, String? dateFrom, String? dateUntil, int? projectId)?
        getNext,
  }) {
    return get?.call(dateFrom, dateUntil, projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? dateFrom, String? dateUntil, int? projectId)? get,
    TResult Function(PaginatedList<Notification> currentNotifications, int page,
            String? dateFrom, String? dateUntil, int? projectId)?
        getNext,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(dateFrom, dateUntil, projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationsEventGet value) get,
    required TResult Function(_NotificationsEventGetNext value) getNext,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationsEventGet value)? get,
    TResult? Function(_NotificationsEventGetNext value)? getNext,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationsEventGet value)? get,
    TResult Function(_NotificationsEventGetNext value)? getNext,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _NotificationsEventGet implements NotificationsEvent {
  const factory _NotificationsEventGet(
      {final String? dateFrom,
      final String? dateUntil,
      final int? projectId}) = _$NotificationsEventGetImpl;

  @override
  String? get dateFrom;
  @override
  String? get dateUntil;
  @override
  int? get projectId;

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationsEventGetImplCopyWith<_$NotificationsEventGetImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationsEventGetNextImplCopyWith<$Res>
    implements $NotificationsEventCopyWith<$Res> {
  factory _$$NotificationsEventGetNextImplCopyWith(
          _$NotificationsEventGetNextImpl value,
          $Res Function(_$NotificationsEventGetNextImpl) then) =
      __$$NotificationsEventGetNextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaginatedList<Notification> currentNotifications,
      int page,
      String? dateFrom,
      String? dateUntil,
      int? projectId});

  $PaginatedListCopyWith<Notification, $Res> get currentNotifications;
}

/// @nodoc
class __$$NotificationsEventGetNextImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res,
        _$NotificationsEventGetNextImpl>
    implements _$$NotificationsEventGetNextImplCopyWith<$Res> {
  __$$NotificationsEventGetNextImplCopyWithImpl(
      _$NotificationsEventGetNextImpl _value,
      $Res Function(_$NotificationsEventGetNextImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentNotifications = null,
    Object? page = null,
    Object? dateFrom = freezed,
    Object? dateUntil = freezed,
    Object? projectId = freezed,
  }) {
    return _then(_$NotificationsEventGetNextImpl(
      currentNotifications: null == currentNotifications
          ? _value.currentNotifications
          : currentNotifications // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Notification>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      dateFrom: freezed == dateFrom
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUntil: freezed == dateUntil
          ? _value.dateUntil
          : dateUntil // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedListCopyWith<Notification, $Res> get currentNotifications {
    return $PaginatedListCopyWith<Notification, $Res>(
        _value.currentNotifications, (value) {
      return _then(_value.copyWith(currentNotifications: value));
    });
  }
}

/// @nodoc

class _$NotificationsEventGetNextImpl implements _NotificationsEventGetNext {
  const _$NotificationsEventGetNextImpl(
      {required this.currentNotifications,
      required this.page,
      this.dateFrom,
      this.dateUntil,
      this.projectId});

  @override
  final PaginatedList<Notification> currentNotifications;
  @override
  final int page;
  @override
  final String? dateFrom;
  @override
  final String? dateUntil;
  @override
  final int? projectId;

  @override
  String toString() {
    return 'NotificationsEvent.getNext(currentNotifications: $currentNotifications, page: $page, dateFrom: $dateFrom, dateUntil: $dateUntil, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsEventGetNextImpl &&
            (identical(other.currentNotifications, currentNotifications) ||
                other.currentNotifications == currentNotifications) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.dateFrom, dateFrom) ||
                other.dateFrom == dateFrom) &&
            (identical(other.dateUntil, dateUntil) ||
                other.dateUntil == dateUntil) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentNotifications, page, dateFrom, dateUntil, projectId);

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsEventGetNextImplCopyWith<_$NotificationsEventGetNextImpl>
      get copyWith => __$$NotificationsEventGetNextImplCopyWithImpl<
          _$NotificationsEventGetNextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? dateFrom, String? dateUntil, int? projectId)
        get,
    required TResult Function(PaginatedList<Notification> currentNotifications,
            int page, String? dateFrom, String? dateUntil, int? projectId)
        getNext,
  }) {
    return getNext(currentNotifications, page, dateFrom, dateUntil, projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? dateFrom, String? dateUntil, int? projectId)? get,
    TResult? Function(PaginatedList<Notification> currentNotifications,
            int page, String? dateFrom, String? dateUntil, int? projectId)?
        getNext,
  }) {
    return getNext?.call(
        currentNotifications, page, dateFrom, dateUntil, projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? dateFrom, String? dateUntil, int? projectId)? get,
    TResult Function(PaginatedList<Notification> currentNotifications, int page,
            String? dateFrom, String? dateUntil, int? projectId)?
        getNext,
    required TResult orElse(),
  }) {
    if (getNext != null) {
      return getNext(
          currentNotifications, page, dateFrom, dateUntil, projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationsEventGet value) get,
    required TResult Function(_NotificationsEventGetNext value) getNext,
  }) {
    return getNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationsEventGet value)? get,
    TResult? Function(_NotificationsEventGetNext value)? getNext,
  }) {
    return getNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationsEventGet value)? get,
    TResult Function(_NotificationsEventGetNext value)? getNext,
    required TResult orElse(),
  }) {
    if (getNext != null) {
      return getNext(this);
    }
    return orElse();
  }
}

abstract class _NotificationsEventGetNext implements NotificationsEvent {
  const factory _NotificationsEventGetNext(
      {required final PaginatedList<Notification> currentNotifications,
      required final int page,
      final String? dateFrom,
      final String? dateUntil,
      final int? projectId}) = _$NotificationsEventGetNextImpl;

  PaginatedList<Notification> get currentNotifications;
  int get page;
  @override
  String? get dateFrom;
  @override
  String? get dateUntil;
  @override
  int? get projectId;

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationsEventGetNextImplCopyWith<_$NotificationsEventGetNextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginatedList<Notification> notifications)
        getting,
    required TResult Function(
            PaginatedList<Notification> notifications, int page)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<Notification> notifications)? getting,
    TResult? Function(PaginatedList<Notification> notifications, int page)?
        loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<Notification> notifications)? getting,
    TResult Function(PaginatedList<Notification> notifications, int page)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationsStateGetting value) getting,
    required TResult Function(_NotificationsStateLoaded value) loaded,
    required TResult Function(_NotificationsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationsStateGetting value)? getting,
    TResult? Function(_NotificationsStateLoaded value)? loaded,
    TResult? Function(_NotificationsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationsStateGetting value)? getting,
    TResult Function(_NotificationsStateLoaded value)? loaded,
    TResult Function(_NotificationsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res, NotificationsState>;
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res, $Val extends NotificationsState>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotificationsStateGettingImplCopyWith<$Res> {
  factory _$$NotificationsStateGettingImplCopyWith(
          _$NotificationsStateGettingImpl value,
          $Res Function(_$NotificationsStateGettingImpl) then) =
      __$$NotificationsStateGettingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaginatedList<Notification> notifications});

  $PaginatedListCopyWith<Notification, $Res> get notifications;
}

/// @nodoc
class __$$NotificationsStateGettingImplCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res,
        _$NotificationsStateGettingImpl>
    implements _$$NotificationsStateGettingImplCopyWith<$Res> {
  __$$NotificationsStateGettingImplCopyWithImpl(
      _$NotificationsStateGettingImpl _value,
      $Res Function(_$NotificationsStateGettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_$NotificationsStateGettingImpl(
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Notification>,
    ));
  }

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedListCopyWith<Notification, $Res> get notifications {
    return $PaginatedListCopyWith<Notification, $Res>(_value.notifications,
        (value) {
      return _then(_value.copyWith(notifications: value));
    });
  }
}

/// @nodoc

class _$NotificationsStateGettingImpl implements _NotificationsStateGetting {
  const _$NotificationsStateGettingImpl({required this.notifications});

  @override
  final PaginatedList<Notification> notifications;

  @override
  String toString() {
    return 'NotificationsState.getting(notifications: $notifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsStateGettingImpl &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notifications);

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsStateGettingImplCopyWith<_$NotificationsStateGettingImpl>
      get copyWith => __$$NotificationsStateGettingImplCopyWithImpl<
          _$NotificationsStateGettingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginatedList<Notification> notifications)
        getting,
    required TResult Function(
            PaginatedList<Notification> notifications, int page)
        loaded,
    required TResult Function() error,
  }) {
    return getting(notifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<Notification> notifications)? getting,
    TResult? Function(PaginatedList<Notification> notifications, int page)?
        loaded,
    TResult? Function()? error,
  }) {
    return getting?.call(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<Notification> notifications)? getting,
    TResult Function(PaginatedList<Notification> notifications, int page)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationsStateGetting value) getting,
    required TResult Function(_NotificationsStateLoaded value) loaded,
    required TResult Function(_NotificationsStateError value) error,
  }) {
    return getting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationsStateGetting value)? getting,
    TResult? Function(_NotificationsStateLoaded value)? loaded,
    TResult? Function(_NotificationsStateError value)? error,
  }) {
    return getting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationsStateGetting value)? getting,
    TResult Function(_NotificationsStateLoaded value)? loaded,
    TResult Function(_NotificationsStateError value)? error,
    required TResult orElse(),
  }) {
    if (getting != null) {
      return getting(this);
    }
    return orElse();
  }
}

abstract class _NotificationsStateGetting implements NotificationsState {
  const factory _NotificationsStateGetting(
          {required final PaginatedList<Notification> notifications}) =
      _$NotificationsStateGettingImpl;

  PaginatedList<Notification> get notifications;

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationsStateGettingImplCopyWith<_$NotificationsStateGettingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationsStateLoadedImplCopyWith<$Res> {
  factory _$$NotificationsStateLoadedImplCopyWith(
          _$NotificationsStateLoadedImpl value,
          $Res Function(_$NotificationsStateLoadedImpl) then) =
      __$$NotificationsStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaginatedList<Notification> notifications, int page});

  $PaginatedListCopyWith<Notification, $Res> get notifications;
}

/// @nodoc
class __$$NotificationsStateLoadedImplCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res,
        _$NotificationsStateLoadedImpl>
    implements _$$NotificationsStateLoadedImplCopyWith<$Res> {
  __$$NotificationsStateLoadedImplCopyWithImpl(
      _$NotificationsStateLoadedImpl _value,
      $Res Function(_$NotificationsStateLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? page = null,
  }) {
    return _then(_$NotificationsStateLoadedImpl(
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Notification>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedListCopyWith<Notification, $Res> get notifications {
    return $PaginatedListCopyWith<Notification, $Res>(_value.notifications,
        (value) {
      return _then(_value.copyWith(notifications: value));
    });
  }
}

/// @nodoc

class _$NotificationsStateLoadedImpl implements _NotificationsStateLoaded {
  const _$NotificationsStateLoadedImpl(
      {required this.notifications, required this.page});

  @override
  final PaginatedList<Notification> notifications;
  @override
  final int page;

  @override
  String toString() {
    return 'NotificationsState.loaded(notifications: $notifications, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsStateLoadedImpl &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notifications, page);

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsStateLoadedImplCopyWith<_$NotificationsStateLoadedImpl>
      get copyWith => __$$NotificationsStateLoadedImplCopyWithImpl<
          _$NotificationsStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginatedList<Notification> notifications)
        getting,
    required TResult Function(
            PaginatedList<Notification> notifications, int page)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(notifications, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<Notification> notifications)? getting,
    TResult? Function(PaginatedList<Notification> notifications, int page)?
        loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(notifications, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<Notification> notifications)? getting,
    TResult Function(PaginatedList<Notification> notifications, int page)?
        loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(notifications, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotificationsStateGetting value) getting,
    required TResult Function(_NotificationsStateLoaded value) loaded,
    required TResult Function(_NotificationsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationsStateGetting value)? getting,
    TResult? Function(_NotificationsStateLoaded value)? loaded,
    TResult? Function(_NotificationsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationsStateGetting value)? getting,
    TResult Function(_NotificationsStateLoaded value)? loaded,
    TResult Function(_NotificationsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _NotificationsStateLoaded implements NotificationsState {
  const factory _NotificationsStateLoaded(
      {required final PaginatedList<Notification> notifications,
      required final int page}) = _$NotificationsStateLoadedImpl;

  PaginatedList<Notification> get notifications;
  int get page;

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationsStateLoadedImplCopyWith<_$NotificationsStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotificationsStateErrorImplCopyWith<$Res> {
  factory _$$NotificationsStateErrorImplCopyWith(
          _$NotificationsStateErrorImpl value,
          $Res Function(_$NotificationsStateErrorImpl) then) =
      __$$NotificationsStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotificationsStateErrorImplCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res,
        _$NotificationsStateErrorImpl>
    implements _$$NotificationsStateErrorImplCopyWith<$Res> {
  __$$NotificationsStateErrorImplCopyWithImpl(
      _$NotificationsStateErrorImpl _value,
      $Res Function(_$NotificationsStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotificationsStateErrorImpl implements _NotificationsStateError {
  const _$NotificationsStateErrorImpl();

  @override
  String toString() {
    return 'NotificationsState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaginatedList<Notification> notifications)
        getting,
    required TResult Function(
            PaginatedList<Notification> notifications, int page)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaginatedList<Notification> notifications)? getting,
    TResult? Function(PaginatedList<Notification> notifications, int page)?
        loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaginatedList<Notification> notifications)? getting,
    TResult Function(PaginatedList<Notification> notifications, int page)?
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
    required TResult Function(_NotificationsStateGetting value) getting,
    required TResult Function(_NotificationsStateLoaded value) loaded,
    required TResult Function(_NotificationsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotificationsStateGetting value)? getting,
    TResult? Function(_NotificationsStateLoaded value)? loaded,
    TResult? Function(_NotificationsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotificationsStateGetting value)? getting,
    TResult Function(_NotificationsStateLoaded value)? loaded,
    TResult Function(_NotificationsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _NotificationsStateError implements NotificationsState {
  const factory _NotificationsStateError() = _$NotificationsStateErrorImpl;
}
