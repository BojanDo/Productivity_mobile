part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.getting({required Task task}) = _TaskStateGetting;
  const factory TaskState.loaded({required Task task}) = _TaskStateLoaded;
}
