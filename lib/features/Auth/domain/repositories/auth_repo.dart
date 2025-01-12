import '../../../../core/utils/typedef.dart';
import '../entities/auth_response.dart';

abstract class AuthRepository {
  const AuthRepository();

  ResultFuture<AuthResponse> login({
    required Map<String, dynamic> values,
  });
  ResultFuture<AuthResponse> register({
    required Map<String, dynamic> values,
  });

  ResultFuture<bool> validateEmail({
    required Map<String, dynamic> values,
  });
}
