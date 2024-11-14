import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/task_response.dart';
import '../repositories/task_repo.dart';

class DeleteComment extends UsecaseIdWithoutParams<TaskResponse> {
  const DeleteComment(this._repository);

  final TaskRepository _repository;

  @override
  ResultFuture<TaskResponse> call(String id) async => _repository.deleteComment(id);
}

