import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/auth_response.dart';
import '../repositories/auth_repo.dart';

part 'generated/login.freezed.dart';
part 'generated/login.g.dart';

class Login extends UsecaseWithParams<AuthResponse, LoginParams> {
  const Login(this._repository);

  final AuthRepository _repository;

  @override
  ResultFuture<AuthResponse> call(LoginParams params) async =>
      _repository.login(
        values: params.toJson(),
      );
}

@freezed
class LoginParams with _$LoginParams {
const factory LoginParams({
  required String email,
  required String password,
}) = _LoginParams;

factory LoginParams.fromJson(Map<String, dynamic> json) =>
      _$LoginParamsFromJson(json);
}
