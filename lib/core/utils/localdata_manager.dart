import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDataManager {
  final SharedPreferences prefs;
  final FlutterSecureStorage storage;

  LocalDataManager(this.prefs, this.storage);

  Future<void> saveData(
    String name,
    dynamic data,
    bool encrypted, [
    int? expiration,
  ]) async {
    if (encrypted) {
      await storage.write(key: name, value: json.encode(data));
      await prefs.remove(name);
    } else {
      await prefs.setString(name, json.encode(data));
      await storage.delete(key: name);
    }
    if (expiration != null) {
      await prefs.setInt(
        'secure_${name}_expiration',
        DateTime.now().millisecondsSinceEpoch + (expiration * 1000),
      );
    }
  }

  Future<dynamic> getData(
    String name,
  ) async {
    String? data = prefs.getString(name);
    data ??= await storage.read(key: name);

    if (data != null) {
      if (!(await expired(name))) {
        return json.decode(data);
      }
    }
    return null; // Data not found or expired
  }

  Future<bool> expired(
    String name,
  ) async {
    final int? timestamp = prefs.getInt('secure_${name}_expiration');

    if (timestamp != null) {
      final int now = DateTime.now().millisecondsSinceEpoch;
      if (now >= timestamp) {
        await storage.delete(key: name);
        await prefs.remove(name);
        await prefs.remove('secure_${name}_expiration');
        return true;
      }
    }
    return false;
  }

  Future<void> removeData(String name) async {
    prefs.remove(name);
    storage.delete(key: name);
  }
}
