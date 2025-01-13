import 'dart:convert';

import '../../../../core/config/constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/utils/api_manager.dart';
import '../../../../core/utils/sql_manager.dart';
import '../../../../core/utils/typedef.dart';
import '../../../Notifications/domain/entities/notifications.dart';
import '../../domain/entities/task_response.dart';
import '../../domain/entities/tasks.dart';

abstract class TaskLocalDataSource {
  Future<Tasks> getTasks(int projectId);

  Future<TaskResponse> createTask({
    required Map<String, dynamic> values,
  });

  Future<Task> getTask(int id);

  Future<TaskResponse> updateTask(
    int id, {
    required Map<String, dynamic> values,
  });

  Future<TaskResponse> deleteTask(int id);
}

class TaskLocalDataSourceImplementation implements TaskLocalDataSource {
  const TaskLocalDataSourceImplementation(this._sqlManager);

  final SQLManager _sqlManager;

  @override
  Future<Task> getTask(int id) async {
    try {
      final Map<String, dynamic> result = await _sqlManager.getSingle(
        kTaskTable,
        where: <String, dynamic>{'id': id},
      );
      return Task.fromJson(result);
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<Tasks> getTasks(int projectId) async {
    try {
      final List<Map<String, dynamic>> result = await _sqlManager.getData(
        kTaskTable,
        where: <String, dynamic>{'projectId': projectId},
      );
      final DataMap response = <String, dynamic>{
        'items': result,
        'total': result.length,
      };
      return Tasks.fromJson(
        response,
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
      await _sqlManager.storeData(kTaskTable, values);
      return const TaskResponse(message: 'Successfully created task');
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<TaskResponse> updateTask(
    int id, {
    required Map<String, dynamic> values,
  }) async {
    try {
      await _sqlManager.updateData(kTaskTable, values, id);
      return const TaskResponse(message: 'Successfully updated task');
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<TaskResponse> deleteTask(int id) async {
    try {
      await _sqlManager.deleteData(kTaskTable, id);
      return const TaskResponse(message: 'Successfully deleted task');
    } on APIException {
      rethrow;
    }
  }
}
