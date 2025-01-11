part of 'notifications_bloc.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState.getting({required Notifications notifications}) = _NotificationsStateGetting;
  const factory NotificationsState.loaded({required Notifications notifications, required int page}) = _NotificationsStateLoaded;
  const factory NotificationsState.error() = _NotificationsStateError;
}
