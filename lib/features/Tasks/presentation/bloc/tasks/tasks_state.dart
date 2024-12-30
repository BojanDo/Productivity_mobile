part of 'tasks_bloc.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState.getting({required Tasks tasks}) = _TasksStateGetting;
  const factory TasksState.loaded({required Tasks tasks}) = _TasksStateGetting;
  const factory TasksState.error() = _TasksStateGetting;
}
