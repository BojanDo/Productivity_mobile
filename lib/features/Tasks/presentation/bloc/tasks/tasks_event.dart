part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {

  const factory TasksEvent.get({
    List<int>? projects,
    String? status,
    String? label,
    List<int>? assigned,
  }) = _TasksEventGet;
}
