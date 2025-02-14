import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' show Either;
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

import '../../../../../core/errors/failure.dart';
import '../../../../../core/functions/routes.dart';
import '../../../../../core/services/injection_container.dart';
import '../../../../App/presentation/bloc/app_bloc.dart';
import '../../../../Documents/domain/entities/documents.dart';
import '../../../../Projects/domain/entities/projects.dart';
import '../../../../User/domain/entities/users.dart';
import '../../../domain/entities/comments.dart';
import '../../../domain/entities/task_response.dart';
import '../../../domain/entities/tasks.dart';
import '../../../domain/usecases/add_comment.dart';
import '../../../domain/usecases/create_task.dart';
import '../../../domain/usecases/get_task.dart';
import '../../../domain/usecases/update_task.dart';

part 'task_event.dart';

part 'task_state.dart';

part '../forms/task_form_bloc.dart';
part '../forms/comment_form_bloc.dart';

part 'generated/task_bloc.freezed.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc(GetTask getTask)
      : _getTask = getTask,
        super(
          const TaskState.getting(
            task: Task(
              id: 0,
              taskNumber: '#0',
              title: '',
              description: <Map<String, dynamic>>[
                <String, dynamic>{'insert': ''},
                <String, dynamic>{
                  'insert': '\n',
                  'attributes': <String, int>{'header': 1},
                },
              ],
              status: Status.todo,
              label: Label.feature,
              date: '',
              project: Project(
                id: 0,
                title: '',
                description: '',
              ),
              users: Users(items: <User>[], total: 0),
              //comments: Comments(items: <Comment>[], total: 0),
              documents: Documents(items: <Document>[], total: 0),
            ),
          ),
        ) {
    on<TaskEvent>(
      (TaskEvent event, Emitter<TaskState> emit) => event.when(
        get: (int? id) async {
          if(id==null){
            emit(const TaskState.loaded());
            return null;
          }
          sl<AppBloc>().add(const AppEvent.overlayAdd());
          final Either<Failure, Task> result = await _getTask(
            id,
          );
          result.fold(
            (Failure failure) {
              sl<AppBloc>().add(
                const AppEvent.error(
                  message: 'There was an unknown error',
                ),
              );
              routePop(sl<AppBloc>().innerNavigator);
            },
            (Task task) => emit(TaskState.loaded(task: task)),
          );
          sl<AppBloc>().add(const AppEvent.overlayRemove());
          return null;
        },
      ),
    );
  }

  final GetTask _getTask;
}
