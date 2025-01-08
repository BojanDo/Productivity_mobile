part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.getting({ Task? task}) = _TaskStateGetting;
  const factory TaskState.loaded({ Task? task}) = _TaskStateLoaded;
}
