import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/config/routes.dart';
import 'core/functions/routes.dart';
import 'features/App/presentation/bloc/app_bloc.dart';
import 'features/App/presentation/views/settings.dart';
import 'features/Auth/presentation/views/auth.dart';
import 'features/Documents/presentation/views/documents.dart';
import 'features/Home/presentation/views/home.dart';
import 'features/Projects/domain/entities/projects.dart';
import 'features/Projects/presentation/bloc/projects_bloc.dart';
import 'features/Projects/presentation/views/project.dart';
import 'features/Projects/presentation/views/projects.dart';
import 'features/Tasks/presentation/bloc/task/task_bloc.dart';
import 'features/Tasks/presentation/views/task.dart';
import 'features/Tasks/presentation/views/tasks.dart';
import 'features/User/domain/entities/organizations.dart';
import 'features/User/domain/entities/users.dart';
import 'features/User/presentation/bloc/user_bloc.dart';
import 'features/User/presentation/views/account.dart';
import 'features/User/presentation/views/invitations.dart';
import 'features/User/presentation/views/invite_users.dart';
import 'features/User/presentation/views/organization.dart';
import 'features/User/presentation/views/user.dart';
import 'widgets/drawer/drawer.dart';

class InnerWrapper extends StatefulWidget {
  const InnerWrapper({super.key});

  @override
  State<InnerWrapper> createState() => _InnerWrapperState();
}

class _InnerWrapperState extends State<InnerWrapper> {
  @override
  Widget build(BuildContext context) => BlocBuilder<AppBloc, AppState>(
        builder: (BuildContext context, AppState state) => Scaffold(
            appBar: AppBar(
              actions: <Widget>[
                state.maybeWhen(
                  authenticated: (_) => IconButton(
                    icon: const Icon(Icons.notifications_none_outlined),
                    onPressed: () {
                      route(
                        context.read<AppBloc>().outerNavigator,
                        kNotificationsRoute,
                      );
                    },
                  ),
                  orElse: () => const SizedBox.shrink(),
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
            drawer: GlobalDrawer(),
            body: Navigator(
              key: context.read<AppBloc>().innerNavigator,
              onGenerateRoute: (RouteSettings settings) {
                WidgetBuilder builder;
                switch (settings.name) {
                  case kHomeRoute:
                    builder = (BuildContext context) => state.when(
                          authenticated: (User user) => const HomePage(),
                          notAuthenticated: () => const SizedBox.shrink(),
                          offline: (Organization organization) =>
                              const ProjectsPage(),
                        );
                    break;
                  case kSettingsRoute:
                    builder = (BuildContext context) => const SettingsPage();
                    break;
                  case kUserRoute:
                    builder = (BuildContext context) => const UserInfoPage();
                    break;
                  case kAccountRoute:
                    builder = (BuildContext context) => const AccountPage();
                    break;
                  case kOrganizationRoute:
                    builder =
                        (BuildContext context) => const OrganizationPage();
                    break;
                  case kInvitationsRoute:
                    builder = (BuildContext cotext) => const InvigationsPage();
                    break;
                  case kInviteUsersRoute:
                    builder = (BuildContext cotext) => const InviteUsersPage();
                    break;
                  case kDocumentsRoute:
                    builder = (BuildContext context) => const DocumentsPage();
                    break;
                  case kProjectsRoute:
                    builder = (BuildContext context) => const ProjectsPage();
                    break;
                  case kProjectRoute:
                    final Map<String, dynamic>? args =
                        settings.arguments as Map<String, dynamic>?;
                    builder = (BuildContext context) => ProjectPage(
                          mode: args?['mode'] as ProjectFormMode,
                          project: args?['project'] as Project?,
                        );
                    break;
                  case kTasksProjectRoute:
                    final Map<String, dynamic>? args =
                        settings.arguments as Map<String, dynamic>?;
                    builder = (BuildContext context) =>
                        TasksPage.project(args?['project'] as Project);
                    break;
                  case kTasksUserRoute:
                    builder = (BuildContext context) => state.when(
                          authenticated: (User user) => TasksPage.user(user.id),
                          notAuthenticated: () => const SizedBox.shrink(),
                          offline: (Organization organization) =>
                              const SizedBox.shrink(),
                        );
                    break;
                  case kTaskRoute:
                    final Map<String, dynamic>? args =
                        settings.arguments as Map<String, dynamic>?;
                    builder = (BuildContext context) => TaskPage(
                          id: args?['id'] as int?,
                          projectId: args?['projectId'] as int?,
                          mode: args?['mode'] as TaskFormMode,
                          users: args?['users'] as Users,
                        );
                    break;
                  default:
                    builder = (BuildContext context) => const HomePage();
                }
                return MaterialPageRoute<dynamic>(builder: builder);
              },
            )),
      );
}
