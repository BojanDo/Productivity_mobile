import 'dart:convert';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:event_bus/event_bus.dart';
import 'package:path_provider/path_provider.dart';

import '../errors/exceptions.dart';
import '../interceptors/status.dart';
import 'localdata_manager.dart';

class APIManager {
  final LocalDataManager _localStorage;

  final Dio dio;
  late PersistCookieJar cookieJar;

  Options options = Options(
    headers: <String, dynamic>{},
    contentType: 'multipart/form-data',
  );

  APIManager(this.dio, this._localStorage);

  Future<void> _initializeToken() async {
    final dynamic token = await _localStorage.getData('jwt');
    if (token != null) {
      options.headers!['Authorization'] = 'Bearer $token';
    }
  }

  Future<void> storeToken(String token) async {
    await _localStorage.saveData('jwt', token, true);
    options.headers!['Authorization'] = 'Bearer $token';
  }

  Future<void> removeToken() async {
    await _localStorage.removeData('jwt');
    options.headers?.remove('Authorization');
  }

  bool hasToken() => options.headers?.containsKey('Authorization') ?? false;

  Future<void> _initializeCookieJar() async {
    final Directory appDocDir = await getApplicationDocumentsDirectory();
    final String appDocPath = appDocDir.path;
    cookieJar = PersistCookieJar(storage: FileStorage('$appDocPath/cookies/'));
    dio.interceptors.add(CookieManager(cookieJar));
  }

  Future<void> _initializeInterceptors(EventBus eventBus) async {
    dio.interceptors.add(StatusInterceptor(eventBus: eventBus));
    //dio.interceptors.add(MethodInterceptor());
    await _initializeCookieJar();
  }

  static Future<APIManager> createInstance(
    Dio dio,
    LocalDataManager localStorage,
    EventBus eventBus,
  ) async {
    final APIManager manager = APIManager(dio, localStorage);
    await manager._initializeInterceptors(eventBus);
    await manager._initializeToken();
    return manager;
  }

  static String _getUrl(String baseUrl, String endpoint) {
    if (endpoint.isNotEmpty) {
      return '$baseUrl/$endpoint';
    }
    return baseUrl;
  }

  Future<dynamic> get(
    String baseUrl,
    String endpoint,
    Map<String, dynamic> queryParameters,
  ) async {
    try {
      print('Sent get request');
      final Response<dynamic> response = await dio.get(
        _getUrl(baseUrl, endpoint),
        options: options,
        queryParameters: queryParameters,
      );
      print('Got get request');
      return response.data;
    } on APIException {
      rethrow;
    } catch (e) {
      throwAPIException(e);
    }
  }

  Future<dynamic> post(
      String baseUrl, String endpoint, Map<String, dynamic> data) async {
    try {
      print('Sent post request');
      final Response<dynamic> response = await dio.post(
        _getUrl(baseUrl, endpoint),
        data: FormData.fromMap(data),
        options: options,
      );
      print('Got post response');
      return response.data;
    } on APIException {
      rethrow;
    } catch (e) {
      throwAPIException(e);
    }
  }

  /*Future<dynamic> postMultipart(
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
      );*/

  Future<dynamic> delete(
    String baseUrl,
    String endpoint,
    Map<String, dynamic> data,
  ) async {
    try {
      print('Sent delete request');
      final Response<dynamic> response = await dio.delete(
        _getUrl(baseUrl, endpoint),
        data: jsonEncode(data),
        options: options,
      );
      print('Sent delete request');
      return response.data;
    } on APIException {
      rethrow;
    } catch (e) {
      throwAPIException(e);
    }
  }

  Future<dynamic> put(
      String baseUrl, String endpoint, Map<String, dynamic> data) async {
    try {
      print('Sent put request');
      final Response<dynamic> response = await dio.post(
        _getUrl(baseUrl, endpoint),
        data: FormData.fromMap({...data, '_method': 'PUT'}),
        options: options,
      );
      print('Sent put request');
      return response.data;
    } on APIException {
      rethrow;
    } catch (e) {
      throwAPIException(e);
    }
  }

/*
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
*/
  Future<void> downloadFile(String url, String filePath) async {
    try {
      await dio.download(url, filePath);
    } catch (e) {
      throw const APIException(
        message: 'There was an error downloading your file',
        statusCode: 500,
      );
    }
  }

  void throwAPIException(Object e) {
    if (e is DioException && e.error is APIException) {
      throw (e.error as APIException);
    }
    throw const APIException(
      message: 'There was an unknown error',
      statusCode: 500,
    );
  }
}
