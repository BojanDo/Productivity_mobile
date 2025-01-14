import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/entities/paginated_list.dart';
import '../../../../../core/errors/failure.dart';
import '../../../../../core/services/injection_container.dart';
import '../../../../../widgets/filter/filter_form_bloc.dart';
import '../../../../App/presentation/bloc/app_bloc.dart';
import '../../../../Projects/domain/entities/projects.dart';
import '../../../../User/domain/entities/users.dart';
import '../../../../User/domain/usecases/get_users.dart';
import '../../../domain/entities/task_response.dart';
import '../../../domain/entities/tasks.dart';
import '../../../domain/usecases/delete_task.dart';
import '../../../domain/usecases/get_tasks.dart';

part 'tasks_event.dart';

part 'tasks_state.dart';

part 'generated/tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc({
    required GetTasks getTasks,
    required DeleteTask deleteTask,
    required GetUsers getUsers,
    required this.filterFormBloc,
  })  : _getTasks = getTasks,
        _deleteTask = deleteTask,
        _getUsers = getUsers,
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
                        assigned: <int>[],
                        projectId: 0,
                      ),
                    ),
                ],
                total: 10,
              ),
            ),
          ),
        ) {
    on<TasksEvent>(
      (TasksEvent event, Emitter<TasksState> emit) async => event.when(
        get: (int? projectId, int? assignedId) async =>
            await _getTasksHandler(projectId, assignedId, emit),
        filter: () async => await _filterTasksHandler(emit),
        delete: (int id, int? projectId, int? assignedId) async =>
            await _deleteTaskHandler(id, projectId, assignedId, emit),
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
    final Either<Failure, Tasks> resultTasks = await _getTasks(
      GetTasksParams(
        projects: projects,
        assigned: assigned,
      ),
    );

    await sl<AppBloc>().state.maybeWhen(
      authenticated: (_) async {
        final Either<Failure, Users> resultUsers = await _getUsers();
        resultTasks.fold(
          (Failure failure) => emit(const TasksState.error()),
          (Tasks tasks) async {
            resultUsers.fold(
              (Failure failure) => emit(const TasksState.error()),
              (Users users) => emit(
                TasksState.loaded(
                  tasks: tasks,
                  seperatedTasks: _filterTasks(
                    tasks,
                  ),
                  users: users,
                ),
              ),
            );
          },
        );
      },
      orElse: () {
        resultTasks.fold(
          (Failure failure) => emit(const TasksState.error()),
          (Tasks tasks) async {
            emit(TasksState.loaded(
              tasks: tasks,
              seperatedTasks: _filterTasks(
                tasks,
              ),
              users: const Users(items: <User>[], total: 0),
            ));
          },
        );
      },
    );
  }

  Future<void> _filterTasksHandler(
    Emitter<TasksState> emit,
  ) async {
    if (state is _TasksStateLoaded) {
      final _TasksStateLoaded loadedState = (state as _TasksStateLoaded);
      emit(
        loadedState.copyWith(
          seperatedTasks: _filterTasks(loadedState.tasks),
        ),
      );
    }
  }

  Future<void> _deleteTaskHandler(
    int id,
    int? projectId,
    int? assignedId,
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
        add(TasksEvent.get(projectId: projectId, assignedId: assignedId));
      },
    );
  }

  Map<Status, List<TaskSlim>> _filterTasks(Tasks tasks) {
    final List<TaskSlim> filteredTasks = <TaskSlim>[];

    bool skipFilters =
        sl<AppBloc>().state.maybeMap(offline: (_) => true, orElse: () => false);

    for (TaskSlim task in tasks.items) {
      if (!skipFilters) {
        if (!filterFormBloc.projects.value
            .any((Project project) => project.id == task.projectId)) {
          continue;
        }
        if (!filterFormBloc.assigned.value
            .any((User user) => task.assigned.contains(user.id))) {
          continue;
        }
      }
      if (!filterFormBloc.statuses.value
          .any((Status status) => status == task.status)) {
        continue;
      }
      if (!filterFormBloc.labels.value
          .any((Label label) => label == task.label)) {
        continue;
      }
      final DateTime? date = DateTime.tryParse(task.date);
      if (date == null) {
        filteredTasks.add(task);
        continue;
      }
      if (filterFormBloc.dateStart.value != null &&
          date.isBefore(filterFormBloc.dateStart.value!)) {
        continue;
      }

      if (filterFormBloc.dateEnd.value != null &&
          date.isAfter(filterFormBloc.dateEnd.value!)) {
        continue;
      }
      filteredTasks.add(task);
    }
    return TasksBloc._seperateTasks(
      Tasks(items: filteredTasks, total: filteredTasks.length),
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
  final GetUsers _getUsers;
  final FilterFormBloc filterFormBloc;
}
