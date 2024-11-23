import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';
import 'widgets/pop_scope/pop_scope.dart';
import 'widgets/pop_scope/pop_scope_bloc.dart';

import 'core/config/routes.dart';
import 'core/config/theme_data.dart';
import 'core/services/injection_container.dart';
import 'features/App/presentation/bloc/app_bloc.dart';
import 'features/App/presentation/widgets/listeners.dart';
import 'features/Auth/presentation/views/auth.dart';
import 'features/Notifications/presentation/views/notifications.dart';
import 'inner.dart';
import 'widgets/drawer/drawer_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initUtils();
  await initFeatures();
  await initBlocs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: theme,
        home: MultiBlocProvider(
          providers: <SingleChildWidget>[
            BlocProvider<AppBloc>(
              create: (BuildContext context) => sl<AppBloc>(),
            ),
            BlocProvider<DrawerBloc>(
              create: (BuildContext context) => sl<DrawerBloc>(),
            ),
            BlocProvider<PopScopeBloc>(
              create: (BuildContext context) => sl<PopScopeBloc>(),
            ),
          ],
          child: BlocBuilder<AppBloc, AppState>(
            builder: (BuildContext context, AppState state) => state.when(
              authenticated: () => AppListeners(
                child: GlobalPopScope.defaultScope(
                  child: Navigator(
                    key: context.read<AppBloc>().outerNavigator,
                    onGenerateRoute: (RouteSettings settings) {
                      WidgetBuilder builder;
                      switch (settings.name) {
                        case kNotificationsRoute:
                          builder = (BuildContext context) =>
                              const NotificationsPage();
                          break;
                        default:
                          builder =
                              (BuildContext context) => const InnerWrapper();
                      }
                      return MaterialPageRoute<dynamic>(builder: builder);
                    },
                  ),
                ),
              ),
              notAuthenticated: () => GlobalPopScope.authScope(
                child: const AuthPage(),
              ),
            ),
          ),
        ),
      );
}
