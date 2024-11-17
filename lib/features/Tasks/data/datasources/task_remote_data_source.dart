import '../../../../core/config/constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/utils/api_manager.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/task_response.dart';
import '../../domain/entities/tasks.dart';

abstract class TaskRemoteDataSource {
  Future<Tasks> getTasks({
    required Map<String, dynamic> values,
  });

  Future<TaskResponse> createTask({
    required Map<String, dynamic> values,
  });

  Future<Task> getTask(String id);

  Future<TaskResponse> updateTask(
      String id, {
        required Map<String, dynamic> values,
      });

  Future<TaskResponse> deleteTask(String id);

  Future<TaskResponse> addComment({
    required Map<String, dynamic> values,
  });

  Future<TaskResponse> updateComment(
      String id, {
        required Map<String, dynamic> values,
      });

  Future<TaskResponse> deleteComment(String id);
}

class TaskRemoteDataSourceImplementation implements TaskRemoteDataSource {
  const TaskRemoteDataSourceImplementation(this._apiManager);

  final APIManager _apiManager;

  @override
  Future<Tasks> getTasks({
    required Map<String, dynamic> values,
  }) async {
    try {
      final dynamic response = await _apiManager.get(
        kTasksUrl,
        '',
        values,
      );

      return Tasks.fromJson(
        response as DataMap,
        (Object? item) => TaskSlim.fromJson(item as DataMap),
      );
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<TaskResponse> createTask({
    required Map<String, dynamic> values,
  }) async {
    try {
      final dynamic response = await _apiManager.post(
        kTasksUrl,
        '',
        values,
      );

      return TaskResponse.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<Task> getTask(String id) async {
    try {
      final dynamic response = await _apiManager.get(
        kTasksUrl,
        id,
        <String, dynamic>{},
      );

      return Task.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<TaskResponse> updateTask(
    String id, {
    required Map<String, dynamic> values,
  }) async {
    try {
      final dynamic response = await _apiManager.put(
        kTasksUrl,
        id,
        values,
      );

      return TaskResponse.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<TaskResponse> deleteTask(String id) async {
    try {
      final dynamic response = await _apiManager.delete(
        kTasksUrl,
        id,
        <String, dynamic>{},
      );

      return TaskResponse.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<TaskResponse> addComment({
    required Map<String, dynamic> values,
  }) async {
    try {
      final dynamic response = await _apiManager.post(
        kCommentsUrl,
        '',
        values,
      );

      return TaskResponse.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<TaskResponse> updateComment(
      String id, {
        required Map<String, dynamic> values,
      }) async {
    try {
      final dynamic response = await _apiManager.put(
        kCommentsUrl,
        id,
        values,
      );

      return TaskResponse.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<TaskResponse> deleteComment(String id) async {
    try {
      final dynamic response = await _apiManager.delete(
        kCommentsUrl,
        id,
        <String, dynamic>{},
      );

      return TaskResponse.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }
}