import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/project_response.dart';
import '../repositories/project_repo.dart';


part 'generated/create_project.freezed.dart';
part 'generated/create_project.g.dart';

class CreateProject extends UsecaseWithParams<ProjectResponse, CreateProjectParams> {
  const CreateProject(this._repository);

  final ProjectRepository _repository;

  @override
  ResultFuture<ProjectResponse> call(CreateProjectParams params) async {
    final Map<String, dynamic> jsonParams = params.toJson();

    if (params.profilePicture != null) {
      jsonParams['profile_picture'] = await MultipartFile.fromFile(
        params.profilePicture!,
        filename: params.profilePicture!.split('/').last,
      );
    }
    return _repository.createProject(values: jsonParams);
  }
}

@freezed
class CreateProjectParams with _$CreateProjectParams {
  const factory CreateProjectParams({
    required String title,
    required String description,
    @JsonKey(name: 'profile_picture') String? profilePicture,
  }) = _CreateProjectParams;

  factory CreateProjectParams.fromJson(Map<String, dynamic> json) =>
      _$CreateProjectParamsFromJson(json);
}
