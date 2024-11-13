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
  ResultFuture<UserResponse> call(String id,UpdateOrganizationParams params) async =>
      _repository.updateOrganization(
        id,
        values: params.toJson(),
      );
}

@freezed
class UpdateOrganizationParams with _$UpdateOrganizationParams {
  const factory UpdateOrganizationParams({
    required String name,
    required String description,
    @JsonKey(name: 'profile_picture') required String profilePicture,
  }) = _UpdateOrganizationParams;

  factory UpdateOrganizationParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrganizationParamsFromJson(json);
}
