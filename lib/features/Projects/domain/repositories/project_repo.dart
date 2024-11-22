import '../../../../core/utils/typedef.dart';
import '../entities/project_response.dart';
import '../entities/projects.dart';

abstract class ProjectRepository {
  const ProjectRepository();

  ResultFuture<Projects> getProjects();

  ResultFuture<ProjectResponse> createProject({
    required Map<String, dynamic> values,
  });

  ResultFuture<ProjectResponse> updateProject(
    int id, {
    required Map<String, dynamic> values,
  });

  ResultFuture<ProjectResponse> deleteProject(int id);
}
