part of 'notifications_bloc.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.get({
    String? dateFrom,
    String? dateUntil,
    int? projectId,
  }) = _NotificationsEventGet;

  const factory NotificationsEvent.getNext({
    required Notifications currentNotifications,
    required int page,
    String? dateFrom,
    String? dateUntil,
    int? projectId,
  }) = _NotificationsEventGetNext;
}
