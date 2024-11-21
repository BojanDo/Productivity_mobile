import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/config/routes.dart';
import 'core/functions/routes.dart';
import 'features/App/presentation/bloc/app_bloc.dart';
import 'features/Home/presentation/views/home.dart';
import 'widgets/drawer/drawer.dart';

class InnerWrapper extends StatefulWidget {
  const InnerWrapper({super.key});

  @override
  State<InnerWrapper> createState() => _InnerWrapperState();
}

class _InnerWrapperState extends State<InnerWrapper> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications_none_outlined),
              onPressed: () {
                route(context.read<AppBloc>().outerNavigator, kNotificationsRoute);
              },
            ),
          ],
          leading: Builder(
            builder: (BuildContext context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        drawerEnableOpenDragGesture: false,
        drawer: GlobalDrawer(
          outerNavigator: context.read<AppBloc>().outerNavigator,
          innerNavigator: context.read<AppBloc>().innerNavigator,
        ),
        body: Navigator(
          key: context.read<AppBloc>().innerNavigator,
          onGenerateRoute: (RouteSettings settings) {
            WidgetBuilder builder;
            print('inner ${settings.name}');
            switch (settings.name) {
              case kHomeRoute:
                builder = (BuildContext context) => HomePage();
                break;
              case kSettingsRoute:
                builder =
                    (BuildContext context) => const Test(title: 'Settings');
                break;
              case kUserRoute:
                builder = (BuildContext context) => const Test(title: 'User');
                break;
              case kAccountRoute:
                builder =
                    (BuildContext context) => const Test(title: 'Account');
                break;
              case kOrganizationRoute:
                builder =
                    (BuildContext context) => const Test(title: 'Organization');
                break;
              case kDocumentsRoute:
                builder =
                    (BuildContext context) => const Test(title: 'Documents');
                break;
              case kProjectsRoute:
                builder =
                    (BuildContext context) => const Test(title: 'Projects');
                break;
              case kProjectRoute:
                builder =
                    (BuildContext context) => const Test(title: 'Project');
                break;
              case kTasksRoute:
                builder = (BuildContext context) => const Test(title: 'Tasks');
                break;
              case kTaskRoute:
                builder = (BuildContext context) => const Test(title: 'Task');
                break;
              default:
                builder = (BuildContext context) => const Test(title: 'Page');
            }
            return MaterialPageRoute<dynamic>(builder: builder);
          },
        ),
      );
}

