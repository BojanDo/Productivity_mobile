import 'package:get_it/get_it.dart';

import '../../../core/config/constants.dart';
import '../../../mock/user_remote_data_source.dart';
import '../data/datasources/user_remote_data_source.dart';
import '../data/repositories/user_repo_implementation.dart';
import '../domain/entities/users.dart';
import '../domain/repositories/user_repo.dart';
import '../domain/usecases/accept_invitation.dart';
import '../domain/usecases/create_organization.dart';
import '../domain/usecases/decline_invitation.dart';
import '../domain/usecases/get_invitations.dart';
import '../domain/usecases/get_invited_users.dart';
import '../domain/usecases/get_organization.dart';
import '../domain/usecases/get_user.dart';
import '../domain/usecases/get_users.dart';
import '../domain/usecases/send_invitation.dart';
import '../domain/usecases/update_organization.dart';
import '../domain/usecases/update_user.dart';
import '../presentation/bloc/user_bloc.dart';

Future<void> initUserBlocs(GetIt sl) async {
  // App Logic
  sl.registerFactoryParam<UserBloc, User, dynamic>(
    (User user, _) => UserBloc(user, sl(), sl(), sl()),
  );
  sl.registerFactory(() => AccountFormBloc(updateUser: sl()));
  sl.registerFactory(() => OrganizationFormBloc(createOrganization: sl()));
}

Future<void> initUser(GetIt sl) async {
  // Use cases
  sl.registerLazySingleton(() => AcceptInvitation(sl()));
  sl.registerLazySingleton(() => CreateOrganization(sl()));
  sl.registerLazySingleton(() => DeclineInvitation(sl()));
  sl.registerLazySingleton(() => GetInvitations(sl()));
  sl.registerLazySingleton(() => GetInvitedUsers(sl()));
  sl.registerLazySingleton(() => GetOrganization(sl()));
  sl.registerLazySingleton(() => GetUser(sl()));
  sl.registerLazySingleton(() => GetUsers(sl()));
  sl.registerLazySingleton(() => SendInvitation(sl()));
  sl.registerLazySingleton(() => UpdateOrganization(sl()));
  sl.registerLazySingleton(() => UpdateUser(sl()));
  // Repositories
  sl.registerLazySingleton<UserRepository>(
    () => UserRepoImplementation(sl()),
  );
  // Data Sources
  if (kUseMockData) {
    sl.registerLazySingleton<UserRemoteDataSource>(
      () => MockUserRemoteDataSourceImplementation(sl()),
    );
  } else {
    sl.registerLazySingleton<UserRemoteDataSource>(
      () => UserRemoteDataSourceImplementation(sl()),
    );
  }
}
