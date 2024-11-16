import 'package:faker/faker.dart';

import '../features/Auth/data/datasources/auth_remote_data_source.dart';
import '../features/Auth/domain/entities/auth_response.dart';

class MockAuthRemoteDataSourceImplementation implements AuthRemoteDataSource {
  const MockAuthRemoteDataSourceImplementation(this._faker);

  final Faker _faker;

  @override
  Future<AuthResponse> login({required Map<String, dynamic> values}) async {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<AuthResponse> register({required Map<String, dynamic> values}) async {
    // TODO: implement register
    throw UnimplementedError();
  }
}
