// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../tasks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_number')
  String get taskNumber => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get description =>
      throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  Label get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  String get date => throw _privateConstructorUsedError;
  Project get project => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'assigned_users',
      fromJson: paginatedListUserFromJson,
      toJson: paginatedListUserToJson)
  PaginatedList<User> get users =>
      throw _privateConstructorUsedError; /*@JsonKey(
      fromJson: paginatedListCommentFromJson,
      toJson: paginatedListCommentToJson,
    )required Comments comments,*/
  @JsonKey(
      fromJson: paginatedListDocumentFromJson,
      toJson: paginatedListDocumentToJson)
  PaginatedList<Document> get documents => throw _privateConstructorUsedError;

  /// Serializes this Task to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'task_number') String taskNumber,
      String title,
      List<Map<String, dynamic>> description,
      Status status,
      Label label,
      @JsonKey(name: 'due_date') String date,
      Project project,
      @JsonKey(
          name: 'assigned_users',
          fromJson: paginatedListUserFromJson,
          toJson: paginatedListUserToJson)
      PaginatedList<User> users,
      @JsonKey(
          fromJson: paginatedListDocumentFromJson,
          toJson: paginatedListDocumentToJson)
      PaginatedList<Document> documents});

  $ProjectCopyWith<$Res> get project;
  $PaginatedListCopyWith<User, $Res> get users;
  $PaginatedListCopyWith<Document, $Res> get documents;
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskNumber = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? label = null,
    Object? date = null,
    Object? project = null,
    Object? users = null,
    Object? documents = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
              as List<Map<String, dynamic>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as Label,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as PaginatedList<User>,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Document>,
    ) as $Val);
  }

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value) as $Val);
    });
  }

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedListCopyWith<User, $Res> get users {
    return $PaginatedListCopyWith<User, $Res>(_value.users, (value) {
      return _then(_value.copyWith(users: value) as $Val);
    });
  }

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginatedListCopyWith<Document, $Res> get documents {
    return $PaginatedListCopyWith<Document, $Res>(_value.documents, (value) {
      return _then(_value.copyWith(documents: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'task_number') String taskNumber,
      String title,
      List<Map<String, dynamic>> description,
      Status status,
      Label label,
      @JsonKey(name: 'due_date') String date,
      Project project,
      @JsonKey(
          name: 'assigned_users',
          fromJson: paginatedListUserFromJson,
          toJson: paginatedListUserToJson)
      PaginatedList<User> users,
      @JsonKey(
          fromJson: paginatedListDocumentFromJson,
          toJson: paginatedListDocumentToJson)
      PaginatedList<Document> documents});

  @override
  $ProjectCopyWith<$Res> get project;
  @override
  $PaginatedListCopyWith<User, $Res> get users;
  @override
  $PaginatedListCopyWith<Document, $Res> get documents;
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskNumber = null,
    Object? title = null,
    Object? description = null,
    Object? status = null,
    Object? label = null,
    Object? date = null,
    Object? project = null,
    Object? users = null,
    Object? documents = null,
  }) {
    return _then(_$TaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
              as List<Map<String, dynamic>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as Label,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as PaginatedList<User>,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as PaginatedList<Document>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl implements _Task {
  const _$TaskImpl(
      {required this.id,
      @JsonKey(name: 'task_number') required this.taskNumber,
      required this.title,
      required final List<Map<String, dynamic>> description,
      required this.status,
      required this.label,
      @JsonKey(name: 'due_date') required this.date,
      required this.project,
      @JsonKey(
          name: 'assigned_users',
          fromJson: paginatedListUserFromJson,
          toJson: paginatedListUserToJson)
      required this.users,
      @JsonKey(
          fromJson: paginatedListDocumentFromJson,
          toJson: paginatedListDocumentToJson)
      required this.documents})
      : _description = description;

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'task_number')
  final String taskNumber;
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
  final Status status;
  @override
  final Label label;
  @override
  @JsonKey(name: 'due_date')
  final String date;
  @override
  final Project project;
  @override
  @JsonKey(
      name: 'assigned_users',
      fromJson: paginatedListUserFromJson,
      toJson: paginatedListUserToJson)
  final PaginatedList<User> users;
/*@JsonKey(
      fromJson: paginatedListCommentFromJson,
      toJson: paginatedListCommentToJson,
    )required Comments comments,*/
  @override
  @JsonKey(
      fromJson: paginatedListDocumentFromJson,
      toJson: paginatedListDocumentToJson)
  final PaginatedList<Document> documents;

  @override
  String toString() {
    return 'Task(id: $id, taskNumber: $taskNumber, title: $title, description: $description, status: $status, label: $label, date: $date, project: $project, users: $users, documents: $documents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskNumber, taskNumber) ||
                other.taskNumber == taskNumber) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._description, _description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.users, users) || other.users == users) &&
            (identical(other.documents, documents) ||
                other.documents == documents));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      taskNumber,
      title,
      const DeepCollectionEquality().hash(_description),
      status,
      label,
      date,
      project,
      users,
      documents);

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(
      this,
    );
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {required final int id,
      @JsonKey(name: 'task_number') required final String taskNumber,
      required final String title,
      required final List<Map<String, dynamic>> description,
      required final Status status,
      required final Label label,
      @JsonKey(name: 'due_date') required final String date,
      required final Project project,
      @JsonKey(
          name: 'assigned_users',
          fromJson: paginatedListUserFromJson,
          toJson: paginatedListUserToJson)
      required final PaginatedList<User> users,
      @JsonKey(
          fromJson: paginatedListDocumentFromJson,
          toJson: paginatedListDocumentToJson)
      required final PaginatedList<Document> documents}) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'task_number')
  String get taskNumber;
  @override
  String get title;
  @override
  List<Map<String, dynamic>> get description;
  @override
  Status get status;
  @override
  Label get label;
  @override
  @JsonKey(name: 'due_date')
  String get date;
  @override
  Project get project;
  @override
  @JsonKey(
      name: 'assigned_users',
      fromJson: paginatedListUserFromJson,
      toJson: paginatedListUserToJson)
  PaginatedList<User>
      get users; /*@JsonKey(
      fromJson: paginatedListCommentFromJson,
      toJson: paginatedListCommentToJson,
    )required Comments comments,*/
  @override
  @JsonKey(
      fromJson: paginatedListDocumentFromJson,
      toJson: paginatedListDocumentToJson)
  PaginatedList<Document> get documents;

  /// Create a copy of Task
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskSlim _$TaskSlimFromJson(Map<String, dynamic> json) {
  return _TaskSlim.fromJson(json);
}

