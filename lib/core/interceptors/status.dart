import 'package:dio/dio.dart';

import '../errors/exceptions.dart';

class StatusInterceptor extends InterceptorsWrapper{
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response != null) {
      switch (err.response?.statusCode) {
        case 400:
        case 401:
          final String errorMessage =
              (err.response?.data['message'] as String);
          throw APIException(
            message: errorMessage,
            statusCode: err.response?.statusCode ?? 400,
          );
        default:
          throw APIException(
            message: 'There was an internal server error',
            statusCode: err.response?.statusCode ?? 500,
          );
      }
    } else {
      throw APIException(
        message: 'There was an internal server error',
        statusCode: err.response?.statusCode ?? 500,
      );
    }
  }
}