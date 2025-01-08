part of 'tasks_bloc.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState.getting({required Map<Status,List<TaskSlim>> seperatedTasks}) = _TasksStateGetting;
  const factory TasksState.loaded({required Tasks tasks, required Map<Status,List<TaskSlim>> seperatedTasks, required Users users}) = _TasksStateLoaded;
  const factory TasksState.error() = _TasksStateError;
}
