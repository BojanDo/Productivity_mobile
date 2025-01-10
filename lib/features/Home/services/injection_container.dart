import 'package:get_it/get_it.dart';

import '../presentation/bloc/feed/home_feed_bloc.dart';
import '../presentation/bloc/projects/home_projects_bloc.dart';
import '../presentation/bloc/tasks/home_tasks_bloc.dart';

Future<void> initHomeBlocs(GetIt sl) async {
  // App Logic
  sl.registerFactory(() => HomeFeedBloc(sl()));
  sl.registerFactory(() => HomeTasksBloc(sl(),sl()));
  sl.registerFactory(() => HomeProjectsBloc(sl()));
}

Future<void> initHome(GetIt sl) async {
  // Use cases
  // Repositories
  // Data Sources
}
