import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/entities/paginated_list.dart';
import '../../../../../core/errors/failure.dart';
import '../../../../Tasks/domain/entities/tasks.dart';
import '../../../../Tasks/domain/usecases/get_tasks.dart';

part 'home_tasks_event.dart';

part 'home_tasks_state.dart';

part 'generated/home_tasks_bloc.freezed.dart';

class HomeTasksBloc extends Bloc<HomeTasksEvent, HomeTasksState> {
  HomeTasksBloc(GetTasks getTasks)
      : _getTasks = getTasks,
        super(const HomeTasksState.getting()) {
    on<HomeTasksEvent>(
      (HomeTasksEvent event, Emitter<HomeTasksState> emit) => event.when(
        get: (int id) async {
          final Either<Failure, Tasks> result =
              await _getTasks(GetTasksParams(assigned: <int>[id]));
        },
      ),
    );
  }

  final GetTasks _getTasks;
}
