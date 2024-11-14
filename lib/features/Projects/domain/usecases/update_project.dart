import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/project_response.dart';
import '../repositories/project_repo.dart';

part 'generated/update_project.freezed.dart';
part 'generated/update_project.g.dart';

class UpdateProject extends UsecaseIdWithParams<ProjectResponse, UpdateProjectParams> {
  const UpdateProject(this._repository);

  final ProjectRepository _repository;


  @override
  ResultFuture<ProjectResponse> call(String id,UpdateProjectParams params) async {
    final Map<String, dynamic> jsonParams = params.toJson();

    if (params.profilePicture != null) {
      jsonParams['profile_picture'] = await MultipartFile.fromFile(
        params.profilePicture!,
        filename: params.profilePicture!.split('/').last,
      );
    }
    return _repository.updateProject(
      id,
      values: jsonParams,
    );
  }
}

@freezed
class UpdateProjectParams with _$UpdateProjectParams {
  const factory UpdateProjectParams({
    required String title,
    required String description,
    @JsonKey(name: 'profile_picture') String? profilePicture,
  }) = _UpdateProjectParams;

  factory UpdateProjectParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateProjectParamsFromJson(json);
}
