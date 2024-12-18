import 'package:faker/faker.dart';

import '../features/Auth/data/datasources/auth_remote_data_source.dart';
import '../features/Auth/domain/entities/auth_response.dart';
import '../features/User/domain/entities/users.dart';

class MockAuthRemoteDataSourceImplementation implements AuthRemoteDataSource {
  MockAuthRemoteDataSourceImplementation(this._faker) {
    response = AuthResponse(message: _faker.lorem.words(3).join(' '));
    user = User(
      id: 1,
      firstname: _faker.person.firstName(),
      lastname: _faker.person.lastName(),
      email: _faker.internet.email(),
      profilePicture: 'https://pbs.twimg.com/profile_images/1138626153424408576/GosXfwQ7_400x400.jpg',
      jobTitle:
      _faker.randomGenerator.element(<String>['Owner', 'Developer']),
      organizationId: 1,
      roleName: faker.randomGenerator.element(Role.values),
    );
  }

  final Faker _faker;
  late AuthResponse response;
  late User user;

  @override
  Future<AuthResponse> login({required Map<String, dynamic> values}) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return response.copyWith(user: user,jwt: 'token');
  }

  @override
  Future<AuthResponse> register({required Map<String, dynamic> values}) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return response;
  }
}
