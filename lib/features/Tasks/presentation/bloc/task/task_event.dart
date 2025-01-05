part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {

  const factory TaskEvent.get({
    required int id,
  }) = _TaskEventGet;
}
