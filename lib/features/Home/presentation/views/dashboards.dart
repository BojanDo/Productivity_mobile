import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:intl/intl.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/config/routes.dart';
import '../../../../core/entities/paginated_list.dart';
import '../../../../core/functions/functions.dart';
import '../../../../core/functions/routes.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/notifications_description.dart';
import '../../../../widgets/profile_picture.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../../Notifications/domain/entities/notifications.dart' as notif;
import '../../../Projects/domain/entities/projects.dart';
import '../../../Tasks/domain/entities/tasks.dart';
import '../../../Tasks/presentation/bloc/task/task_bloc.dart';
import '../../../User/presentation/bloc/user_bloc.dart';
import '../bloc/feed/home_feed_bloc.dart';
import '../bloc/projects/home_projects_bloc.dart';
import '../bloc/tasks/home_tasks_bloc.dart';

class DashboardsPage extends StatelessWidget {
  const DashboardsPage({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: <SingleChildWidget>[
          BlocProvider<HomeFeedBloc>(
            create: (BuildContext context) => sl<HomeFeedBloc>(),
          ),
          BlocProvider<HomeTasksBloc>(
            create: (BuildContext context) => sl<HomeTasksBloc>(),
          ),
          BlocProvider<HomeProjectsBloc>(
            create: (BuildContext context) => sl<HomeProjectsBloc>(),
          ),
        ],
        child: const DashboardsPageInner(),
      );
}

class DashboardsPageInner extends StatefulWidget {
  const DashboardsPageInner({super.key});

  @override
  State<DashboardsPageInner> createState() => _DashboardsPageInnerState();
}

class _DashboardsPageInnerState extends State<DashboardsPageInner> {
  void _getNotifications() =>
      context.read<HomeFeedBloc>().add(const HomeFeedEvent.get());

  void _getTasks() => context
      .read<HomeTasksBloc>()
      .add(HomeTasksEvent.get(id: context.read<UserBloc>().state.user.id));

  void _getProjects() =>
      context.read<HomeProjectsBloc>().add(const HomeProjectsEvent.get());

  @override
  void initState() {
    _getNotifications();
    _getTasks();
    _getProjects();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const GlobalAppBar(title: 'Dashboards'),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _notifications(),
              _tasks(),
              _projects(),
            ],
          ),
        ),
      );

  Widget _notifications() => BlocBuilder<HomeFeedBloc, HomeFeedState>(
        builder: (BuildContext context, HomeFeedState state) {
          final bool isEnabled = state.maybeMap<bool>(
            getting: (_) => true,
            orElse: () => false,
          );

          return Dashboard<notif.Notification>(
            isEnabled: isEnabled,
            list: state.notifications,
            itemBuilder: (notif.Notification notification) => ListTile(
              leading: SizedBox(
                height: 40,
                width: 40,
                child: ProfilePicture.user(notification.user),
              ),
              dense: true,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    formatDate(notification.date),
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  NotificationsDescription(
                    description: notification.description,
                  ),
                ],
              ),
              onTap: () {
                routeWithResult(sl<AppBloc>().innerNavigator, kTaskRoute,
                    (Object? result) {
                  if (result is! bool) {
                    return;
                  }
                  if (result) {
                    _getNotifications();
                    _getTasks();
                  }
                }, <String, dynamic>{
                  'id': notification.taskId,
                  'mode': TaskFormMode.edit,
                  'projectId': null,
                  'users': context.read<HomeTasksBloc>().state.users,
                });
              },
            ),
            title: 'Feed',
            onRefresh: _getNotifications,
          );
        },
      );

  Widget _tasks() => BlocBuilder<HomeTasksBloc, HomeTasksState>(
        builder: (BuildContext context, HomeTasksState state) {
          final bool isEnabled = state.maybeMap<bool>(
            getting: (_) => true,
            orElse: () => false,
          );

          return Dashboard<TaskSlim>(
            isEnabled: isEnabled,
            list: state.tasks,
            itemBuilder: (TaskSlim task) => ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    task.title,
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color:
                              isEnabled ? Colors.white : task.status.background,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4.0,
                        ),
                        child: Text(
                          task.status.displayName,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: task.status.textColor,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        DateFormat('dd. MM. yyyy')
                            .format(DateTime.parse(task.date)),
                        style: TextStyle(
                          fontSize: 12,
                          color:
                              DateTime.parse(task.date).isBefore(DateTime.now())
                                  ? Colors.red
                                  : Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              onTap: () {
                routeWithResult(sl<AppBloc>().innerNavigator, kTaskRoute,
                    (Object? result) {
                  if (result is! bool) {
                    return;
                  }
                  if (result) {
                    _getNotifications();
                    _getTasks();
                  }
                }, <String, dynamic>{
                  'id': task.id,
                  'mode': TaskFormMode.edit,
                  'projectId': null,
                  'users': state.users,
                });
              },
            ),
            title: 'My open tasks',
            onRefresh: _getTasks,
          );
        },
      );

  Widget _projects() => BlocBuilder<HomeProjectsBloc, HomeProjectsState>(
        builder: (BuildContext context, HomeProjectsState state) {
          final bool isEnabled = state.maybeMap<bool>(
            getting: (_) => true,
            orElse: () => false,
          );

          return Dashboard<Project>(
            isEnabled: isEnabled,
            list: state.projects,
            itemBuilder: (Project project) => ListTile(
              leading: SizedBox(
                width: 40,
                height: 40,
                child: ProfilePicture.project(project, isEnabled: !isEnabled),
              ),
              title: Text(
                project.title,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              onTap: () {
                route(
                  context.read<AppBloc>().innerNavigator,
                  kTasksProjectRoute,
                  <String, dynamic>{
                    'project': project,
                  },
                );
              },
            ),
            title: 'Projects',
            onRefresh: _getProjects,
          );
        },
      );
}

class Dashboard<T> extends StatelessWidget {
  const Dashboard({
    super.key,
    required this.isEnabled,
    required this.list,
    required this.itemBuilder,
    required this.title,
    required this.onRefresh,
  });

  final bool isEnabled;
  final PaginatedList<T> list;
  final Widget Function(T item) itemBuilder;
  final String title;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 300, // Fixed height of 500 pixels
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding / 2),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              border: Border.all(color: Theme.of(context).dividerTheme.color!),
            ),
            child: Column(
              children: <Widget>[
                // Top bar with title and refresh button
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding / 2,
                    vertical: kDefaultPadding / 4,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: Theme.of(context).dividerTheme.color!),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.refresh,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                        onPressed: onRefresh,
                      ),
                    ],
                  ),
                ),
                // List of items
                Expanded(
                  child: Skeletonizer(
                    enabled: isEnabled,
                    child: ListView.builder(
                      itemCount: list.items.length,
                      itemBuilder: (BuildContext context, int index) {
                        final T item = list.items[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: <Widget>[
                              itemBuilder(item),
                              const Divider(
                                height: 1,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
