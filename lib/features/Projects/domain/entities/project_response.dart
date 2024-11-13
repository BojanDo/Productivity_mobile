import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/project_response.freezed.dart';
part 'generated/project_response.g.dart';

@freezed
class ProjectResponse with _$ProjectResponse {
  const factory ProjectResponse({
    @Default(true) bool status,
    required String message,
}) = _ProjectResponse;

  factory ProjectResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectResponseFromJson(json);
}

