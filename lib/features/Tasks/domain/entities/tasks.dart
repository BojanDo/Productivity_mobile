import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/paginated_list.dart';
import '../../../Documents/domain/entities/documents.dart';
import '../../../Documents/domain/mappers/document.dart';
import '../../../Projects/domain/entities/projects.dart';
import '../../../User/domain/entities/users.dart';
import '../../../User/domain/mappers/user.dart';
import '../mappers/comment.dart';
import 'comments.dart';

part 'generated/tasks.freezed.dart';
part 'generated/tasks.g.dart';

@JsonEnum()
enum Status {
  @JsonValue('ToDo')
  todo,
  @JsonValue('In Progress')
  inProgress,
  @JsonValue('Review')
  review,
  @JsonValue('Test')
  test,
  @JsonValue('Closed')
  closed;

  String get displayName {
    switch (this) {
      case Status.todo:
        return 'ToDo';
      case Status.inProgress:
        return 'In Progress';
      case Status.review:
        return 'Review';
      case Status.test:
        return 'Test';
      case Status.closed:
        return 'Closed';
    }
  }

  Color get background {
    switch (this) {
      case Status.todo:
        return const Color(0xfffdd5e3);
      case Status.inProgress:
        return const Color(0xffe2f9c8);
      case Status.review:
        return const Color(0xffccf0fd);
      case Status.test:
        return const Color(0xffe5d7fc);
      case Status.closed:
        return const Color(0xffd3f6e3);
    }
  }

  Color get textColor {
    switch (this) {
      case Status.todo:
        return const Color(0xff8a3a55);
      case Status.inProgress:
        return const Color(0xff759a43);
      case Status.review:
        return const Color(0xff3f8296);
      case Status.test:
        return const Color(0xff70569b);
      case Status.closed:
        return const Color(0xff4b9167);
    }
  }
}
@JsonEnum()
enum Label {
  @JsonValue('BUG')
  bug,
  @JsonValue('FEATURE')
  feature,
  @JsonValue('MAINTENANCE')
  maintenance;

  String get displayName {
    switch (this) {
      case Label.bug:
        return 'BUG';
      case Label.feature:
        return 'FEATURE';
      case Label.maintenance:
        return 'MAINTENANCE';
    }
  }
}

@freezed
class Task with _$Task {
  const factory Task({
    required int id,
    @JsonKey(name: 'task_number') required String taskNumber,
    required String title,
    required List<Map<String, dynamic>> description,
    required Status status,
    required Label label,
    @JsonKey(name: 'due_date') required String date,
    required Project project,
    @JsonKey(
      name: 'assigned_users',
      fromJson: paginatedListUserFromJson,
      toJson: paginatedListUserToJson,
    ) required Users users,
    @JsonKey(
      fromJson: paginatedListCommentFromJson,
      toJson: paginatedListCommentToJson,
    )required Comments comments,
    @JsonKey(
      fromJson: paginatedListDocumentFromJson,
      toJson: paginatedListDocumentToJson,
    )required Documents documents,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}

@freezed
class TaskSlim with _$TaskSlim{
  const factory TaskSlim({
    required int id,
    required String title,
    required Status status,
    required Label label,
    @JsonKey(name: 'due_date') required String date,
    @JsonKey(name: 'task_number') required String taskNumber,
    required List<int> assigned,
  }) = _TaskSlim;

  factory TaskSlim.fromJson(Map<String, dynamic> json) => _$TaskSlimFromJson(json);
}

typedef Tasks = PaginatedList<TaskSlim>;