/// @nodoc
mixin _$TaskSlim {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id')
  int get projectId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  Label get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_number')
  String get taskNumber => throw _privateConstructorUsedError;
  List<int> get assigned => throw _privateConstructorUsedError;

  /// Serializes this TaskSlim to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskSlim
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskSlimCopyWith<TaskSlim> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskSlimCopyWith<$Res> {
  factory $TaskSlimCopyWith(TaskSlim value, $Res Function(TaskSlim) then) =
      _$TaskSlimCopyWithImpl<$Res, TaskSlim>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'project_id') int projectId,
      String title,
      Status status,
      Label label,
      @JsonKey(name: 'due_date') String date,
      @JsonKey(name: 'task_number') String taskNumber,
      List<int> assigned});
}

/// @nodoc
class _$TaskSlimCopyWithImpl<$Res, $Val extends TaskSlim>
    implements $TaskSlimCopyWith<$Res> {
  _$TaskSlimCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskSlim
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? title = null,
    Object? status = null,
    Object? label = null,
    Object? date = null,
    Object? taskNumber = null,
    Object? assigned = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as Label,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      taskNumber: null == taskNumber
          ? _value.taskNumber
          : taskNumber // ignore: cast_nullable_to_non_nullable
              as String,
      assigned: null == assigned
          ? _value.assigned
          : assigned // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskSlimImplCopyWith<$Res>
    implements $TaskSlimCopyWith<$Res> {
  factory _$$TaskSlimImplCopyWith(
          _$TaskSlimImpl value, $Res Function(_$TaskSlimImpl) then) =
      __$$TaskSlimImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'project_id') int projectId,
      String title,
      Status status,
      Label label,
      @JsonKey(name: 'due_date') String date,
      @JsonKey(name: 'task_number') String taskNumber,
      List<int> assigned});
}

