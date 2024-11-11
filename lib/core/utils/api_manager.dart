import 'dart:convert';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:path_provider/path_provider.dart';

import '../errors/exceptions.dart';
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
    manager._initializeErrorHandler();
    await manager._initializeCookieJar();
    return manager;
  }

  Future<void> _initializeCookieJar() async {
    if (!kIsWeb) {
      final Directory appDocDir = await getApplicationDocumentsDirectory();
      final String appDocPath = appDocDir.path;
      cookieJar =
          PersistCookieJar(storage: FileStorage('$appDocPath/cookies/'));
      dio.interceptors.add(CookieManager(cookieJar));
    }
  }

  void _initializeErrorHandler() {
    dio.interceptors.add(InterceptorsWrapper(
      onResponse:
          (Response<dynamic> response, ResponseInterceptorHandler handler) =>
              handler.next(response),
      onError: (DioException error, ErrorInterceptorHandler handler) {
        if (error.response != null) {
          switch (error.response?.statusCode) {
            case 400:
            case 401:
              final String errorMessage =
                  (error.response?.data['message'] as String) ?? '';
              throw APIException(
                message: errorMessage,
                statusCode: error.response?.statusCode ?? 400,
              );
            default:
              throw APIException(
                message: 'There was an internal server error',
                statusCode: error.response?.statusCode ?? 500,
              );
          }
        } else {
          throw APIException(
            message: 'There was an internal server error',
            statusCode: error.response?.statusCode ?? 500,
          );
        }
      },
    ));
  }

  String _getUrl(String baseUrl, String endpoint) {
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
    }catch (e) {
      throw const APIException(message: 'There was an unknown error', statusCode: 500);
    }
  }

  Future<dynamic> post(
    String baseUrl,
    String endpoint,
    Map<String, dynamic> data,
  ) async {
    try {
      final Response<dynamic> response = await dio.post(
        _getUrl(baseUrl, endpoint),
        data: FormData.fromMap(data),
        options: options,
      );
      
      return response.data;
    } on APIException {
      rethrow;
    }catch (e) {
      throw const APIException(message: 'There was an unknown error', statusCode: 500);
    }
  }

  Future<dynamic> delete(
    String baseUrl,
    String endpoint,
    dynamic data,
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
    }catch (e) {
      throw const APIException(message: 'There was an unknown error', statusCode: 500);
    }
  }

  Future<dynamic> put(
    String baseUrl,
    String endpoint,
    dynamic data,
  ) async {
    try {
      final Response<dynamic> response = await dio.put(
        _getUrl(baseUrl, endpoint),
        data: jsonEncode(data),
        options: options,
      );
      
      return response.data;
    } on APIException {
      rethrow;
    }catch (e) {
      throw const APIException(message: 'There was an unknown error', statusCode: 500);
    }
  }
}
