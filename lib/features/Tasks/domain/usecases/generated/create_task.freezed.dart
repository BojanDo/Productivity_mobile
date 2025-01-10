// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../create_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTaskParams _$CreateTaskParamsFromJson(Map<String, dynamic> json) {
  return _CreateTaskParams.fromJson(json);
}

/// @nodoc
mixin _$CreateTaskParams {
  String get title => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get description =>
      throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id')
  int get projectId => throw _privateConstructorUsedError;
  List<int> get assigned => throw _privateConstructorUsedError;
  List<String>? get attachments => throw _privateConstructorUsedError;

  /// Serializes this CreateTaskParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTaskParamsCopyWith<CreateTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskParamsCopyWith<$Res> {
  factory $CreateTaskParamsCopyWith(
          CreateTaskParams value, $Res Function(CreateTaskParams) then) =
      _$CreateTaskParamsCopyWithImpl<$Res, CreateTaskParams>;
  @useResult
  $Res call(
      {String title,
      List<Map<String, dynamic>> description,
      String status,
      String label,
      @JsonKey(name: 'due_date') String date,
      @JsonKey(name: 'project_id') int projectId,
      List<int> assigned,
      List<String>? attachments});
}

/// @nodoc
class _$CreateTaskParamsCopyWithImpl<$Res, $Val extends CreateTaskParams>
    implements $CreateTaskParamsCopyWith<$Res> {
  _$CreateTaskParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? label = null,
    Object? date = null,
    Object? projectId = null,
    Object? assigned = null,
    Object? attachments = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
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
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTaskParamsImplCopyWith<$Res>
    implements $CreateTaskParamsCopyWith<$Res> {
  factory _$$CreateTaskParamsImplCopyWith(_$CreateTaskParamsImpl value,
          $Res Function(_$CreateTaskParamsImpl) then) =
      __$$CreateTaskParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      List<Map<String, dynamic>> description,
      String status,
      String label,
      @JsonKey(name: 'due_date') String date,
      @JsonKey(name: 'project_id') int projectId,
      List<int> assigned,
      List<String>? attachments});
}

/// @nodoc
class __$$CreateTaskParamsImplCopyWithImpl<$Res>
    extends _$CreateTaskParamsCopyWithImpl<$Res, _$CreateTaskParamsImpl>
    implements _$$CreateTaskParamsImplCopyWith<$Res> {
  __$$CreateTaskParamsImplCopyWithImpl(_$CreateTaskParamsImpl _value,
      $Res Function(_$CreateTaskParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? label = null,
    Object? date = null,
    Object? projectId = null,
    Object? assigned = null,
    Object? attachments = freezed,
  }) {
    return _then(_$CreateTaskParamsImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value._description
          : description // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
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
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTaskParamsImpl implements _CreateTaskParams {
  const _$CreateTaskParamsImpl(
      {required this.title,
      required final List<Map<String, dynamic>> description,
      required this.status,
      required this.label,
      @JsonKey(name: 'due_date') required this.date,
      @JsonKey(name: 'project_id') required this.projectId,
      required final List<int> assigned,
      final List<String>? attachments})
      : _description = description,
        _assigned = assigned,
        _attachments = attachments;

  factory _$CreateTaskParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTaskParamsImplFromJson(json);

  @override
  final String title;
  final List<Map<String, dynamic>> _description;
  @override
  List<Map<String, dynamic>> get description {
    if (_description is EqualUnmodifiableListView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_description);
  }

  @override
  final String status;
  @override
  final String label;
  @override
  @JsonKey(name: 'due_date')
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

  final List<String>? _attachments;
  @override
  List<String>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateTaskParams(title: $title, description: $description, status: $status, label: $label, date: $date, projectId: $projectId, assigned: $assigned, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskParamsImpl &&
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
                .equals(other._attachments, _attachments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(_description),
      status,
      label,
      date,
      projectId,
      const DeepCollectionEquality().hash(_assigned),
      const DeepCollectionEquality().hash(_attachments));

  /// Create a copy of CreateTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskParamsImplCopyWith<_$CreateTaskParamsImpl> get copyWith =>
      __$$CreateTaskParamsImplCopyWithImpl<_$CreateTaskParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTaskParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateTaskParams implements CreateTaskParams {
  const factory _CreateTaskParams(
      {required final String title,
      required final List<Map<String, dynamic>> description,
      required final String status,
      required final String label,
      @JsonKey(name: 'due_date') required final String date,
      @JsonKey(name: 'project_id') required final int projectId,
      required final List<int> assigned,
      final List<String>? attachments}) = _$CreateTaskParamsImpl;

  factory _CreateTaskParams.fromJson(Map<String, dynamic> json) =
      _$CreateTaskParamsImpl.fromJson;

  @override
  String get title;
  @override
  List<Map<String, dynamic>> get description;
  @override
  String get status;
  @override
  String get label;
  @override
  @JsonKey(name: 'due_date')
  String get date;
  @override
  @JsonKey(name: 'project_id')
  int get projectId;
  @override
  List<int> get assigned;
  @override
  List<String>? get attachments;

  /// Create a copy of CreateTaskParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskParamsImplCopyWith<_$CreateTaskParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
