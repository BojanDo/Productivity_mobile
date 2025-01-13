import 'package:dartz/dartz.dart' show Right, Left;

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../core/utils/typedef.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../../Notifications/domain/entities/notifications.dart';
import '../../../User/domain/entities/organizations.dart';
import '../../../User/domain/entities/users.dart';
import '../../domain/entities/task_response.dart';
import '../../domain/entities/tasks.dart';
import '../../domain/repositories/task_repo.dart';
import '../datasources/task_local_data_source.dart';
import '../datasources/task_remote_data_source.dart';

class TaskRepoImplementation implements TaskRepository {
  const TaskRepoImplementation(this._remoteDataSource, this._localDataSource);

  final TaskRemoteDataSource _remoteDataSource;
  final TaskLocalDataSource _localDataSource;

  @override
  ResultFuture<Tasks> getTasks({
    required Map<String, dynamic> values,
  }) async {
    try {
      final Tasks result = await sl<AppBloc>().state.when(
            authenticated: (User user) async =>
                await _remoteDataSource.getTasks(values: values),
            notAuthenticated: () {
              throw const APIException(
                message: 'Unknown error occured',
                statusCode: 400,
              );
            },
            offline: (Organization organization) async {
              if (values.containsKey('projects') &&
                  (values['projects'] as List<int>).isNotEmpty) {
                return await _localDataSource.getTasks(organization.id);
              }
              throw const APIException(
                //TODO: maybe do something different
                message: 'Unknown error occured',
                statusCode: 400,
              );
            },
          );

      return Right<Failure, Tasks>(result);
    } on APIException catch (e) {
      return Left<Failure, Tasks>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<TaskResponse> createTask({
    required Map<String, dynamic> values,
  }) async {
    try {
      final TaskResponse result = await sl<AppBloc>().state.when(
            authenticated: (User user) async =>
                await _remoteDataSource.createTask(
              values: values,
            ),
            notAuthenticated: () {
              throw const APIException(
                message: 'Unknown error occured',
                statusCode: 400,
              );
            },
            offline: (Organization organization) async =>
                await _localDataSource.createTask(
              values: values,
            ),
          );
      return Right<Failure, TaskResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, TaskResponse>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<Task> getTask(int id) async {
    try {
      final Task result = await sl<AppBloc>().state.when(
        authenticated: (User user) async =>
        await _remoteDataSource.getTask(
          id,
        ),
        notAuthenticated: () {
          throw const APIException(
            message: 'Unknown error occured',
            statusCode: 400,
          );
        },
        offline: (Organization organization) async =>
        await _localDataSource.getTask(
          id,
        ),
      );

      return Right<Failure, Task>(result);
    } on APIException catch (e) {
      return Left<Failure, Task>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<TaskResponse> updateTask(
    int id, {
    required Map<String, dynamic> values,
  }) async {
    try {
      final TaskResponse result = await sl<AppBloc>().state.when(
        authenticated: (User user) async =>
        await _remoteDataSource.updateTask(
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
        await _localDataSource.updateTask(
          id,
          values: values,
        ),
      );

      return Right<Failure, TaskResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, TaskResponse>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<TaskResponse> deleteTask(int id) async {
    try {
      final TaskResponse result = await sl<AppBloc>().state.when(
        authenticated: (User user) async =>
        await _remoteDataSource.deleteTask(id),
        notAuthenticated: () {
          throw const APIException(
            message: 'Unknown error occured',
            statusCode: 400,
          );
        },
        offline: (Organization organization) async =>
        await _localDataSource.deleteTask(id),
      );

      return Right<Failure, TaskResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, TaskResponse>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<Notifications> getComments(int id) async {
    try {
      final Notifications result = await _remoteDataSource.getComments(id);
      return Right<Failure, Notifications>(result);
    } on APIException catch (e) {
      return Left<Failure, Notifications>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<TaskResponse> addComment({
    required Map<String, dynamic> values,
  }) async {
    try {
      final TaskResponse result = await _remoteDataSource.addComment(
        values: values,
      );
      return Right<Failure, TaskResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, TaskResponse>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<TaskResponse> updateComment(int id,
      {required Map<String, dynamic> values}) async {
    try {
      final TaskResponse result = await _remoteDataSource.updateComment(
        id,
        values: values,
      );
      return Right<Failure, TaskResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, TaskResponse>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<TaskResponse> deleteComment(int id) async {
    try {
      final TaskResponse result = await _remoteDataSource.deleteComment(id);
      return Right<Failure, TaskResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, TaskResponse>(APIFailure.fromException(e));
    }
  }
}
