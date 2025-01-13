import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/user_response.dart';
import '../repositories/user_repo.dart';

part 'generated/create_organization.freezed.dart';
part 'generated/create_organization.g.dart';

class CreateOrganization extends UsecaseWithParams<UserResponse, CreateOrganizationParams> {
  const CreateOrganization(this._repository);

  final UserRepository _repository;

  @override
  ResultFuture<UserResponse> call(CreateOrganizationParams params) async {
    final Map<String, dynamic> jsonParams = params.toJson();

    if (params.profilePicture != null) {
      jsonParams['profile_picture'] = await MultipartFile.fromFile(
        params.profilePicture!,
        filename: params.profilePicture!.split('/').last,
      );
    }else{
      jsonParams.remove('profile_picture');
    }
    return _repository.createOrganization(
      values: jsonParams,
    );
  }
}

@freezed
class CreateOrganizationParams with _$CreateOrganizationParams {
  const factory CreateOrganizationParams({
    required String name,
    required String description,
    @JsonKey(name: 'profile_picture') String? profilePicture,
  }) = _CreateOrganizationParams;

  factory CreateOrganizationParams.fromJson(Map<String, dynamic> json) =>
      _$CreateOrganizationParamsFromJson(json);
}
