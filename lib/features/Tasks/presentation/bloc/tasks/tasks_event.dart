part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.get({
    int? projectId,
    int? assignedId,
  }) = _TasksEventGet;

  const factory TasksEvent.filter(
  ) = _TasksEventFilter;

  const factory TasksEvent.delete({
    required int id,
  }) = _TasksEventDelete;
}
