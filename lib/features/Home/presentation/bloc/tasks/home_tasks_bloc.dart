import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/entities/paginated_list.dart';
import '../../../../../core/errors/failure.dart';
import '../../../../../core/services/injection_container.dart';
import '../../../../App/presentation/bloc/app_bloc.dart';
import '../../../../Tasks/domain/entities/tasks.dart';
import '../../../../Tasks/domain/usecases/get_tasks.dart';
import '../../../../Tasks/presentation/bloc/tasks/tasks_bloc.dart';
import '../../../../User/domain/entities/users.dart';
import '../../../../User/domain/usecases/get_users.dart';

part 'home_tasks_event.dart';

part 'home_tasks_state.dart';

part 'generated/home_tasks_bloc.freezed.dart';

class HomeTasksBloc extends Bloc<HomeTasksEvent, HomeTasksState> {
  HomeTasksBloc(GetTasks getTasks, GetUsers getUsers)
      : _getTasks = getTasks,
        _getUsers = getUsers,
        super(
          HomeTasksState.getting(
            tasks: HomeTasksBloc.mock,
            users: const Users(items: <User>[], total: 0),
          ),
        ) {
    on<HomeTasksEvent>(
      (HomeTasksEvent event, Emitter<HomeTasksState> emit) => event.when(
        get: (int id) async {
          emit(
            HomeTasksState.getting(
              tasks: HomeTasksBloc.mock,
              users: const Users(items: <User>[], total: 0),
            ),
          );
          final Either<Failure, Tasks> resultTasks =
              await _getTasks(GetTasksParams(assigned: <int>[id]));
          final Either<Failure, Users> resultUsers = await _getUsers();

          resultTasks.fold(
            (Failure failure) => _errorState(emit),
            (Tasks tasks) {
              resultUsers.fold(
                (Failure failure) => _errorState(emit),
                (Users users) => emit(
                  HomeTasksState.loaded(
                    tasks: _sortAndFilterTasks(tasks),
                    users: users,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _errorState(Emitter<HomeTasksState> emit) {
    sl<AppBloc>().add(
      const AppEvent.error(
        message: 'Error getting the tasks',
      ),
    );
    emit(
      const HomeTasksState.loaded(
        tasks: Tasks(items: <TaskSlim>[], total: 0),
        users: Users(items: <User>[], total: 0),
      ),
    );
  }

  Tasks _sortAndFilterTasks(Tasks tasks) {
    // Create a modifiable copy of the items list
    final List<TaskSlim> sortedItems = List<TaskSlim>.from(tasks.items);

    sortedItems
      ..removeWhere((TaskSlim task) => task.status == Status.closed)
      ..sort((TaskSlim a, TaskSlim b) {
        // Sort by status order
        const Map<Status, int> statusOrder = <Status, int>{
          Status.test: 0,
          Status.review: 1,
          Status.inProgress: 2,
          Status.todo: 3,
        };

        final int statusComparison =
            statusOrder[a.status]!.compareTo(statusOrder[b.status]!);
        if (statusComparison != 0) {
          return statusComparison;
        }

        // Sort by date
        return DateTime.parse(a.date).compareTo(DateTime.parse(b.date));
      });

    // Update the tasks object with the filtered and sorted items
    return Tasks(items: sortedItems, total: sortedItems.length);
  }

  final GetTasks _getTasks;
  final GetUsers _getUsers;

  static Tasks get mock => Tasks(
        items: List<TaskSlim>.generate(
          10,
          (int index) => TaskSlim(
            id: index,
            title: 'This is a task title',
            status: Status.todo,
            label: Label.bug,
            date: '9999-01-01',
            taskNumber: '#123', assigned: <int>[], projectId: 0,
          ),
        ),
        total: 10,
      );
}
