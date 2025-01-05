import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/task_response.dart';
import '../repositories/task_repo.dart';

part 'generated/create_task.freezed.dart';
part 'generated/create_task.g.dart';

class CreateTask extends UsecaseWithParams<TaskResponse, CreateTaskParams> {
  const CreateTask(this._repository);

  final TaskRepository _repository;

  @override
  ResultFuture<TaskResponse> call(CreateTaskParams params) async {
    final Map<String, dynamic> jsonParams = params.toJson();

    if (params.attachments != null) {
      jsonParams['attachments'] = await Future.wait(
        params.attachments!.map(
          (String path) async => await MultipartFile.fromFile(
            path,
            filename: path.split('/').last,
          ),
        ),
      );
    }

    return _repository.createTask(values: jsonParams);
  }
}

@freezed
class CreateTaskParams with _$CreateTaskParams {
  const factory CreateTaskParams({
    required String title,
    required List<Map<String, dynamic>> description,
    required String status,
    required String label,
    required String date,
    @JsonKey(name: 'project_id') required int projectId,
    List<int>? assigned,
    List<String>? attachments,
  }) = _CreateTaskParams;

  factory CreateTaskParams.fromJson(Map<String, dynamic> json) =>
      _$CreateTaskParamsFromJson(json);
}
