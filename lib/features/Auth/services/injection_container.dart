import 'package:get_it/get_it.dart';

import '../data/datasources/auth_remote_data_source.dart';
import '../data/repositories/auth_repo_implementation.dart';
import '../domain/repositories/auth_repo.dart';
import '../domain/usecases/login.dart';
import '../domain/usecases/register.dart';

Future<void> initAuthBlocs(GetIt sl) async {
  // App Logic
}

Future<void> initAuth(GetIt sl) async {
  // Use cases
  sl.registerLazySingleton(() => Login(sl()));
  sl.registerLazySingleton(() => Register(sl()));
  // Repositories
  sl.registerLazySingleton<AuthRepository>(() => AuthRepoImplementation(sl()));
  // Data Sources
  sl.registerLazySingleton<AuthRemoteDataSource>(
          () => AuthRemoteDataSourceImplementation(sl()));
}
