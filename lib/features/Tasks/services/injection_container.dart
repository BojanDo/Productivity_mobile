import 'package:get_it/get_it.dart';

import '../../../core/config/constants.dart';
import '../../../mock/task_remote_data_source.dart';
import '../data/datasources/task_remote_data_source.dart';
import '../data/repositories/task_repo_implementation.dart';
import '../domain/repositories/task_repo.dart';
import '../domain/usecases/add_comment.dart';
import '../domain/usecases/create_task.dart';
import '../domain/usecases/delete_comment.dart';
import '../domain/usecases/delete_task.dart';
import '../domain/usecases/get_task.dart';
import '../domain/usecases/get_tasks.dart';
import '../domain/usecases/update_comment.dart';
import '../domain/usecases/update_task.dart';

Future<void> initTasksBlocs(GetIt sl) async {
  // App Logic
}

Future<void> initTasks(GetIt sl) async {
  // Use cases
  sl.registerLazySingleton(() => AddComment(sl()));
  sl.registerLazySingleton(() => CreateTask(sl()));
  sl.registerLazySingleton(() => DeleteComment(sl()));
  sl.registerLazySingleton(() => DeleteTask(sl()));
  sl.registerLazySingleton(() => GetTask(sl()));
  sl.registerLazySingleton(() => GetTasks(sl()));
  sl.registerLazySingleton(() => UpdateComment(sl()));
  sl.registerLazySingleton(() => UpdateTask(sl()));
  // Repositories
  sl.registerLazySingleton<TaskRepository>(() => TaskRepoImplementation(sl()));
  // Data Sources
  if (kUseMockData) {
    sl.registerLazySingleton<TaskRemoteDataSource>(
          () => MockTaskRemoteDataSourceImplementation(sl()),
    );
  } else {
    sl.registerLazySingleton<TaskRemoteDataSource>(
          () => TaskRemoteDataSourceImplementation(sl()),
    );
  }
}
