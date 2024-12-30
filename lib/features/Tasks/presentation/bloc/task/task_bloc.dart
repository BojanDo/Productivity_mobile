import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_event.dart';
part 'task_state.dart';
part 'generated/task_bloc.freezed.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(const TaskState.initial()) {
    on<TaskEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
