import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/entities/paginated_list.dart';
import '../../../../../core/errors/failure.dart';
import '../../../domain/entities/tasks.dart';
import '../../../domain/usecases/get_tasks.dart';

part 'tasks_event.dart';

part 'tasks_state.dart';

part 'generated/tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc({required GetTasks getTasks})
      : _getTasks = getTasks,
        super(
          TasksState.getting(
            tasks: Tasks(
              items: <TaskSlim>[
                for (int statusIndex = 0; statusIndex < 5; statusIndex++)
                  ...List<TaskSlim>.generate(
                    2,
                    (int index) => TaskSlim(
                      id: statusIndex * 2 + index,
                      title: 'This is a task title',
                      status: <Status>[
                        Status.todo,
                        Status.inProgress,
                        Status.review,
                        Status.test,
                        Status.closed,
                      ][statusIndex],
                      label: Label.bug,
                      date: '01-01-2025',
                      taskNumber: '#123',
                    ),
                  ),
              ],
              total: 10,
            ),
          ),
        ) {
    on<TasksEvent>((TasksEvent event, Emitter<TasksState> emit) => event.when(
            get: (
          List<int>? projects,
          String? status,
          String? label,
          List<int>? assigned,
        ) =>
                _getTasksHandler(projects, status, label, assigned, emit)));
  }

  Future<void> _getTasksHandler(
    List<int>? projects,
    String? status,
    String? label,
    List<int>? assigned,
    Emitter<TasksState> emit,
  ) async {
    final Either<Failure, Tasks> result = await _getTasks(
      GetTasksParams(
        projects: projects,
        status: status,
        label: label,
        assigned: assigned,
      ),
    );

    result.fold(
      (Failure failure) => emit(const TasksState.error()),
      (Tasks tasks) => emit(TasksState.loaded(tasks: tasks)),
    );
  }

  final GetTasks _getTasks;
}
