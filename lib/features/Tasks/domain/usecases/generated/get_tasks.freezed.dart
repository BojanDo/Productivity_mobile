// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_tasks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetTasksParams _$GetTasksParamsFromJson(Map<String, dynamic> json) {
  return _GetTasksParams.fromJson(json);
}

/// @nodoc
mixin _$GetTasksParams {
  List<int>? get projects => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  List<int>? get assigned => throw _privateConstructorUsedError;

  /// Serializes this GetTasksParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetTasksParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetTasksParamsCopyWith<GetTasksParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTasksParamsCopyWith<$Res> {
  factory $GetTasksParamsCopyWith(
          GetTasksParams value, $Res Function(GetTasksParams) then) =
      _$GetTasksParamsCopyWithImpl<$Res, GetTasksParams>;
  @useResult
  $Res call(
      {List<int>? projects,
      String? status,
      String? label,
      List<int>? assigned});
}

/// @nodoc
class _$GetTasksParamsCopyWithImpl<$Res, $Val extends GetTasksParams>
    implements $GetTasksParamsCopyWith<$Res> {
  _$GetTasksParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetTasksParams
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
abstract class _$$GetTasksParamsImplCopyWith<$Res>
    implements $GetTasksParamsCopyWith<$Res> {
  factory _$$GetTasksParamsImplCopyWith(_$GetTasksParamsImpl value,
          $Res Function(_$GetTasksParamsImpl) then) =
      __$$GetTasksParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int>? projects,
      String? status,
      String? label,
      List<int>? assigned});
}

/// @nodoc
class __$$GetTasksParamsImplCopyWithImpl<$Res>
    extends _$GetTasksParamsCopyWithImpl<$Res, _$GetTasksParamsImpl>
    implements _$$GetTasksParamsImplCopyWith<$Res> {
  __$$GetTasksParamsImplCopyWithImpl(
      _$GetTasksParamsImpl _value, $Res Function(_$GetTasksParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetTasksParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = freezed,
    Object? status = freezed,
    Object? label = freezed,
    Object? assigned = freezed,
  }) {
    return _then(_$GetTasksParamsImpl(
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
@JsonSerializable()
class _$GetTasksParamsImpl implements _GetTasksParams {
  const _$GetTasksParamsImpl(
      {final List<int>? projects,
      this.status,
      this.label,
      final List<int>? assigned})
      : _projects = projects,
        _assigned = assigned;

  factory _$GetTasksParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetTasksParamsImplFromJson(json);

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
    return 'GetTasksParams(projects: $projects, status: $status, label: $label, assigned: $assigned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTasksParamsImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other._assigned, _assigned));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_projects),
      status,
      label,
      const DeepCollectionEquality().hash(_assigned));

  /// Create a copy of GetTasksParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTasksParamsImplCopyWith<_$GetTasksParamsImpl> get copyWith =>
      __$$GetTasksParamsImplCopyWithImpl<_$GetTasksParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTasksParamsImplToJson(
      this,
    );
  }
}

abstract class _GetTasksParams implements GetTasksParams {
  const factory _GetTasksParams(
      {final List<int>? projects,
      final String? status,
      final String? label,
      final List<int>? assigned}) = _$GetTasksParamsImpl;

  factory _GetTasksParams.fromJson(Map<String, dynamic> json) =
      _$GetTasksParamsImpl.fromJson;

  @override
  List<int>? get projects;
  @override
  String? get status;
  @override
  String? get label;
  @override
  List<int>? get assigned;

  /// Create a copy of GetTasksParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTasksParamsImplCopyWith<_$GetTasksParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
