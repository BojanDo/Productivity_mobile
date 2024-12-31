import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/injection_container.dart';
import '../bloc/tasks/tasks_bloc.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<TasksBloc>(
        create: (BuildContext context) => sl<TasksBloc>(),
        child: const TasksPageInner(),
      );
}

class TasksPageInner extends StatefulWidget {
  const TasksPageInner({super.key});

  @override
  State<TasksPageInner> createState() => _TasksPageInnerState();
}

class _TasksPageInnerState extends State<TasksPageInner> {
  @override
  void initState() {
    context.read<TasksBloc>().add(const TasksEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
