import 'package:get_it/get_it.dart';

import '../../../core/config/constants.dart';
import '../../../mock/auth_remote_data_source.dart';
import '../data/datasources/auth_remote_data_source.dart';
import '../data/repositories/auth_repo_implementation.dart';
import '../domain/repositories/auth_repo.dart';
import '../domain/usecases/login.dart';
import '../domain/usecases/register.dart';
import '../domain/usecases/validate_email.dart';
import '../presentation/bloc/auth_bloc.dart';

Future<void> initAuthBlocs(GetIt sl) async {
  // App Logic
  sl.registerFactory(
    () => AuthBloc(loginFormBloc: sl(), registerFormBloc: sl()),
  );
  sl.registerFactory(
    () => LoginFormBloc(
      login: sl(),
      localStorage: sl(),
      apiManager: sl(),
    ),
  );
  sl.registerFactory(
    () => RegisterFormBloc(
      register: sl(), validateEmail: sl(),
    ),
  );
}

Future<void> initAuth(GetIt sl) async {
  // Use cases
  sl.registerLazySingleton(() => Login(sl()));
  sl.registerLazySingleton(() => Register(sl()));
  sl.registerLazySingleton(() => ValidateEmail(sl()));
  // Repositories
  sl.registerLazySingleton<AuthRepository>(() => AuthRepoImplementation(sl()));
  // Data Sources
  if (kUseMockData) {
    sl.registerLazySingleton<AuthRemoteDataSource>(
      () => MockAuthRemoteDataSourceImplementation(sl()),
    );
  } else {
    sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImplementation(sl()),
    );
  }
}
