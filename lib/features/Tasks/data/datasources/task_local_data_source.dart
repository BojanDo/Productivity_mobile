import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/config/constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/utils/api_manager.dart';
import '../../../../core/utils/sql_manager.dart';
import '../../../../core/utils/typedef.dart';
import '../../../Notifications/domain/entities/notifications.dart';
import '../../domain/entities/task_response.dart';
import '../../domain/entities/tasks.dart';

const List<String> taskLocalDataSourceField = <String>[
  'id',
  'task_number',
  'title',
  'description',
  'status',
  'label',
  'due_date',
  'project_id',
];

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
      final Map<String, dynamic> mutableResult =
          Map<String, dynamic>.from(result);

      if (mutableResult.containsKey('description') &&
          mutableResult['description'] != null) {
        mutableResult['description'] =
            jsonDecode(mutableResult['description'] as String);
      }

      if (mutableResult.containsKey('project_id') &&
          mutableResult['project_id'] != null) {
        final int projectId = mutableResult['project_id'] as int;
        final Map<String, dynamic> projectResult = await _sqlManager.getSingle(
          kProjectsTable,
          where: <String, dynamic>{'id': projectId},
        );
        mutableResult['project'] = projectResult;
        mutableResult.remove('project_id');
      }
      mutableResult['assigned_users'] = <String, dynamic>{
        'items': [],
        'total': 0,
      };

      final List<Map<String, dynamic>> resultDocuments =
          await _sqlManager.getData(
        kDocumentsTable,
        where: <String, dynamic>{'taskId': id},
      );
      mutableResult['documents'] = <String, dynamic>{
        'items': resultDocuments,
        'total': resultDocuments.length,
      };

      return Task.fromJson(mutableResult);
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<Tasks> getTasks(int projectId) async {
    try {
      final List<Map<String, dynamic>> result = await _sqlManager.getData(
        kTaskTable,
        where: <String, dynamic>{'project_id': projectId},
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
      values['task_number'] =
          await getMaxTaskNumber((values['project_id'] as int));
      final Map<String, dynamic> filteredValues =
          Map<String, dynamic>.fromEntries(
        values.entries.where(
          (MapEntry<String, dynamic> entry) =>
              taskLocalDataSourceField.contains(entry.key),
        ),
      );
      final int taskId =
          await _sqlManager.storeData(kTaskTable, filteredValues);

      saveDoucments(values,taskId);

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
      final Map<String, dynamic> filteredValues =
          Map<String, dynamic>.fromEntries(
        values.entries.where(
          (MapEntry<String, dynamic> entry) =>
              taskLocalDataSourceField.contains(entry.key),
        ),
      );

      await _sqlManager.updateData(kTaskTable, filteredValues, id);

      saveDoucments(values,id);

      if (values.containsKey('delete_documents[]') &&
          values['delete_documents[]'] is List<int>) {
        final List<int> documentIdsToDelete = values['delete_documents[]'] as List<int>;

        for (final int documentId in documentIdsToDelete) {
          final Map<String, dynamic> document = await _sqlManager.getSingle(
            kDocumentsTable,
            where: <String, dynamic>{'id': documentId},
          );
          if (document.isNotEmpty) {
            final String documentPath = document['path'] as String;
            await _deleteFile(documentPath);
            await _sqlManager.deleteData(kDocumentsTable, documentId);
          }
        }
      }

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

  Future<String> getMaxTaskNumber(int projectId) async {
    try {
      final Tasks tasks = await getTasks(projectId);
      final int maxTaskNumber = tasks.items.map((TaskSlim task) {
        final String taskNumber = task.taskNumber;
        return int.tryParse(taskNumber.replaceFirst('#', '')) ?? 0;
      }).fold<int>(0, (int prev, int curr) => curr > prev ? curr : prev);
      return '#${maxTaskNumber + 1}';
    } catch (e) {
      throw const APIException(
          message: 'Failed to get max task number', statusCode: 400);
    }
  }

  Future<void> _deleteFile(String filePath) async {
    final File file = File(filePath);
    if (await file.exists()) {
      await file.delete();
    }
  }

  void saveDoucments(Map<String, dynamic> values, int taskId) async{
    if (values.containsKey('documents[]') &&
        values['documents[]'] is List<MultipartFile>) {
      final List<MultipartFile> documents =
      values['documents[]'] as List<MultipartFile>;

      for (final MultipartFile document in documents) {
        final String uuidFileName =
            '${const Uuid().v4()}${_getFileExtension(document.filename)}';
        final String appFolderPath = await _getAppFolderPath();
        final String filePath = '$appFolderPath/$uuidFileName';

        await _saveFileToPath(document, filePath);

        final Map<String, dynamic> documentValues = <String, dynamic>{
          'title': document.filename,
          'path': filePath,
          'taskId': taskId,
        };

        await _sqlManager.storeData(kDocumentsTable, documentValues);
      }
    }
  }


  String _getFileExtension(String? fileName) => fileName != null && fileName.contains('.')
        ? fileName.substring(fileName.lastIndexOf('.'))
        : '';

  Future<String> _getAppFolderPath() async {
    final Directory appDir = await getApplicationDocumentsDirectory();
    return appDir.path;
  }

  Future<void> _saveFileToPath(MultipartFile document, String filePath) async {
    final File file = File(filePath);
    final Stream<List<int>> fileStream = document.finalize();

    final IOSink sink = file.openWrite();
    await for (final List<int> chunk in fileStream) {
      sink.add(chunk);
    }
    await sink.close();
  }
}
