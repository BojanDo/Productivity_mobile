import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/notification_response.freezed.dart';
part 'generated/notification_response.g.dart';

@freezed
class NotificationResponse with _$NotificationResponse {
  const factory NotificationResponse({
    @Default(true) bool status,
    required String message,
}) = _NotificationResponse;

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseFromJson(json);
}

