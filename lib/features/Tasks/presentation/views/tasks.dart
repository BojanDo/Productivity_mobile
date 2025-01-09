import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/config/routes.dart';
import '../../../../core/functions/routes.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/profile_picture.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../../Projects/domain/entities/projects.dart';
import '../../../User/domain/entities/users.dart';
import '../../domain/entities/tasks.dart';
import '../bloc/task/task_bloc.dart';
import '../bloc/tasks/tasks_bloc.dart';
import '../widgets/table.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) => BlocProvider<TasksBloc>(
        create: (BuildContext context) => sl<TasksBloc>(),
        child: body,
      );

  factory TasksPage.project(Project project) => TasksPage(
        body: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProfilePicture.project(project),
            ), // Display profile picture on the left

            title: Text(project.title), // Project name as the title
          ),
          body: TasksPageInner(
            projectId: project.id,
            canCreate: true,
          ),
        ),
      );

  factory TasksPage.user(int assignedId) => TasksPage(
        body: TasksPageInner(
          assignedId: assignedId,
        ),
      );
}

class TasksPageInner extends StatefulWidget {
  const TasksPageInner({
    super.key,
    this.projectId,
    this.assignedId,
    this.canCreate = false,
  });

  final int? projectId;
  final int? assignedId;
  final bool canCreate;

  @override
  State<TasksPageInner> createState() => _TasksPageInnerState();
}

class _TasksPageInnerState extends State<TasksPageInner> {
  @override
  void initState() {
    context.read<TasksBloc>().add(
          TasksEvent.get(
            projectId: widget.projectId,
            assignedId: widget.assignedId,
          ),
        );
    super.initState();
  }

  void _deleteTask(int id) => context.read<TasksBloc>().add(
        TasksEvent.delete(id: id),
      );

  void _editTask(int id, Users users) =>
      route(sl<AppBloc>().innerNavigator, kTaskRoute, <String, dynamic>{
        'id': id,
        'mode': TaskFormMode.edit,
        'projectId': widget.projectId,
        'users': users,
      });

  @override
  Widget build(BuildContext context) => BlocBuilder<TasksBloc, TasksState>(
        builder: (BuildContext context, TasksState state) {
          final bool isEnabled = state.maybeMap<bool>(
            getting: (_) => true,
            orElse: () => false,
          );
          final int? count = state.whenOrNull(
            loaded: (
              Tasks tasks,
              Map<Status, List<TaskSlim>> seperatedTasks,
              Users users,
            ) =>
                tasks.total,
          );

          return state.when(
            getting: (Map<Status, List<TaskSlim>> tasks) => _skeletonizer(
              tasks,
              const Users(items: <User>[], total: 0),
              isEnabled,
              null,
            ),
            loaded: (
              Tasks tasks,
              Map<Status, List<TaskSlim>> seperatedTasks,
              Users users,
            ) =>
                _skeletonizer(seperatedTasks, users, isEnabled, tasks.total),
            error: () => const Placeholder(),
          );
        },
      );

  Widget _skeletonizer(
    Map<Status, List<TaskSlim>> tasks,
    Users users,
    bool isEnabled,
    int? count,
  ) =>
      Scaffold(
        appBar: GlobalAppBar(
          title: 'Tasks',
          count: count,
          create: widget.canCreate
              ? () {
                  route(sl<AppBloc>().innerNavigator,
                      kTaskRoute, <String, dynamic>{
                    'mode': TaskFormMode.create,
                    'projectId': widget.projectId,
                    'users': users,
                  });
                }
              : null,
        ),
        body: Skeletonizer(
          enabled: isEnabled,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TasksTable(
                  status: Status.todo,
                  tasks: tasks[Status.todo]!,
                  onCellClick: (TaskSlim task) => _editTask(task.id, users),
                  onEditClick: (TaskSlim task) => _editTask(task.id, users),
                  onDeleteClick: (TaskSlim task) => _deleteTask(task.id),
                ),
                TasksTable(
                  status: Status.inProgress,
                  tasks: tasks[Status.inProgress]!,
                  onCellClick: (TaskSlim task) => _editTask(task.id, users),
                  onEditClick: (TaskSlim task) => _editTask(task.id, users),
                  onDeleteClick: (TaskSlim task) => _deleteTask(task.id),
                ),
                TasksTable(
                  status: Status.review,
                  tasks: tasks[Status.review]!,
                  onCellClick: (TaskSlim task) => _editTask(task.id, users),
                  onEditClick: (TaskSlim task) => _editTask(task.id, users),
                  onDeleteClick: (TaskSlim task) => _deleteTask(task.id),
                ),
                TasksTable(
                  status: Status.test,
                  tasks: tasks[Status.test]!,
                  onCellClick: (TaskSlim task) => _editTask(task.id, users),
                  onEditClick: (TaskSlim task) => _editTask(task.id, users),
                  onDeleteClick: (TaskSlim task) => _deleteTask(task.id),
                ),
                TasksTable(
                  status: Status.closed,
                  tasks: tasks[Status.closed]!,
                  onCellClick: (TaskSlim task) => _editTask(task.id, users),
                  onEditClick: (TaskSlim task) => _editTask(task.id, users),
                  onDeleteClick: (TaskSlim task) => _deleteTask(task.id),
                ),
              ],
            ),
          ),
        ),
      );
}
