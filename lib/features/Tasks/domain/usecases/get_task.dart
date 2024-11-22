import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/tasks.dart';
import '../repositories/task_repo.dart';

class GetTask extends UsecaseIdWithoutParams<Task> {
  const GetTask(this._repository);

  final TaskRepository _repository;

  @override
  ResultFuture<Task> call(int id) async => _repository.getTask(id);
}

