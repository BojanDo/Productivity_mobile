import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/notifications.dart';
import '../../domain/repositories/notifications_repo.dart';
import '../datasources/notifications_remote_data_source.dart';
class NotificationsRepoImplementation implements NotificationsRepository {
  const NotificationsRepoImplementation(this._remoteDataSource);

  final NotificationsRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<Notifications> getNotifications({
    required Map<String, dynamic> values,
  }) async {
    try {
      final Notifications result = await _remoteDataSource.getNotifications(
        values: values,
      );
      return Right<Failure, Notifications>(result);
    } on APIException catch (e) {
      return Left<Failure, Notifications>(APIFailure.fromException(e));
    }
  }
}
