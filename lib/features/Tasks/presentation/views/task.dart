import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:nested/nested.dart';

import '../../../../core/functions/routes.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../widgets/attachments.dart';
import '../../../../widgets/editor.dart';
import '../../../../widgets/form.dart';
import '../../../App/presentation/bloc/app_bloc.dart';
import '../../../User/domain/entities/users.dart';
import '../../domain/entities/comments.dart';
import '../../domain/entities/tasks.dart';
import '../bloc/task/task_bloc.dart';
import '../widgets/comments.dart';
import '../widgets/multiselect_field_users.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({
    super.key,
    this.id,
    required this.mode,
    this.projectId,
    required this.users,
  });

  final int? id;
  final TaskFormMode mode;
  final int? projectId;
  final Users users;

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: <SingleChildWidget>[
          BlocProvider<TaskBloc>(
            create: (BuildContext context) => sl<TaskBloc>(),
          ),
        ],
        child: TaskPageInner(
          id: id,
          projectId: projectId,
          mode: mode,
          users: users,
        ),
      );
}

class TaskPageInner extends StatefulWidget {
  const TaskPageInner({
    super.key,
    this.projectId,
    required this.mode,
    this.id,
    required this.users,
  });

  final int? id;
  final TaskFormMode mode;
  final int? projectId;
  final Users users;

  @override
  State<TaskPageInner> createState() => _TaskPageInnerState();
}

class _TaskPageInnerState extends State<TaskPageInner> {
  late bool isOnline;

  @override
  void initState() {
    isOnline = context.read<AppBloc>().state.maybeMap(
          offline: (_) => false,
          orElse: () => true,
        );
    context.read<TaskBloc>().add(TaskEvent.get(id: widget.id));
    super.initState();
  }

  Widget _comments(Task task) {
    final CommentFormBloc commentFormBloc = sl<CommentFormBloc>(
      param1: task.id,
    );
    return CommentsWidget(
      commentFormBloc: commentFormBloc,
      comments: const Comments(items: <Comment>[], total: 0),
    );
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<TaskBloc, TaskState>(
        builder: (BuildContext context, TaskState state) {
          final TaskFormBloc taskFormBloc = sl<TaskFormBloc>(
            param1: widget.mode,
            param2: TaskFormBlocParams(
              task: state.task,
              projectId: widget.projectId,
              users: widget.users,
            ),
          );

          return _form(taskFormBloc, state);
        },
      );

  Widget _form(TaskFormBloc taskFormBloc, TaskState state) =>
      BlocProvider<TaskFormBloc>.value(
        value: taskFormBloc,
        child: GlobalForm<TaskFormBloc>(
          onSuccess: () {
            routePopWithResult(sl<AppBloc>().innerNavigator, true);
          },
          title: 'Task',
          formBloc: taskFormBloc,
          fields: <Widget>[
            TextFieldBlocBuilder(
              textColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) =>
                    Theme.of(context).colorScheme.onSecondary,
              ),
              textFieldBloc: taskFormBloc.title,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                labelText: 'Task title',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            const SizedBox(height: 16),
            Editor(
              quillController: taskFormBloc.description.value,
            ),
            const SizedBox(height: 16),
            AttachmentsWidget(
              manager: taskFormBloc.attachments.value,
            ),
            const SizedBox(height: 16),
            DropdownFieldBlocBuilder<Status>(
              textColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) =>
                    Theme.of(context).colorScheme.onSecondary,
              ),
              selectFieldBloc: taskFormBloc.status,
              decoration: const InputDecoration(
                labelText: 'Status',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              itemBuilder: (BuildContext context, Status value) => FieldItem(
                child: Text(value.displayName),
              ),
            ),
            DropdownFieldBlocBuilder<String>(
              textColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) =>
                    Theme.of(context).colorScheme.onSecondary,
              ),
              selectFieldBloc: taskFormBloc.label,
              decoration: const InputDecoration(
                labelText: 'Label',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              itemBuilder: (BuildContext context, String value) => FieldItem(
                child: Text(value),
              ),
            ),
            DateTimeFieldBlocBuilder(
              textColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) =>
                    Theme.of(context).colorScheme.onSecondary,
              ),
              dateTimeFieldBloc: taskFormBloc.date,
              format: DateFormat('dd.MM.yyyy'),
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime(2100),
              decoration: const InputDecoration(
                labelText: 'Due date',
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            if (isOnline)
              Column(
                children: [
                  const SizedBox(height: 8),
                  MultiselectFieldUsers(formBloc: taskFormBloc.assigned),
                  const SizedBox(height: 16),
                  if (taskFormBloc.task != null &&
                      taskFormBloc.mode == TaskFormMode.edit)
                    state.when(
                      getting: (Task? task) => const SizedBox.shrink(),
                      loaded: (Task? task) => _comments(taskFormBloc.task!),
                    ),
                ],
              ), //_listBuilder(),
          ],
        ),
      );
}
