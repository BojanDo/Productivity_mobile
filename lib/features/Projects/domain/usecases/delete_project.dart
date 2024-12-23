import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/project_response.dart';
import '../repositories/project_repo.dart';

class DeleteProject extends UsecaseIdWithoutParams<ProjectResponse> {
  const DeleteProject(this._repository);

  final ProjectRepository _repository;

  @override
  ResultFuture<ProjectResponse> call(int id) async => _repository.deleteProject(id);
}

