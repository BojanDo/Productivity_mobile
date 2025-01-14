import 'dart:async';

import 'package:sqflite/sqflite.dart';

import '../errors/exceptions.dart';

class SQLManager {
  late Database _db;

  SQLManager();

  Future<void> _initializeDatabase() async {
    //await deleteDatabase('database.db');
    _db = await openDatabase(
      'database.db',
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
        CREATE TABLE organization (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT,
          description TEXT
        )
      ''');
        await db.execute('''
        CREATE TABLE project (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          title TEXT,
          description TEXT,
          organizationId INTEGER,
          FOREIGN KEY (organizationId) REFERENCES organization (id)
        )
      ''');
        await db.execute('''
        CREATE TABLE task (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          project_id INTEGER,
          task_number TEXT,
          title TEXT,
          description TEXT,
          status TEXT,
          label TEXT,
          due_date TEXT,
          FOREIGN KEY (project_id) REFERENCES project (id)
        )
      ''');
        await db.execute('''
        CREATE TABLE document (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          title TEXT,
          path TEXT,
          taskId INTEGER,
          FOREIGN KEY (taskId) REFERENCES task (id)
        )
      ''');
        await db.insert('organization', <String, Object?>{
          'name': 'Tech Innovators',
          'description': 'A company focusing on innovative tech solutions.',
        });
        await db.insert('organization', <String, Object?>{
          'name': 'Green Builders',
          'description':
              'A construction company with a focus on eco-friendly projects.',
        });
        await db.insert('organization', <String, Object?>{
          'name': 'EduCore',
          'description':
              'An organization dedicated to educational technologies.',
        });
        await db.insert('project', <String, Object?>{
          'title': 'Project',
          'description':
              'An organization dedicated to educational technologies.',
          'organizationId': 1,
        });
        await db.insert('project', <String, Object?>{
          'title': 'Project 2',
          'description':
              'An organization dedicated to educational technologies.',
          'organizationId': 1,
        });
        await db.insert('project', <String, Object?>{
          'title': 'Project 3',
          'description':
              'An organization dedicated to educational technologies.',
          'organizationId': 2,
        });
        await db.insert('task', <String, Object?>{
          'title': 'Task 1',
          'description': '[{"insert":"gsagsah\nhas\nh\nas\nhas\n\n"}]',
          'task_number': '#1',
          'status': 'ToDo',
          'label': 'BUG',
          'due_date': '2025-01-01',
          'project_id': 1,
        });
        await db.insert('task', <String, Object?>{
          'title': 'Task 2',
          'description': '[{"insert":"gsagsah\nhas\nh\nas\nhas\n\n"}]',
          'task_number': '#2',
          'status': 'ToDo',
          'label': 'BUG',
          'due_date': '2025-01-01',
          'project_id': 1,
        });
        await db.insert('task', <String, Object?>{
          'title': 'Task 2',
          'description': '[{"insert":"gsagsah\nhas\nh\nas\nhas\n\n"}]',
          'task_number': '#3',
          'status': 'Closed',
          'label': 'BUG',
          'due_date': '2025-01-01',
          'project_id': 1,
        });
      },
    );
  }

  Future<int> storeData(String table, Map<String, dynamic> data) async {
    try {
      final int id = await _db.insert(
        table,
        data,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      return id;
    } catch (e) {
      throwSQLException(e);
      rethrow;
    }
  }

  Future<List<Map<String, dynamic>>> getData(
    String table, {
    Map<String, dynamic>? where,
  }) async {
    try {
      final List<Map<String, dynamic>> result = await _db.query(
        table,
        where: where != null ? _buildWhereClause(where) : null,
        whereArgs: where?.values.toList(),
      );
      return result;
    } catch (e) {
      throwSQLException(e);
    }
    throw const APIException(message: 'Unknown error occured', statusCode: 500);
  }

  Future<Map<String, dynamic>> getSingle(
    String table, {
    Map<String, dynamic>? where,
  }) async {
    try {
      final List<Map<String, dynamic>> result = await _db.query(
        table,
        where: where != null ? _buildWhereClause(where) : null,
        whereArgs: where?.values.toList(),
      );
      if (result.isEmpty) {
        throw const APIException(
          message: 'Task doesn\'t exist',
          statusCode: 400,
        );
      }

      return result.first;
    } catch (e) {
      throwSQLException(e);
    }
    throw const APIException(message: 'Unknown error occured', statusCode: 500);
  }


  Future<List<Map<String, dynamic>>> rawQuery(
      String sql, {
        List<Object?>? arguments,
      }) async {
    try {
      final List<Map<String, dynamic>> result = await _db.rawQuery(
        sql,
        arguments,
      );
      return result;
    } catch (e) {
      throwSQLException(e);
    }
    throw const APIException(message: 'Unknown error occured', statusCode: 500);
  }

  Future<void> updateData(
    String table,
    Map<String, dynamic> data,
    int id,
  ) async {
    try {
      await _db.update(
        table,
        data,
        where: 'id = ?',
        whereArgs: <Object?>[id],
      );
    } catch (e) {
      throwSQLException(e);
    }
  }

  Future<void> deleteData(String table, int id) async {
    try {
      await _db.delete(
        table,
        where: 'id = ?',
        whereArgs: <Object?>[id],
      );
    } catch (e) {
      throwSQLException(e);
    }
  }

  Future<void> deleteAll(String table) async {
    try {
      await _db.delete(table);
    } catch (e) {
      throwSQLException(e);
    }
  }

  Future<void> closeDatabase() async {
    await _db.close();
  }

  String _buildWhereClause(Map<String, dynamic> conditions) =>
      conditions.keys.map((String key) => '$key = ?').join(' AND ');

  void throwSQLException(Object e) {
    if (e is DatabaseException) {
      throw APIException(
        message: 'Database error: $e',
        statusCode: 500,
      );
    }
    throw const APIException(
      message: 'Unknown database error',
      statusCode: 500,
    );
  }

  static Future<SQLManager> createInstance() async {
    final SQLManager manager = SQLManager();
    await manager._initializeDatabase();
    return manager;
  }
}
