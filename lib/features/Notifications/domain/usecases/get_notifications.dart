import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/notifications.dart';
import '../repositories/notifications_repo.dart';

part 'generated/get_notifications.freezed.dart';
part 'generated/get_notifications.g.dart';

class GetNotifications extends UsecaseWithParams<Notifications, GetNotificationsParams> {
  const GetNotifications(this._repository);

  final NotificationsRepository _repository;

  @override
  ResultFuture<Notifications> call(GetNotificationsParams params) async =>
      _repository.getNotifications(
        values: params.toJson(),
      );
}

@freezed
class GetNotificationsParams with _$GetNotificationsParams {
  const factory GetNotificationsParams({
    required String page,
    String? dateFrom,
    String? dateUntil,
    @JsonKey(name: 'project_id') int? projectId,
  }) = _GetNotificationsParams;

  factory GetNotificationsParams.fromJson(Map<String, dynamic> json) =>
      _$GetNotificationsParamsFromJson(json);
}
