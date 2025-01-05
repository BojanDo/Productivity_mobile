import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../Documents/domain/entities/documents.dart';
import '../../../../Projects/domain/entities/projects.dart';
import '../../../../User/domain/entities/users.dart';
import '../../../domain/entities/comments.dart';
import '../../../domain/entities/tasks.dart';

part 'task_event.dart';

part 'task_state.dart';

part 'generated/task_bloc.freezed.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc()
      : super(
          const TaskState.getting(
            task: Task(
              id: 0,
              taskNumber: '#0',
              title: 'Task title',
              description: <Map<String, dynamic>>[
                <String, dynamic>{'insert': 'This is a heading'},
                <String, dynamic>{
                  'insert': '\n',
                  'attributes': <String, int>{'header': 1},
                },
                <String, dynamic>{
                  'insert':
                      'This is a normal content description\nWith multiple lines\nAnd a',
                },
                <String, dynamic>{
                  'insert': '\n',
                  'attributes': <String, String>{'list': 'bullet'},
                },
                <String, dynamic>{'insert': 'list'},
                <String, dynamic>{
                  'insert': '\n',
                  'attributes': <String, String>{'list': 'bullet'},
                }
              ],
              status: Status.todo,
              label: Label.feature,
              date: '2024-01-01',
              project: Project(
                id: 0,
                title: 'Project title',
                description: 'Project description',
              ),
              users: Users(items: <User>[], total: 0),
              comments: Comments(items: <Comment>[], total: 0),
              documents: Documents(items: <Document>[], total: 0),
            ),
          ),
        ) {
    on<TaskEvent>((TaskEvent event, Emitter<TaskState> emit) {
      // TODO: implement event handler
    });
  }
}
