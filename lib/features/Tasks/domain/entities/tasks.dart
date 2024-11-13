import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/paginated_list.dart';
import '../../../../core/utils/typedef.dart';
import '../../../Documents/domain/entities/documents.dart';
import '../../../Projects/domain/entities/projects.dart';
import '../../../User/domain/entities/users.dart';
import '../mappers/comment.dart';
import '../mappers/document.dart';
import '../mappers/user.dart';
import 'comments.dart';

part 'generated/tasks.freezed.dart';
part 'generated/tasks.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required int id,
    @JsonKey(name: 'task_number') required String taskNumber,
    required String title,
    required DataMap description,
    required String status,
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
    @JsonKey(name: 'task_number') required String taskNumber,
  }) = _TaskSlim;

  factory TaskSlim.fromJson(Map<String, dynamic> json) => _$TaskSlimFromJson(json);
}

typedef Tasks = PaginatedList<TaskSlim>;