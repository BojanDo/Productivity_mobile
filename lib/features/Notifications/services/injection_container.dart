import 'package:get_it/get_it.dart';

import '../../../core/config/constants.dart';
import '../../../mock/notifications_remote_data_source.dart';
import '../data/datasources/notifications_remote_data_source.dart';
import '../data/repositories/notifications_repo_implementation.dart';
import '../domain/repositories/notifications_repo.dart';
import '../domain/usecases/get_notifications.dart';

Future<void> initNotificationsBlocs(GetIt sl) async {
  // App Logic
}

Future<void> initNotifications(GetIt sl) async {
  // Use cases
  sl.registerLazySingleton(() => GetNotifications(sl()));
  // Repositories
  sl.registerLazySingleton<NotificationsRepository>(
      () => NotificationsRepoImplementation(sl()),);
  // Data Sources
  if (kUseMockData) {
    sl.registerLazySingleton<NotificationsRemoteDataSource>(
          () => MockNotificationsRemoteDataSourceImplementation(sl()),
    );
  } else {
    sl.registerLazySingleton<NotificationsRemoteDataSource>(
          () => NotificationsRemoteDataSourceImplementation(sl()),
    );
  }
}
