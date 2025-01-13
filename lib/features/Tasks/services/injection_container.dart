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
import '../domain/usecases/get_comments.dart';
import '../domain/usecases/get_task.dart';
import '../domain/usecases/get_tasks.dart';
import '../domain/usecases/update_comment.dart';
import '../domain/usecases/update_task.dart';
import '../presentation/bloc/comments/comments_bloc.dart';
import '../presentation/bloc/task/task_bloc.dart';
import '../presentation/bloc/tasks/tasks_bloc.dart';

Future<void> initTasksBlocs(GetIt sl) async {
  // App Logic
  sl.registerFactory(
    () => TasksBloc(getTasks: sl(), deleteTask: sl(), getUsers: sl(), filterFormBloc: sl()),
  );

  sl.registerFactory(() => TaskBloc(sl()));
  sl.registerFactoryParam<TaskFormBloc, TaskFormMode, TaskFormBlocParams>(
    (TaskFormMode mode, TaskFormBlocParams params) => TaskFormBloc(
      mode: mode,
      task: params.task,
      projectId: params.projectId,
      users: params.users,
      createTask: sl(),
      updateTask: sl(),
    ),
  );

  sl.registerFactoryParam<CommentsBloc, int, dynamic>(
    (int taskId, _) => CommentsBloc(taskId, sl()),
  );

  sl.registerFactoryParam<CommentFormBloc, int, dynamic>(
    (int taskId, _) => CommentFormBloc(
      taskId: taskId,
      addComment: sl(),
    ),
  );
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
  sl.registerLazySingleton(() => GetComments(sl()));
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
