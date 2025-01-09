part of 'home_tasks_bloc.dart';

@freezed
class HomeTasksEvent with _$HomeTasksEvent {
  const factory HomeTasksEvent.get({required int id}) = _HomeTasksEventGet;
}
