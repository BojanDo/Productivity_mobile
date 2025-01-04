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
        get: (
            int? projectId,
            int? assignedId,
            ) =>
            _getTasksHandler(projectId, assignedId, emit),
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
}
