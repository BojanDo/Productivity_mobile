import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/user_response.dart';
import '../repositories/user_repo.dart';

part 'generated/update_organization.freezed.dart';
part 'generated/update_organization.g.dart';

class UpdateOrganization extends UsecaseIdWithParams<UserResponse, UpdateOrganizationParams> {
  const UpdateOrganization(this._repository);

  final UserRepository _repository;


  @override
  ResultFuture<UserResponse> call(int id,UpdateOrganizationParams params) async {
    final Map<String, dynamic> jsonParams = params.toJson();

    if (params.profilePicture != null) {
      jsonParams['profile_picture'] = await MultipartFile.fromFile(
        params.profilePicture!,
        filename: params.profilePicture!.split('/').last,
      );
    }
    return _repository.updateOrganization(
      id,
      values: jsonParams,
    );
  }
}

@freezed
class UpdateOrganizationParams with _$UpdateOrganizationParams {
  const factory UpdateOrganizationParams({
    required String name,
    required String description,
    @JsonKey(name: 'profile_picture') String? profilePicture,
    @JsonKey(name: 'delete_picture') required bool deletePicture,
  }) = _UpdateOrganizationParams;

  factory UpdateOrganizationParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrganizationParamsFromJson(json);
}
