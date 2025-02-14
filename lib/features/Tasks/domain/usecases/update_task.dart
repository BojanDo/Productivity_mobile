import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/task_response.dart';
import '../repositories/task_repo.dart';

part 'generated/update_task.freezed.dart';
part 'generated/update_task.g.dart';

class UpdateTask extends UsecaseIdWithParams<TaskResponse, UpdateTaskParams> {
  const UpdateTask(this._repository);

  final TaskRepository _repository;

  @override
  ResultFuture<TaskResponse> call(int id, UpdateTaskParams params) async {
    final Map<String, dynamic> jsonParams = params.toJson();

    jsonParams['description'] = jsonEncode(params.description);
    jsonParams['assigned[]'] = params.assigned;
    jsonParams.remove('assigned');
    if (params.attachments != null) {
      jsonParams['documents[]'] = await Future.wait(
        params.attachments!.map(
          (String path) async => await MultipartFile.fromFile(
            path,
            filename: path.split('/').last,
          ),
        ),
      );
    }
    return _repository.updateTask(
      id,
      values: jsonParams,
    );
  }
}

@freezed
class UpdateTaskParams with _$UpdateTaskParams {
  const factory UpdateTaskParams({
    @JsonKey(name: 'task_number') required String taskNumber,
    required String title,
    required List<Map<String, dynamic>> description,
    required String status,
    required String label,
    @JsonKey(name: 'due_date') required String date,
    @JsonKey(name: 'project_id') required int projectId,
    List<int>? assigned,
    @JsonKey(name: 'documents[]') List<String>? attachments,
    @JsonKey(name: 'delete_documents[]') List<int>? deletedAttachments,
  }) = _UpdateTaskParams;

  factory UpdateTaskParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateTaskParamsFromJson(json);
}
