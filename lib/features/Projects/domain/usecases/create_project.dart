import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/project_response.dart';
import '../repositories/project_repo.dart';


part 'generated/create_project.freezed.dart';
part 'generated/create_project.g.dart';

class CreateOrganization extends UsecaseWithParams<ProjectResponse, CreateOrganizationParams> {
  const CreateOrganization(this._repository);

  final ProjectRepository _repository;

  @override
  ResultFuture<ProjectResponse> call(CreateOrganizationParams params) async =>
      _repository.createProject(
        values: params.toJson(),
      );
}

@freezed
class CreateOrganizationParams with _$CreateOrganizationParams {
  const factory CreateOrganizationParams({
    required String title,
    required String description,
    @JsonKey(name: 'profile_picture') required String profilePicture,
  }) = _CreateOrganizationParams;

  factory CreateOrganizationParams.fromJson(Map<String, dynamic> json) =>
      _$CreateOrganizationParamsFromJson(json);
}
