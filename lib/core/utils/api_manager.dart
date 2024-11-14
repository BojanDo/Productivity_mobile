import 'dart:convert';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:path_provider/path_provider.dart';

import '../errors/exceptions.dart';
import '../interceptors/status.dart';
import 'localdata_manager.dart';

class APIManager {
  final Dio dio;
  late PersistCookieJar cookieJar;

  Options options = Options(
    contentType: 'application/x-www-form-urlencoded',
  );

  APIManager(this.dio);

  static Future<APIManager> createInstance(
    Dio dio,
    LocalDataManager localStorage,
  ) async {
    final APIManager manager = APIManager(dio);
    await manager._initializeInterceptors();
    return manager;
  }

  Future<void> _initializeCookieJar() async {
    final Directory appDocDir = await getApplicationDocumentsDirectory();
    final String appDocPath = appDocDir.path;
    cookieJar = PersistCookieJar(storage: FileStorage('$appDocPath/cookies/'));
    dio.interceptors.add(CookieManager(cookieJar));
  }

  Future<void> _initializeInterceptors() async {
    dio.interceptors.add(StatusInterceptor());
    await _initializeCookieJar();
  }

  static String _getUrl(String baseUrl, String endpoint) {
    if (endpoint.isNotEmpty) {
      return '$baseUrl$endpoint';
    }
    return baseUrl;
  }

  Future<dynamic> get(
    String baseUrl,
    String endpoint,
    Map<String, dynamic> queryParameters,
  ) async {
    try {
      final Response<dynamic> response = await dio.get(
        _getUrl(baseUrl, endpoint),
        options: options,
        queryParameters: queryParameters,
      );

      return response.data;
    } on APIException {
      rethrow;
    } catch (e) {
      throw const APIException(
        message: 'There was an unknown error',
        statusCode: 500,
      );
    }
  }

  Future<dynamic> post(
    String baseUrl,
    String endpoint,
    Map<String, dynamic> data, {
    Options? options,
  }) async {
    try {
      final Response<dynamic> response = await dio.post(
        _getUrl(baseUrl, endpoint),
        data: FormData.fromMap(data),
        options: options ?? this.options,
      );

      return response.data;
    } on APIException {
      rethrow;
    } catch (e) {
      throw const APIException(
        message: 'There was an unknown error',
        statusCode: 500,
      );
    }
  }

  Future<dynamic> postMultipart(
    String baseUrl,
    String endpoint,
    Map<String, dynamic> data,
  ) async =>
      await post(
        baseUrl,
        endpoint,
        data,
        options: options.copyWith(
          contentType: 'multipart/form-data',
        ),
      );

  Future<dynamic> delete(
    String baseUrl,
    String endpoint,
    Map<String, dynamic> data,
  ) async {
    try {
      final Response<dynamic> response = await dio.delete(
        _getUrl(baseUrl, endpoint),
        data: jsonEncode(data),
        options: options,
      );

      return response.data;
    } on APIException {
      rethrow;
    } catch (e) {
      throw const APIException(
        message: 'There was an unknown error',
        statusCode: 500,
      );
    }
  }

  Future<dynamic> put(
    String baseUrl,
    String endpoint,
    Map<String, dynamic> data, {
    Options? options,
  }) async {
    try {
      final Response<dynamic> response = await dio.put(
        _getUrl(baseUrl, endpoint),
        data: FormData.fromMap(data),
        options: options,
      );

      return response.data;
    } on APIException {
      rethrow;
    } catch (e) {
      throw const APIException(
        message: 'There was an unknown error',
        statusCode: 500,
      );
    }
  }

  Future<dynamic> putMultipart(
    String baseUrl,
    String endpoint,
    Map<String, dynamic> data,
  ) async =>
      await put(
        baseUrl,
        endpoint,
        data,
        options: options.copyWith(
          contentType: 'multipart/form-data',
        ),
      );
}
