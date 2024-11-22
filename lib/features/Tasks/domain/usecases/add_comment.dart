import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/task_response.dart';
import '../repositories/task_repo.dart';

part 'generated/add_comment.freezed.dart';
part 'generated/add_comment.g.dart';

class AddComment
    extends UsecaseWithParams<TaskResponse, AddCommentParams> {
  const AddComment(this._repository);

  final TaskRepository _repository;

  @override
  ResultFuture<TaskResponse> call(AddCommentParams params) async =>
      _repository.addComment(
        values: params.toJson(),
      );
}

@freezed
class AddCommentParams with _$AddCommentParams {
  const factory AddCommentParams({
    required String description,
    @JsonKey(name: 'task_id') required int taskId,
  }) = _AddCommentParams;

  factory AddCommentParams.fromJson(Map<String, dynamic> json) =>
      _$AddCommentParamsFromJson(json);
}
