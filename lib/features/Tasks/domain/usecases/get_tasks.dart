import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/tasks.dart';
import '../repositories/task_repo.dart';

part 'generated/get_tasks.freezed.dart';
part 'generated/get_tasks.g.dart';

class GetTasks extends UsecaseWithParams<Tasks, GetTasksParams> {
  const GetTasks(this._repository);

  final TaskRepository _repository;

  @override
  ResultFuture<Tasks> call(GetTasksParams params) async =>
      _repository.getTasks(
        values: params.toJson(),
      );
}

@freezed
class GetTasksParams with _$GetTasksParams {
  const factory GetTasksParams({
    List<int>? projects,
    String? status,
    String? label,
    List<int>? assigned,
  }) = _GetTasksParams;

  factory GetTasksParams.fromJson(Map<String, dynamic> json) =>
      _$GetTasksParamsFromJson(json);
}
