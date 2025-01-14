import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:nested/nested.dart';

import 'core/config/constants.dart';
import 'core/config/routes.dart';
import 'core/config/theme_data.dart';
import 'core/services/injection_container.dart';
import 'features/App/presentation/bloc/app_bloc.dart';
import 'features/App/presentation/widgets/listeners.dart';
import 'features/Auth/presentation/views/auth.dart';
import 'features/Notifications/presentation/views/notifications.dart';
import 'features/User/domain/entities/organizations.dart';
import 'features/User/domain/entities/users.dart';
import 'features/User/presentation/bloc/user_bloc.dart';
import 'inner.dart';
import 'widgets/drawer/drawer_bloc.dart';
import 'widgets/pop_scope/pop_scope.dart';
import 'widgets/pop_scope/pop_scope_bloc.dart';
import 'widgets/theme/theme_bloc.dart';

void main() async {
  FlutterNativeSplash.preserve(
      widgetsBinding: WidgetsFlutterBinding.ensureInitialized());
  await initUtils();
  await initFeatures();
  await initBlocs();
  FlutterNativeSplash.remove();
  runApp(BlocProvider<ThemeBloc>(
    create: (_) => ThemeBloc(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<ThemeBloc, ThemeState>(
        builder: (BuildContext context, ThemeState state) => MaterialApp(
          theme: state.themeData,
          home: MultiBlocProvider(
            providers: <SingleChildWidget>[
              BlocProvider<AppBloc>(
                create: (BuildContext context) => sl<AppBloc>(),
              ),
              BlocProvider<PopScopeBloc>(
                create: (BuildContext context) => sl<PopScopeBloc>(),
              ),
            ],
            child: BlocBuilder<AppBloc, AppState>(
              builder: (BuildContext context, AppState state) => AppListeners(
                child: state.when(
                  authenticated: (User user) => MultiBlocProvider(
                    providers: <SingleChildWidget>[
                      BlocProvider<DrawerBloc>(
                        create: (BuildContext context) => sl<DrawerBloc>(),
                      ),
                      BlocProvider<UserBloc>(
                        create: (BuildContext context) =>
                            sl<UserBloc>(param1: user),
                      ),
                    ],
                    child: GlobalPopScope.defaultScope(
                      child: authenticatedNavigator(context),
                    ),
                  ),
                  notAuthenticated: () =>
                      GlobalPopScope.authScope(child: const AuthPage()),
                  offline: (Organization organization) => MultiBlocProvider(
                    providers: <SingleChildWidget>[
                      BlocProvider<DrawerBloc>(
                        create: (BuildContext context) => sl<DrawerBloc>(),
                      ),
                    ],
                    child: GlobalPopScope.defaultScope(
                      child: authenticatedNavigator(context),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  Navigator authenticatedNavigator(BuildContext context) => Navigator(
        key: context.read<AppBloc>().outerNavigator,
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          switch (settings.name) {
            case kNotificationsRoute:
              builder = (BuildContext context) => const NotificationsPage();
              break;
            default:
              builder = (BuildContext context) => const InnerWrapper();
          }
          return MaterialPageRoute<dynamic>(builder: builder);
        },
      );
}
