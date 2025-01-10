part of 'home_tasks_bloc.dart';

@freezed
class HomeTasksState with _$HomeTasksState {
  const factory HomeTasksState.getting({required Tasks tasks, required Users users}) = _HomeTasksStateGetting;
  const factory HomeTasksState.loaded({required Tasks tasks, required Users users}) = _HomeTasksStateLoaded;
}
