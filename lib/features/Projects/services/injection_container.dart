import 'package:get_it/get_it.dart';

import '../data/datasources/project_remote_data_source.dart';
import '../data/repositories/project_repo_implementation.dart';
import '../domain/repositories/project_repo.dart';
import '../domain/usecases/create_project.dart';
import '../domain/usecases/delete_project.dart';
import '../domain/usecases/get_projects.dart';
import '../domain/usecases/update_project.dart';

Future<void> initProjectsBlocs(GetIt sl) async {
  // App Logic
}

Future<void> initProjects(GetIt sl) async {
  // Use cases
  sl.registerLazySingleton(() => CreateProject(sl()));
  sl.registerLazySingleton(() => DeleteProject(sl()));
  sl.registerLazySingleton(() => GetProjects(sl()));
  sl.registerLazySingleton(() => UpdateProject(sl()));
  // Repositories
  sl.registerLazySingleton<ProjectRepository>(() => ProjectRepoImplementation(sl()));
  // Data Sources
  sl.registerLazySingleton<ProjectRemoteDataSource>(
        () => ProjectRemoteDataSourceImplementation(sl()),
  );
}
