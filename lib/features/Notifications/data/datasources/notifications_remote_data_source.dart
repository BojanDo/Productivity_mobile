import '../../../../core/config/constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/utils/api_manager.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/notifications.dart';

abstract class NotificationsRemoteDataSource {
  Future<Notifications> getNotifications({
    required Map<String, dynamic> values,
  });
}

class NotificationsRemoteDataSourceImplementation
    implements NotificationsRemoteDataSource {
  const NotificationsRemoteDataSourceImplementation(this._apiManager);

  final APIManager _apiManager;

  @override
  Future<Notifications> getNotifications({
    required Map<String, dynamic> values,
  }) async {
    try {
      final dynamic response = await _apiManager.post(
        kNotificationsUrl,
        '',
        values,
      );

      return Notifications.fromJson(
        response as DataMap,
        (Object? item) => Notification.fromJson(item as DataMap),
      );
    } on APIException {
      rethrow;
    }
  }
}