/// @nodoc
class __$$TaskSlimImplCopyWithImpl<$Res>
    extends _$TaskSlimCopyWithImpl<$Res, _$TaskSlimImpl>
    implements _$$TaskSlimImplCopyWith<$Res> {
  __$$TaskSlimImplCopyWithImpl(
      _$TaskSlimImpl _value, $Res Function(_$TaskSlimImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskSlim
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? title = null,
    Object? status = null,
    Object? label = null,
    Object? date = null,
    Object? taskNumber = null,
    Object? assigned = null,
  }) {
    return _then(_$TaskSlimImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as Label,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      taskNumber: null == taskNumber
          ? _value.taskNumber
          : taskNumber // ignore: cast_nullable_to_non_nullable
              as String,
      assigned: null == assigned
          ? _value._assigned
          : assigned // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskSlimImpl implements _TaskSlim {
  const _$TaskSlimImpl(
      {required this.id,
      @JsonKey(name: 'project_id') required this.projectId,
      required this.title,
      required this.status,
      required this.label,
      @JsonKey(name: 'due_date') required this.date,
      @JsonKey(name: 'task_number') required this.taskNumber,
      final List<int> assigned = const <int>[]})
      : _assigned = assigned;

  factory _$TaskSlimImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskSlimImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'project_id')
  final int projectId;
  @override
  final String title;
  @override
  final Status status;
  @override
  final Label label;
  @override
  @JsonKey(name: 'due_date')
  final String date;
  @override
  @JsonKey(name: 'task_number')
  final String taskNumber;
  final List<int> _assigned;
  @override
  @JsonKey()
  List<int> get assigned {
    if (_assigned is EqualUnmodifiableListView) return _assigned;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assigned);
  }

  @override
  String toString() {
    return 'TaskSlim(id: $id, projectId: $projectId, title: $title, status: $status, label: $label, date: $date, taskNumber: $taskNumber, assigned: $assigned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskSlimImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.taskNumber, taskNumber) ||
                other.taskNumber == taskNumber) &&
            const DeepCollectionEquality().equals(other._assigned, _assigned));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, projectId, title, status,
      label, date, taskNumber, const DeepCollectionEquality().hash(_assigned));

  /// Create a copy of TaskSlim
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskSlimImplCopyWith<_$TaskSlimImpl> get copyWith =>
      __$$TaskSlimImplCopyWithImpl<_$TaskSlimImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskSlimImplToJson(
      this,
    );
  }
}

abstract class _TaskSlim implements TaskSlim {
  const factory _TaskSlim(
      {required final int id,
      @JsonKey(name: 'project_id') required final int projectId,
      required final String title,
      required final Status status,
      required final Label label,
      @JsonKey(name: 'due_date') required final String date,
      @JsonKey(name: 'task_number') required final String taskNumber,
      final List<int> assigned}) = _$TaskSlimImpl;

  factory _TaskSlim.fromJson(Map<String, dynamic> json) =
      _$TaskSlimImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'project_id')
  int get projectId;
  @override
  String get title;
  @override
  Status get status;
  @override
  Label get label;
  @override
  @JsonKey(name: 'due_date')
  String get date;
  @override
  @JsonKey(name: 'task_number')
  String get taskNumber;
  @override
  List<int> get assigned;

  /// Create a copy of TaskSlim
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskSlimImplCopyWith<_$TaskSlimImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
