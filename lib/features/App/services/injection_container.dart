import 'package:get_it/get_it.dart';

import '../presentation/bloc/app_bloc.dart';

Future<void> initAppBlocs(GetIt sl) async {
  // App Logic
  sl.registerLazySingleton(
        () => AppBloc(),
  );
}

Future<void> initApp(GetIt sl) async {
  // Use cases
  // Repositories
  // Data Sources
}
