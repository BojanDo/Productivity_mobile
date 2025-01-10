import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:intl/intl.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/config/constants.dart';
import '../../../../core/config/routes.dart';
import '../../../../core/entities/paginated_list.dart';
import '../../../../core/functions/routes.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/profile_picture.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../../Projects/domain/entities/projects.dart';
import '../../../Tasks/domain/entities/tasks.dart';
import '../../../Tasks/presentation/bloc/task/task_bloc.dart';
import '../../../User/presentation/bloc/user_bloc.dart';
import '../bloc/feed/home_feed_bloc.dart';
import '../bloc/projects/home_projects_bloc.dart';
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
  void _getTasks() => context
      .read<HomeTasksBloc>()
      .add(HomeTasksEvent.get(id: context.read<UserBloc>().state.user.id));

  void _getProjects() =>
      context.read<HomeProjectsBloc>().add(const HomeProjectsEvent.get());

  @override
  void initState() {
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
              _fakeDashboard('Projects'),
              _fakeDashboard('Projects'),
              _fakeDashboard('Projects'),
              _fakeDashboard('Projects'),
            ],
          ),
        ),
      );

  Widget _notifications() => const SizedBox.shrink();

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
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: isEnabled ? Colors.white: task.status.background,
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
                      // Add some space between the status and date
                      Text(
                        DateFormat('dd. MM. yyyy')
                            .format(DateTime.parse(task.date)),
                        style: TextStyle(
                          fontSize: 12,
                          color: DateTime.parse(task.date)
                                  .isBefore(DateTime.now())
                              ? Colors.red
                              : Colors
                                  .black, // Red for past dates, black for current or future dates
                        ),
                      ),
                    ],
                  )
                ],
              ),
              onTap: () {
                route(sl<AppBloc>().innerNavigator, kTaskRoute, <String, dynamic>{
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
              title: Text(project.title),
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

  Widget _fakeDashboard(String title) => Dashboard<String>(
        isEnabled: false,
        list: const PaginatedList<String>(
          items: <String>[
            'This is a string element 1',
            'This is a string element 2',
            'This is a string element 3',
            'This is a string element 4',
            'This is a string element 5',
            'This is a string element 5',
            'This is a string element 5',
            'This is a string element 5',
            'This is a string element 5',
            'This is a string element 5',
          ],
          total: 5,
        ),
        itemBuilder: (String el) => ListTile(
          title: Text(el),
        ),
        title: title,
        onRefresh: () {},
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
              color: kSecondaryBackgroundColor,
              border: Border.all(color: kBorderColor),
            ),
            child: Column(
              children: <Widget>[
                // Top bar with title and refresh button
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding / 2,
                    vertical: kDefaultPadding / 4,
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: kBorderColor),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.refresh),
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
