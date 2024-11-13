import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/task_response.freezed.dart';
part 'generated/task_response.g.dart';

@freezed
class TaskResponse with _$TaskResponse {
  const factory TaskResponse({
    @Default(true) bool status,
    required String message,
}) = _TaskResponse;

  factory TaskResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseFromJson(json);
}

