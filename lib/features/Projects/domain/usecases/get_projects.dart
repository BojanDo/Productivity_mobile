import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/projects.dart';
import '../repositories/project_repo.dart';

class GetProjects extends UsecaseWithoutParams<Projects> {
  const GetProjects(this._repository);

  final ProjectRepository _repository;

  @override
  ResultFuture<Projects> call() async => _repository.getProjects();
}

