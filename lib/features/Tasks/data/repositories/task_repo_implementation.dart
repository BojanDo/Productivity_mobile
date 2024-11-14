import 'package:dartz/dartz.dart' show Right, Left;

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/task_response.dart';
import '../../domain/entities/tasks.dart';
import '../../domain/repositories/task_repo.dart';
import '../datasources/task_remote_data_source.dart';

class TaskRepoImplementation implements TaskRepository {
  const TaskRepoImplementation(this._remoteDataSource);

  final TaskRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<Tasks> getTasks({
    required Map<String, dynamic> values,
  }) async {
    try {
      final Tasks result = await _remoteDataSource.getTasks(values: values);
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
      final TaskResponse result = await _remoteDataSource.createTask(
        values: values,
      );
      return Right<Failure, TaskResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, TaskResponse>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<Task> getTask(String id) async{
    try {
      final Task result = await _remoteDataSource.getTask(
        id,
      );
      return Right<Failure, Task>(result);
    } on APIException catch (e) {
      return Left<Failure, Task>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<TaskResponse> updateTask(
    String id, {
    required Map<String, dynamic> values,
  }) async {
    try {
      final TaskResponse result = await _remoteDataSource.updateTask(
        id,
        values: values,
      );
      return Right<Failure, TaskResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, TaskResponse>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<TaskResponse> deleteTask(String id) async {
    try {
      final TaskResponse result = await _remoteDataSource.deleteTask(id);
      return Right<Failure, TaskResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, TaskResponse>(APIFailure.fromException(e));
    }
  }

  @override
  ResultFuture<TaskResponse> addComment({required Map<String, dynamic> values,}) async{
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
  ResultFuture<TaskResponse> updateComment(String id, {required Map<String, dynamic> values}) async{
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
  ResultFuture<TaskResponse> deleteComment(String id) async{
    try {
      final TaskResponse result = await _remoteDataSource.deleteComment(id);
      return Right<Failure, TaskResponse>(result);
    } on APIException catch (e) {
      return Left<Failure, TaskResponse>(APIFailure.fromException(e));
    }
  }
}
