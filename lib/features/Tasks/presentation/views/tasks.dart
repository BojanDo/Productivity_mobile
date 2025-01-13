import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/config/routes.dart';
import '../../../../core/functions/routes.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/filter/filter_form_bloc.dart';
import '../../../../widgets/filter/filters.dart';
import '../../../../widgets/profile_picture.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../../Projects/domain/entities/projects.dart';
import '../../../User/domain/entities/users.dart';
import '../../domain/entities/tasks.dart';
import '../bloc/task/task_bloc.dart';
import '../bloc/tasks/tasks_bloc.dart';
import '../widgets/table.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => BlocProvider<TasksBloc>(
        create: (BuildContext context) => sl<TasksBloc>(),
        child: TasksFilterProvider(child: child),
      );

  factory TasksPage.project(Project project) => TasksPage(
        child: Scaffold(
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
        child: TasksPageInner(
          assignedId: assignedId,
        ),
      );
}

class TasksFilterProvider extends StatelessWidget {
  const TasksFilterProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => BlocProvider<FilterFormBloc>.value(
        value: context.read<TasksBloc>().filterFormBloc,
        child: child,
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
    if(widget.projectId!=null) {
      context.read<TasksBloc>().filterFormBloc.initialize(projects: <int>[widget.projectId!]);
    }
    if(widget.assignedId!=null) {
      context.read<TasksBloc>().filterFormBloc.initialize(assigned: <int>[widget.assignedId!]);
    }
    _getTasks();
    super.initState();
  }

  void _getTasks() {
    context.read<TasksBloc>().add(
          TasksEvent.get(
            projectId: widget.projectId,
            assignedId: widget.assignedId,
          ),
        );
  }

  void _deleteTask(int id) => context.read<TasksBloc>().add(
        TasksEvent.delete(id: id),
      );

  void _editTask(int id, Users users) =>
      routeWithResult(sl<AppBloc>().innerNavigator, kTaskRoute,
          (Object? result) {
        if (result is! bool) {
          return;
        }
        if (result) {
          _getTasks();
        }
      }, <String, dynamic>{
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
          filters: <FilterType>[
            if(widget.projectId==null)
              FilterType.project,
            if(widget.assignedId==null)
              FilterType.assigned,
            FilterType.status,
            FilterType.label,
            FilterType.date,
          ],
          filterFormBloc: context.read<TasksBloc>().filterFormBloc,
          filter: (){
            _getTasks();
          },
          create: widget.canCreate
              ? () {
                  routeWithResult(sl<AppBloc>().innerNavigator, kTaskRoute,
                      (Object? result) {
                    if (result is! bool) {
                      return;
                    }
                    if (result) {
                      _getTasks();
                    }
                  }, <String, dynamic>{
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
                for(Status status in <Status>[Status.todo,Status.inProgress,Status.review,Status.test,Status.closed])
                  TasksTable(
                    status: status,
                    tasks: tasks[status]!,
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
