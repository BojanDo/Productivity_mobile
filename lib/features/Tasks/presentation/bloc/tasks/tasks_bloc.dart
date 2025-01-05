import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/entities/paginated_list.dart';
import '../../../../../core/errors/failure.dart';
import '../../../../../core/services/injection_container.dart';
import '../../../../App/presentation/bloc/app_bloc.dart';
import '../../../domain/entities/task_response.dart';
import '../../../domain/entities/tasks.dart';
import '../../../domain/usecases/delete_task.dart';
import '../../../domain/usecases/get_tasks.dart';

part 'tasks_event.dart';

part 'tasks_state.dart';

part 'generated/tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc({required GetTasks getTasks, required DeleteTask deleteTask})
      : _getTasks = getTasks,
        _deleteTask = deleteTask,
        super(
          TasksState.getting(
            seperatedTasks: TasksBloc._seperateTasks(
              Tasks(
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
                        date: '2025-01-01',
                        taskNumber: '#123',
                      ),
                    ),
                ],
                total: 10,
              ),
            ),
          ),
        ) {
    on<TasksEvent>(
      (TasksEvent event, Emitter<TasksState> emit) => event.when(
        get: (int? projectId, int? assignedId) =>
            _getTasksHandler(projectId, assignedId, emit),
        delete: (int id) => _deleteTaskHandler(id, emit),
      ),
    );
  }

  Future<void> _getTasksHandler(
    int? projectId,
    int? assignedId,
    Emitter<TasksState> emit,
  ) async {
    final List<int> projects = <int>[];
    final List<int> assigned = <int>[];
    if (projectId != null) {
      projects.add(projectId);
    }
    if (assignedId != null) {
      assigned.add(assignedId);
    }
    final Either<Failure, Tasks> result = await _getTasks(
      GetTasksParams(
        projects: projects,
        assigned: assigned,
      ),
    );

    result.fold(
      (Failure failure) => emit(const TasksState.error()),
      (Tasks tasks) {
        emit(
          TasksState.loaded(
            tasks: tasks,
            seperatedTasks: _seperateTasks(
              tasks,
            ),
          ),
        );
      },
    );
  }

  Future<void> _deleteTaskHandler(
    int id,
    Emitter<TasksState> emit,
  ) async {
    sl<AppBloc>().add(const AppEvent.overlayAdd());
    final Either<Failure, TaskResponse> result = await _deleteTask(id);
    sl<AppBloc>().add(const AppEvent.overlayRemove());

    result.fold(
      (Failure failure) {
        sl<AppBloc>().add(AppEvent.error(message: failure.message));
      },
      (TaskResponse response) {
        sl<AppBloc>().add(AppEvent.success(message: response.message));
        add(const TasksEvent.get());
      },
    );
  }

  static Map<Status, List<TaskSlim>> _seperateTasks(Tasks tasks) {
    final Map<Status, List<TaskSlim>> seperatedTasks = <Status, List<TaskSlim>>{
      Status.todo: <TaskSlim>[],
      Status.inProgress: <TaskSlim>[],
      Status.review: <TaskSlim>[],
      Status.test: <TaskSlim>[],
      Status.closed: <TaskSlim>[],
    };
    for (TaskSlim task in tasks.items) {
      seperatedTasks[task.status]!.add(task);
    }
    return seperatedTasks;
  }

  final GetTasks _getTasks;
  final DeleteTask _deleteTask;
}
