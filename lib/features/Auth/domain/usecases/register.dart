import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/auth_response.dart';
import '../repositories/auth_repo.dart';

part 'generated/register.freezed.dart';
part 'generated/register.g.dart';

class Register extends UsecaseWithParams<AuthResponse, RegisterParams> {
  const Register(this._repository);

  final AuthRepository _repository;

  @override
  ResultFuture<AuthResponse> call(RegisterParams params) async =>
      _repository.login(
        values: params.toJson(),
      );
}

@freezed
class RegisterParams with _$RegisterParams {
const factory RegisterParams({
  required String firstname,
  required String lastname,
  required String emial,
  @JsonKey(name: 'profile_picture') required String profilePicture,
  required String password,
  @JsonKey(name: 'job_title') required String jobTitle,
}) = _RegisterParams;

factory RegisterParams.fromJson(Map<String, dynamic> json) =>
      _$RegisterParamsFromJson(json);
}