import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../../../Notifications/domain/entities/notifications.dart';
import '../repositories/task_repo.dart';

class GetComments extends UsecaseIdWithoutParams<Notifications> {
  const GetComments(this._repository);

  final TaskRepository _repository;

  @override
  ResultFuture<Notifications> call(int id) async => _repository.getComments(id);
}