import 'package:faker/faker.dart';

import '../features/Notifications/data/datasources/notifications_remote_data_source.dart';
import '../features/Notifications/domain/entities/notifications.dart';

class MockNotificationsRemoteDataSourceImplementation
    implements NotificationsRemoteDataSource {
  const MockNotificationsRemoteDataSourceImplementation(this._faker);

  final Faker _faker;

  @override
  Future<Notifications> getNotifications({required Map<String, dynamic> values}) async {
    // TODO: implement getNotifications
    throw UnimplementedError();
  }
  
}
