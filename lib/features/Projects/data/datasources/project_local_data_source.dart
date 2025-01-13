import '../../../../core/config/constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/utils/api_manager.dart';
import '../../../../core/utils/sql_manager.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/project_response.dart';
import '../../domain/entities/projects.dart';

abstract class ProjectLocalDataSource {
  Future<Projects> getProjects(int organizationId);

  Future<ProjectResponse> createProject({
    required Map<String, dynamic> values,
  });

  Future<ProjectResponse> updateProject(
    int id, {
    required Map<String, dynamic> values,
  });

  Future<ProjectResponse> deleteProject(int id);
}

class ProjectLocalDataSourceImplementation implements ProjectLocalDataSource {
  const ProjectLocalDataSourceImplementation(this._sqlManager);

  final SQLManager _sqlManager;

  @override
  Future<Projects> getProjects(int organizationId) async {
    try {
      final List<Map<String, dynamic>> result = await _sqlManager.getData(
        kProjectsTable,
        where: <String, dynamic>{'organizationId': organizationId},
      );
      final DataMap response = <String, dynamic>{
        'items': result,
        'total': result.length,
      };
      return Projects.fromJson(
        response,
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
      await _sqlManager.storeData(kProjectsTable, values);
      return const ProjectResponse(message: 'Successfully created project');
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
      await _sqlManager.updateData(kProjectsTable, values, id);
      return const ProjectResponse(message: 'Successfully updated project');
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<ProjectResponse> deleteProject(int id) async {
    try {
      await _sqlManager.deleteData(kProjectsTable, id);
      return const ProjectResponse(message: 'Successfully deleted project');
    } on APIException {
      rethrow;
    }
  }
}
