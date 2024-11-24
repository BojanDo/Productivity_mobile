import 'package:get_it/get_it.dart';

import '../presentation/bloc/app_bloc.dart';

Future<void> initAppBlocs(GetIt sl) async {
  final AppBloc appBloc = await AppBloc.create(sl(), sl(), sl(),sl());
  // App Logic
  sl.registerLazySingleton<AppBloc>(
    () => appBloc,
  );
}

Future<void> initApp(GetIt sl) async {
  // Use cases
  // Repositories
  // Data Sources
}
