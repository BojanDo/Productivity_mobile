import '../../../../core/config/constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/utils/api_manager.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/auth_response.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResponse> login({
    required Map<String, dynamic> values,
  });
  Future<AuthResponse> register({
    required Map<String, dynamic> values,
  });
}

class AuthRemoteDataSourceImplementation implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImplementation(this._apiManager);

  final APIManager _apiManager;

  @override
  Future<AuthResponse> login({
    required Map<String, dynamic> values,
  }) async {
    try {
      final response = await _apiManager.post(
        kLoginUrl,
        '',
        values,
      );

      return AuthResponse.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }
  @override
  Future<AuthResponse> register({
    required Map<String, dynamic> values,
  }) async {
    try {
      final response = await _apiManager.post(
        kRegisterUrl,
        '',
        values,
      );

      return AuthResponse.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }
}