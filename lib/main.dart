import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:productivity_mobile/widgets/pop_scope.dart';

import 'core/config/theme_data.dart';
import 'core/services/injection_container.dart';
import 'features/App/presentation/bloc/app_bloc.dart';
import 'features/Notifications/presentation/views/notifications.dart';
import 'inner.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initUtils();
  initFeatures();
  initBlocs();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /*@override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: <SingleChildWidget>[

        ],
        child: MaterialApp(
          title: 'Pages',
          routes: <String, WidgetBuilder>{
          },
          home: Scaffold(
            appBar: AppBar(title: const Text('Pages')),
            body: _buildRoutesList(),
          ),
        ),
      );*/
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Pages',
        theme: theme,
        home: BlocProvider<AppBloc>(
          create: (BuildContext context) => sl<AppBloc>(),
          child: Builder(
            builder: (BuildContext context) => GlobalPopScope(
              outerNavigator: context.read<AppBloc>().outerNavigator,
              innerNavigator: context.read<AppBloc>().innerNavigator,
              child: Navigator(
                key: context.read<AppBloc>().outerNavigator,
                onGenerateRoute: (RouteSettings settings) {
                  WidgetBuilder builder;
                  print('outer ${settings.name}');
                  switch (settings.name) {
                    case '/notifications':
                      builder = (BuildContext context) => const Notifications();
                      break;
                    default:
                      builder = (BuildContext context) => const InnerWrapper();
                  }
                  return MaterialPageRoute(builder: builder);
                },
              ),
            ),
          ),
        ),
      );
}
