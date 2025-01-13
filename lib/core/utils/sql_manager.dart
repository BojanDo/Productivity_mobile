import 'dart:async';

import 'package:sqflite/sqflite.dart';

import '../errors/exceptions.dart';

class SQLManager {
  late Database _db;

  SQLManager();

  Future<void> _initializeDatabase() async {
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
          taskNumber INTEGER,
          title TEXT,
          description TEXT,
          status TEXT,
          label TEXT,
          date TEXT,
          projectId INTEGER,
          FOREIGN KEY (projectId) REFERENCES project (id)
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
      },
    );
  }


  Future<void> storeData(String table, Map<String, dynamic> data) async {
    try {
      await _db.insert(
        table,
        data,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } catch (e) {
      throwSQLException(e);
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
