import 'package:dio/dio.dart';
import 'package:event_bus/event_bus.dart';

import '../errors/exceptions.dart';
import '../events/unauthorized.dart';

class StatusInterceptor extends InterceptorsWrapper {
  final EventBus _eventBus;

  StatusInterceptor({required EventBus eventBus}) : _eventBus = eventBus;
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response != null) {
      switch (err.response?.statusCode) {
        case 400:
          final String errorMessage = err.response != null
              ? err.response!.data['message'] as String
              : 'Unknown error occured';
          throw APIException(
            message: errorMessage,
            statusCode: err.response?.statusCode ?? 400,
          );
        case 401:
          _eventBus.fire(UnAuthorizedEvent());
          break;
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
