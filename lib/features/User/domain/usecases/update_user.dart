import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/user_response.dart';
import '../repositories/user_repo.dart';

part 'generated/update_user.freezed.dart';
part 'generated/update_user.g.dart';

class UpdateUser extends UsecaseIdWithParams<UserResponse, UpdateUserParams> {
  const UpdateUser(this._repository);

  final UserRepository _repository;

  @override
  ResultFuture<UserResponse> call(String id,UpdateUserParams params) async =>
      _repository.updateUser(
        id,
        values: params.toJson(),
      );
}

@freezed
class UpdateUserParams with _$UpdateUserParams {
  const factory UpdateUserParams({
    required String firstname,
    required String lastname,
    @JsonKey(name: 'profile_picture') required String profilePicture,
    @JsonKey(name: 'job_title') required String jobTitle,
  }) = _UpdateUserParams;

  factory UpdateUserParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserParamsFromJson(json);
}
