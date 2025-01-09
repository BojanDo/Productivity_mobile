part of 'home_tasks_bloc.dart';

@freezed
class HomeTasksState with _$HomeTasksState {
  const factory HomeTasksState.getting() = _HomeTasksStateGetting;
  const factory HomeTasksState.loaded({required Tasks tasks}) = _HomeTasksStateLoaded;
}
