import 'package:faker/faker.dart';

import '../features/Notifications/data/datasources/notifications_remote_data_source.dart';
import '../features/Notifications/domain/entities/notification_response.dart';
import '../features/Notifications/domain/entities/notifications.dart';
import '../features/User/domain/entities/users.dart';

class MockNotificationsRemoteDataSourceImplementation
    implements NotificationsRemoteDataSource {
  const MockNotificationsRemoteDataSourceImplementation(this._faker){
    fakeUser = User(
      id: 1,
      firstname: _faker.person.firstName(),
      lastname: _faker.person.lastName(),
      email: _faker.internet.email(),
      jobTitle:
          _faker.randomGenerator.element(<String>['Owner', 'Developer']),
      organizationId: '1',
      roleName: faker.randomGenerator.element(Role.values),
    );
    final List<Notification> fakeNotifications = List<Notification>.generate(
      5,
      (int index) => Notification(
        user: fakeUser,
        taskId: 1,
        description: faker.lorem.sentences(6).join(' '),
        date: _faker.lorem.words(2).join(':'),
      ),
    );
    notifications = Notifications(items: fakeNotifications, total: fakeNotifications.length);
    response = NotificationResponse(message: _faker.lorem.words(3).join(' '));
  }

  final Faker _faker;
  late User fakeUser;
  late Notifications notifications;
  late NotificationResponse response;

  @override
  Future<Notifications> getNotifications({required Map<String, dynamic> values}) async {
    await Future.delayed(const Duration(seconds: 1));
    return notifications;
  }
}
