import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/project_response.dart';
import '../../domain/entities/projects.dart';
import '../../domain/repositories/project_repo.dart';
import '../datasources/project_remote_data_source.dart';

class ProjectRepoImplementation implements ProjectRepository {
  const ProjectRepoImplementation(this._remoteDataSource);

  final ProjectRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<Projects> getProjects() async {
    try {
      final Projects result = await _remoteDataSource.getProjects();
      return Right<Failure, Projects>(result);
    } on APIException catch (e) {
      return Left<Failure, Projects>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<ProjectResponse> createProject({
    required Map<String, dynamic> values,
  }) async {
    try {
      final ProjectResponse result = await _remoteDataSource.createProject(
        values: values,
      );
      return Right<Failure, ProjectResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, ProjectResponse>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<ProjectResponse> updateProject(
    int id, {
    required Map<String, dynamic> values,
  }) async {
    try {
      final ProjectResponse result = await _remoteDataSource.updateProject(
        id,
        values: values,
      );
      return Right<Failure, ProjectResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, ProjectResponse>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<ProjectResponse> deleteProject(int id) async {
    try {
      final ProjectResponse result = await _remoteDataSource.deleteProject(id);
      return Right<Failure, ProjectResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, ProjectResponse>(APIFailure.fromException(e));
    }
  }
}
