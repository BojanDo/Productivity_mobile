import '../../../../core/config/constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/utils/api_manager.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/project_response.dart';
import '../../domain/entities/projects.dart';

abstract class ProjectRemoteDataSource {
  Future<Projects> getProjects();

  Future<ProjectResponse> createProject({
    required Map<String, dynamic> values,
  });

  Future<ProjectResponse> updateProject(
    int id, {
    required Map<String, dynamic> values,
  });

  Future<ProjectResponse> deleteProject(int id);
}

class ProjectRemoteDataSourceImplementation implements ProjectRemoteDataSource {
  const ProjectRemoteDataSourceImplementation(this._apiManager);

  final APIManager _apiManager;

  @override
  Future<Projects> getProjects() async {
    try {
      final dynamic response = await _apiManager.get(
        kProjectsUrl,
        '',
        <String, dynamic>{},
      );

      return Projects.fromJson(
        response as DataMap,
        (Object? item) => Project.fromJson(item as DataMap),
      );
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<ProjectResponse> createProject({
    required Map<String, dynamic> values,
  }) async {
    try {
      final dynamic response = await _apiManager.post(
        kProjectsUrl,
        '',
        values,
      );

      return ProjectResponse.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<ProjectResponse> updateProject(
    int id, {
    required Map<String, dynamic> values,
  }) async {
    try {
      final dynamic response = await _apiManager.put(
        kProjectsUrl,
        '$id',
        values,
      );

      return ProjectResponse.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<ProjectResponse> deleteProject(int id) async {
    try {
      final dynamic response = await _apiManager.delete(
        kProjectsUrl,
        '$id',
        <String, dynamic>{},
      );

      return ProjectResponse.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }
}
