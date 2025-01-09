import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

import '../../../../core/config/constants.dart';
import '../../../../core/services/injection_container.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/attachments.dart';
import '../../../../widgets/editor.dart';
import '../../../../widgets/form.dart';
import '../../../Documents/domain/entities/documents.dart';
import '../../../User/domain/entities/users.dart';
import '../../domain/entities/tasks.dart';
import '../bloc/task/task_bloc.dart';
import '../widgets/multiselect_field_users.dart';

class TaskPage extends StatelessWidget {
  const TaskPage(
      {super.key,
      this.id,
      required this.mode,
      this.projectId,
      required this.users});

  final int? id;
  final TaskFormMode mode;
  final int? projectId;
  final Users users;

  @override
  Widget build(BuildContext context) => BlocProvider<TaskBloc>(
        create: (BuildContext context) => sl<TaskBloc>(),
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
  bool _isReadOnly = true;

  quill.QuillController _quillController = quill.QuillController(
    readOnly: true,
    document: quill.Document.fromJson(<Map<String, dynamic>>[
      <String, String>{'insert': 'Welcome to the editor!\n'},
      <String, String>{'insert': 'This is the default content.\n'},
    ]),
    selection: const TextSelection.collapsed(offset: 0),
  );

  AttachmentManager attachmentManager = AttachmentManager(
    existing: <Document>[
      const Document(id: 1, title: 'Document1.pdf', path: ''),
      const Document(id: 2, title: 'Image1.png', path: ''),
    ],
    added: <File>[],
    deleted: <int>[],
  );

  @override
  void initState() {
    context.read<TaskBloc>().add(TaskEvent.get(id: widget.id));

    super.initState();
  }

  @override
  void dispose() {
    _quillController.dispose();
    super.dispose();
  }

  void _saveContent() {
    final String content =
        jsonEncode(_quillController.document.toDelta().toJson());
    final dynamic json = jsonDecode(content);
    print('Editor Content: $content');
    print(attachmentManager);
  }

  void _toggleReadOnly() {
    setState(() {
      _isReadOnly = !_isReadOnly;
      _quillController = quill.QuillController(
        readOnly: _isReadOnly, // Toggle read-only state
        document: _quillController.document,
        selection: _quillController.selection,
      );
    });
  }

  Widget _listBuilder() => Container(
        color: Colors.blue.withOpacity(0.3), // Light blue background
        child: Column(
          children: List.generate(
            50,
            (int index) => ListTile(
              title: Text('List Item ${index + 1}'),
              subtitle: Text('Subtitle for item ${index + 1}'),
              leading: CircleAvatar(
                child: Text('${index + 1}'),
              ),
            ),
          ),
        ),
      );

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
          return _form(taskFormBloc);
        },
      );

  Widget _form(TaskFormBloc taskFormBloc) => BlocProvider<TaskFormBloc>.value(
      value: taskFormBloc,
      child: GlobalForm<TaskFormBloc>(
        title: 'Task',
        formBloc: taskFormBloc,
        fields:  <Widget>[
          TextFieldBlocBuilder(
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
            selectFieldBloc: taskFormBloc.status,
            decoration: const InputDecoration(
              labelText: 'Status',
            ),
            itemBuilder: (BuildContext context, Status value) => FieldItem(
              child: Text(value.displayName),
            ),
          ),
          DropdownFieldBlocBuilder<String>(
            selectFieldBloc: taskFormBloc.label,
            decoration: const InputDecoration(
              labelText: 'Label',
            ),
            itemBuilder: (BuildContext context, String value) => FieldItem(
              child: Text(value),
            ),
          ),
          DateTimeFieldBlocBuilder(
            dateTimeFieldBloc: taskFormBloc.date,
            format: DateFormat('dd.MM.yyyy'),
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2100),
            decoration: const InputDecoration(
              labelText: 'Due date',
            ),
          ),
          const SizedBox(height: 8),
          MultiselectFieldUsers(formBloc: taskFormBloc.assigned),
          const SizedBox(height: 16),
          _listBuilder(),
        ],
      ));
}
