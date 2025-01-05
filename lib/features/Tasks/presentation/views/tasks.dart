import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/services/injection_container.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/profile_picture.dart';
import '../../../Projects/domain/entities/projects.dart';
import '../../domain/entities/tasks.dart';
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
            create: () {},
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
  const TasksPageInner(
      {super.key, this.projectId, this.assignedId, this.create});

  final int? projectId;
  final int? assignedId;
  final VoidCallback? create;

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

  @override
  Widget build(BuildContext context) => BlocBuilder<TasksBloc, TasksState>(
        builder: (BuildContext context, TasksState state) {
          final bool isEnabled = state.maybeMap<bool>(
            getting: (_) => true,
            orElse: () => false,
          );
          return Scaffold(
            appBar: GlobalAppBar(
              title: 'Tasks',
              count: state.whenOrNull(
                loaded: (
                  Tasks tasks,
                  Map<Status, List<TaskSlim>> seperatedTasks,
                ) =>
                    tasks.total,
              ),
              create: widget.create,
            ),
            body: state.when(
              getting: (Map<Status, List<TaskSlim>> tasks) =>
                  _skeletonizer(tasks, isEnabled),
              loaded: (_, Map<Status, List<TaskSlim>> tasks) =>
                  _skeletonizer(tasks, isEnabled),
              error: () => const Placeholder(),
            ), //TODO: add something for error
          );
        },
      );

  Widget _skeletonizer(Map<Status, List<TaskSlim>> tasks, bool isEnabled) =>
      Skeletonizer(
        enabled: isEnabled,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TasksTable(
                status: Status.todo,
                tasks: tasks[Status.todo]!,
                onCellClick: (TaskSlim task) {},
                onEditClick: (TaskSlim taskSlim) {},
                onDeleteClick: (TaskSlim taskSlim) => _deleteTask(taskSlim.id),
              ),
              TasksTable(
                status: Status.inProgress,
                tasks: tasks[Status.inProgress]!,
                onCellClick: (TaskSlim task) {},
                onEditClick: (TaskSlim taskSlim) {},
                onDeleteClick: (TaskSlim taskSlim) => _deleteTask(taskSlim.id),
              ),
              TasksTable(
                status: Status.review,
                tasks: tasks[Status.review]!,
                onCellClick: (TaskSlim task) {},
                onEditClick: (TaskSlim taskSlim) {},
                onDeleteClick: (TaskSlim taskSlim) => _deleteTask(taskSlim.id),
              ),
              TasksTable(
                status: Status.test,
                tasks: tasks[Status.test]!,
                onCellClick: (TaskSlim task) {},
                onEditClick: (TaskSlim taskSlim) {},
                onDeleteClick: (TaskSlim taskSlim) => _deleteTask(taskSlim.id),
              ),
              TasksTable(
                status: Status.closed,
                tasks: tasks[Status.closed]!,
                onCellClick: (TaskSlim task) {},
                onEditClick: (TaskSlim taskSlim) {},
                onDeleteClick: (TaskSlim taskSlim) => _deleteTask(taskSlim.id),
              ),
            ],
          ),
        ),
      );
}
