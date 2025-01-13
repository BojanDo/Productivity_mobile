import 'package:get_it/get_it.dart';

import '../../../core/config/constants.dart';
import '../../../mock/project_remote_data_source.dart';
import '../data/datasources/project_local_data_source.dart';
import '../data/datasources/project_remote_data_source.dart';
import '../data/repositories/project_repo_implementation.dart';
import '../domain/entities/projects.dart';
import '../domain/repositories/project_repo.dart';
import '../domain/usecases/create_project.dart';
import '../domain/usecases/delete_project.dart';
import '../domain/usecases/get_projects.dart';
import '../domain/usecases/update_project.dart';
import '../presentation/bloc/projects_bloc.dart';

Future<void> initProjectsBlocs(GetIt sl) async {
  // App Logic
  sl.registerFactory(
    () => ProjectsBloc(
      getProjects: sl(),
      deleteProject: sl(),
    ),
  );

  sl.registerFactoryParam<ProjectFormBloc, ProjectFormMode, Project?>(
    (ProjectFormMode mode, Project? project) => ProjectFormBloc(
      mode: mode,
      project: project,
      createProject: sl(),
      updateProject: sl(),
    ),
  );
}

Future<void> initProjects(GetIt sl) async {
  // Use cases
  sl.registerLazySingleton(() => CreateProject(sl()));
  sl.registerLazySingleton(() => DeleteProject(sl()));
  sl.registerLazySingleton(() => GetProjects(sl()));
  sl.registerLazySingleton(() => UpdateProject(sl()));
  // Repositories
  sl.registerLazySingleton<ProjectRepository>(
      () => ProjectRepoImplementation(sl(), sl()));
  // Data Sources
  if (kUseMockData) {
    sl.registerLazySingleton<ProjectRemoteDataSource>(
      () => MockProjectRemoteDataSourceImplementation(sl()),
    );
  } else {
    sl.registerLazySingleton<ProjectRemoteDataSource>(
      () => ProjectRemoteDataSourceImplementation(sl()),
    );
  }
  sl.registerLazySingleton<ProjectLocalDataSource>(
    () => ProjectLocalDataSourceImplementation(sl()),
  );
}
