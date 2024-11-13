import '../../../../core/utils/typedef.dart';
import '../entities/notifications.dart';

abstract class NotificationsRepository {
  const NotificationsRepository();

  ResultFuture<Notifications> getNotifications({
    required Map<String, dynamic> values,
  });
}
