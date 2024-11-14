// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../update_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateTaskParams _$UpdateTaskParamsFromJson(Map<String, dynamic> json) {
  return _UpdateTaskParams.fromJson(json);
}

/// @nodoc
mixin _$UpdateTaskParams {
  @JsonKey(name: 'task_number')
  String get taskNumber => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Map<String, dynamic> get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id')
  int get projectId => throw _privateConstructorUsedError;
  List<int> get assigned => throw _privateConstructorUsedError;
  List<String> get attachments => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_attachments')
  List<int> get deletedAttachments => throw _privateConstructorUsedError;

  /// Serializes this UpdateTaskParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTaskParamsCopyWith<UpdateTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskParamsCopyWith<$Res> {
  factory $UpdateTaskParamsCopyWith(
          UpdateTaskParams value, $Res Function(UpdateTaskParams) then) =
      _$UpdateTaskParamsCopyWithImpl<$Res, UpdateTaskParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'task_number') String taskNumber,
      String title,
      Map<String, dynamic> description,
      String status,
      String label,
      String date,
      @JsonKey(name: 'project_id') int projectId,
      List<int> assigned,
      List<String> attachments,
      @JsonKey(name: 'deleted_attachments') List<int> deletedAttachments});
}

/// @nodoc
class _$UpdateTaskParamsCopyWithImpl<$Res, $Val extends UpdateTaskParams>
    implements $UpdateTaskParamsCopyWith<$Res> {
  _$UpdateTaskParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskNumber = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? label = null,
    Object? date = null,
    Object? projectId = null,
    Object? assigned = null,
    Object? attachments = null,
    Object? deletedAttachments = null,
  }) {
    return _then(_value.copyWith(
      taskNumber: null == taskNumber
          ? _value.taskNumber
          : taskNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      assigned: null == assigned
          ? _value.assigned
          : assigned // ignore: cast_nullable_to_non_nullable
              as List<int>,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      deletedAttachments: null == deletedAttachments
          ? _value.deletedAttachments
          : deletedAttachments // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTaskParamsImplCopyWith<$Res>
    implements $UpdateTaskParamsCopyWith<$Res> {
  factory _$$UpdateTaskParamsImplCopyWith(_$UpdateTaskParamsImpl value,
          $Res Function(_$UpdateTaskParamsImpl) then) =
      __$$UpdateTaskParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'task_number') String taskNumber,
      String title,
      Map<String, dynamic> description,
      String status,
      String label,
      String date,
      @JsonKey(name: 'project_id') int projectId,
      List<int> assigned,
      List<String> attachments,
      @JsonKey(name: 'deleted_attachments') List<int> deletedAttachments});
}

/// @nodoc
class __$$UpdateTaskParamsImplCopyWithImpl<$Res>
    extends _$UpdateTaskParamsCopyWithImpl<$Res, _$UpdateTaskParamsImpl>
    implements _$$UpdateTaskParamsImplCopyWith<$Res> {
  __$$UpdateTaskParamsImplCopyWithImpl(_$UpdateTaskParamsImpl _value,
      $Res Function(_$UpdateTaskParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskNumber = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? label = null,
    Object? date = null,
    Object? projectId = null,
    Object? assigned = null,
    Object? attachments = null,
    Object? deletedAttachments = null,
  }) {
    return _then(_$UpdateTaskParamsImpl(
      taskNumber: null == taskNumber
          ? _value.taskNumber
          : taskNumber // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      assigned: null == assigned
          ? _value._assigned
          : assigned // ignore: cast_nullable_to_non_nullable
              as List<int>,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      deletedAttachments: null == deletedAttachments
          ? _value._deletedAttachments
          : deletedAttachments // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTaskParamsImpl implements _UpdateTaskParams {
  const _$UpdateTaskParamsImpl(
      {@JsonKey(name: 'task_number') required this.taskNumber,
      required this.title,
      required final Map<String, dynamic> description,
      required this.status,
      required this.label,
      required this.date,
      @JsonKey(name: 'project_id') required this.projectId,
      required final List<int> assigned,
      required final List<String> attachments,
      @JsonKey(name: 'deleted_attachments')
      required final List<int> deletedAttachments})
      : _description = description,
        _assigned = assigned,
        _attachments = attachments,
        _deletedAttachments = deletedAttachments;

  factory _$UpdateTaskParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTaskParamsImplFromJson(json);

  @override
  @JsonKey(name: 'task_number')
  final String taskNumber;
  @override
  final String title;
  final Map<String, dynamic> _description;
  @override
  Map<String, dynamic> get description {
    if (_description is EqualUnmodifiableMapView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_description);
  }

  @override
  final String status;
  @override
  final String label;
  @override
  final String date;
  @override
  @JsonKey(name: 'project_id')
  final int projectId;
  final List<int> _assigned;
  @override
  List<int> get assigned {
    if (_assigned is EqualUnmodifiableListView) return _assigned;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assigned);
  }

  final List<String> _attachments;
  @override
  List<String> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  final List<int> _deletedAttachments;
  @override
  @JsonKey(name: 'deleted_attachments')
  List<int> get deletedAttachments {
    if (_deletedAttachments is EqualUnmodifiableListView)
      return _deletedAttachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deletedAttachments);
  }

  @override
  String toString() {
    return 'UpdateTaskParams(taskNumber: $taskNumber, title: $title, description: $description, status: $status, label: $label, date: $date, projectId: $projectId, assigned: $assigned, attachments: $attachments, deletedAttachments: $deletedAttachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskParamsImpl &&
            (identical(other.taskNumber, taskNumber) ||
                other.taskNumber == taskNumber) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._description, _description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            const DeepCollectionEquality().equals(other._assigned, _assigned) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality()
                .equals(other._deletedAttachments, _deletedAttachments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      taskNumber,
      title,
      const DeepCollectionEquality().hash(_description),
      status,
      label,
      date,
      projectId,
      const DeepCollectionEquality().hash(_assigned),
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(_deletedAttachments));

  /// Create a copy of UpdateTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskParamsImplCopyWith<_$UpdateTaskParamsImpl> get copyWith =>
      __$$UpdateTaskParamsImplCopyWithImpl<_$UpdateTaskParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTaskParamsImplToJson(
      this,
    );
  }
}

abstract class _UpdateTaskParams implements UpdateTaskParams {
  const factory _UpdateTaskParams(
      {@JsonKey(name: 'task_number') required final String taskNumber,
      required final String title,
      required final Map<String, dynamic> description,
      required final String status,
      required final String label,
      required final String date,
      @JsonKey(name: 'project_id') required final int projectId,
      required final List<int> assigned,
      required final List<String> attachments,
      @JsonKey(name: 'deleted_attachments')
      required final List<int> deletedAttachments}) = _$UpdateTaskParamsImpl;

  factory _UpdateTaskParams.fromJson(Map<String, dynamic> json) =
      _$UpdateTaskParamsImpl.fromJson;

  @override
  @JsonKey(name: 'task_number')
  String get taskNumber;
  @override
  String get title;
  @override
  Map<String, dynamic> get description;
  @override
  String get status;
  @override
  String get label;
  @override
  String get date;
  @override
  @JsonKey(name: 'project_id')
  int get projectId;
  @override
  List<int> get assigned;
  @override
  List<String> get attachments;
  @override
  @JsonKey(name: 'deleted_attachments')
  List<int> get deletedAttachments;

  /// Create a copy of UpdateTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTaskParamsImplCopyWith<_$UpdateTaskParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
