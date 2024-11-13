import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/entities/paginated_list.dart';
import '../../../User/domain/entities/users.dart';

part 'generated/notifications.freezed.dart';
part 'generated/notifications.g.dart';

@freezed
class Notification with _$Notification {
  const factory Notification({
    required User user,
    @JsonKey(name: 'task_id') required String taskId,
    required String description,
    required String date,
}) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}

typedef Notifications = PaginatedList<Notification>;