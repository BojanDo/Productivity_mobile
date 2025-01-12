import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/config/constants.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../../core/utils/typedef.dart';
import '../entities/auth_response.dart';
import '../repositories/auth_repo.dart';

part 'generated/validate_email.freezed.dart';

part 'generated/validate_email.g.dart';

class ValidateEmail extends UsecaseWithParams<bool, ValidateEmailParams> {
  const ValidateEmail(this._repository);

  final AuthRepository _repository;

  @override
  ResultFuture<bool> call(ValidateEmailParams params) async => _repository.validateEmail(values: params.toJson());
}

@freezed
class ValidateEmailParams with _$ValidateEmailParams {
  const factory ValidateEmailParams({
    required String email,
    @Default(kMailBoxApiKey) @JsonKey(name: 'access_key') String accessKey,
    @Default(1)  int smtp,
    @Default(0)  int format,
  }) = _ValidateEmailParams;

  factory ValidateEmailParams.fromJson(Map<String, dynamic> json) =>
      _$ValidateEmailParamsFromJson(json);
}
