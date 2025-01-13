import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../core/utils/typedef.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../../User/domain/entities/organizations.dart';
import '../../../User/domain/entities/users.dart';
import '../../domain/entities/project_response.dart';
import '../../domain/entities/projects.dart';
import '../../domain/repositories/project_repo.dart';
import '../datasources/project_local_data_source.dart';
import '../datasources/project_remote_data_source.dart';

class ProjectRepoImplementation implements ProjectRepository {
  const ProjectRepoImplementation(
    this._remoteDataSource,
    this._localDataSource,
  );

  final ProjectRemoteDataSource _remoteDataSource;
  final ProjectLocalDataSource _localDataSource;

  @override
  ResultFuture<Projects> getProjects() async {
    try {
      final Projects result = await sl<AppBloc>().state.when(
            authenticated: (User user) async =>
                await _remoteDataSource.getProjects(),
            notAuthenticated: () {
              throw const APIException(
                message: 'Unknown error occured',
                statusCode: 400,
              );
            },
            offline: (Organization organization) async =>
                await _localDataSource.getProjects(organization.id),
          );
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
      final ProjectResponse result = await sl<AppBloc>().state.when(
            authenticated: (User user) async =>
                await _remoteDataSource.createProject(
              values: values,
            ),
            notAuthenticated: () {
              throw const APIException(
                message: 'Unknown error occured',
                statusCode: 400,
              );
            },
            offline: (Organization organization) async =>
                await _localDataSource.createProject(
              values: values,
            ),
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
      final ProjectResponse result = await sl<AppBloc>().state.when(
            authenticated: (User user) async =>
                await _remoteDataSource.updateProject(
              id,
              values: values,
            ),
            notAuthenticated: () {
              throw const APIException(
                message: 'Unknown error occured',
                statusCode: 400,
              );
            },
            offline: (Organization organization) async =>
                await _localDataSource.updateProject(
              id,
              values: values,
            ),
          );

      return Right<Failure, ProjectResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, ProjectResponse>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<ProjectResponse> deleteProject(int id) async {
    try {
      final ProjectResponse result = await sl<AppBloc>().state.when(
            authenticated: (User user) async =>
                await _remoteDataSource.deleteProject(id),
            notAuthenticated: () {
              throw const APIException(
                message: 'Unknown error occured',
                statusCode: 400,
              );
            },
            offline: (Organization organization) async =>
                await _localDataSource.deleteProject(id),
          );
      return Right<Failure, ProjectResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, ProjectResponse>(APIFailure.fromException(e));
    }
  }
}
