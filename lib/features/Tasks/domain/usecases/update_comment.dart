import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/task_response.dart';
import '../repositories/task_repo.dart';

part 'generated/update_comment.freezed.dart';

part 'generated/update_comment.g.dart';

class UpdateComment
    extends UsecaseIdWithParams<TaskResponse, UpdateCommentParams> {
  const UpdateComment(this._repository);

  final TaskRepository _repository;

  @override
  ResultFuture<TaskResponse> call(
    int id,
    UpdateCommentParams params,
  ) async =>
      _repository.updateComment(
        id,
        values: params.toJson(),
      );
}

@freezed
class UpdateCommentParams with _$UpdateCommentParams {
  const factory UpdateCommentParams({
    required String description,
  }) = _UpdateCommentParams;

  factory UpdateCommentParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateCommentParamsFromJson(json);
}
