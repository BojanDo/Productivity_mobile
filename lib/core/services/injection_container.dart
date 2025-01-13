import 'package:dio/dio.dart';
import 'package:event_bus/event_bus.dart';
import 'package:faker/faker.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/App/services/injection_container.dart';
import '../../features/Auth/services/injection_container.dart';
import '../../features/Documents/services/injection_container.dart';
import '../../features/Home/services/injection_container.dart';
import '../../features/Notifications/services/injection_container.dart';
import '../../features/Projects/services/injection_container.dart';
import '../../features/Tasks/services/injection_container.dart';
import '../../features/User/services/injection_container.dart';
import '../../widgets/drawer/drawer_bloc.dart';
import '../../widgets/filter/filter_form_bloc.dart';
import '../../widgets/pop_scope/pop_scope_bloc.dart';
import '../utils/api_manager.dart';
import '../utils/localdata_manager.dart';
import '../utils/sql_manager.dart';

final GetIt sl = GetIt.instance;

Future<void> initFeatures() async {
  await initApp(sl);
  await initAuth(sl);
  await initUser(sl);
  await initDocuments(sl);
  await initHome(sl);
  await initNotifications(sl);
  await initProjects(sl);
  await initTasks(sl);
}

Future<void> initBlocs() async {
  await initWidgetBlocs();
  await initAppBlocs(sl);
  await initAuthBlocs(sl);
  await initDocumentsBlocs(sl);
  await initHomeBlocs(sl);
  await initNotificationsBlocs(sl);
  await initProjectsBlocs(sl);
  await initTasksBlocs(sl);
  await initUserBlocs(sl);
}

Future<void> initWidgetBlocs() async {
  sl.registerFactory(() => DrawerBloc());
  sl.registerLazySingleton(() => PopScopeBloc());
  sl.registerFactory(() => FilterFormBloc(getProjects: sl(), getUsers: sl()));
}

Future<void> initUtils() async {
  //register faker
  sl.registerLazySingleton(() => Faker());
  //event bus
  sl.registerLazySingleton(() => EventBus());
  // Initialize and register LocalDataManager
  final SharedPreferences sharedPref = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPref);
  sl.registerLazySingleton(FlutterSecureStorage.new);
  sl.registerLazySingleton(() => LocalDataManager(sl(), sl()));

  // Register external dependencies
  sl.registerLazySingleton(() => Dio());
  final APIManager apiManager =
      await APIManager.createInstance(sl(), sl(), sl());
  sl.registerLazySingleton(() => apiManager);

  final SQLManager sqlManager = await SQLManager.createInstance();
  sl.registerLazySingleton(() => sqlManager);
}
