import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/paginated_list.dart';
import '../../../../core/utils/typedef.dart';
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
    required DataMap description,
    required Status status,
    required Label label,
    required String date,
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
    required String date,
    @JsonKey(name: 'task_number') required String taskNumber,
  }) = _TaskSlim;

  factory TaskSlim.fromJson(Map<String, dynamic> json) => _$TaskSlimFromJson(json);
}

typedef Tasks = PaginatedList<TaskSlim>;