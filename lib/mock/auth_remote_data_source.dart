import 'package:faker/faker.dart';

import '../features/Auth/data/datasources/auth_remote_data_source.dart';
import '../features/Auth/domain/entities/auth_response.dart';

class MockAuthRemoteDataSourceImplementation implements AuthRemoteDataSource {
  MockAuthRemoteDataSourceImplementation(this._faker) {
    response = AuthResponse(message: _faker.lorem.words(3).join(' '));
  }

  final Faker _faker;
  late AuthResponse response;

  @override
  Future<AuthResponse> login({required Map<String, dynamic> values}) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<AuthResponse> register({required Map<String, dynamic> values}) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return response;
  }
}
