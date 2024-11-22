import 'package:faker/faker.dart';

import '../features/User/data/datasources/user_remote_data_source.dart';
import '../features/User/domain/entities/organizations.dart';
import '../features/User/domain/entities/user_response.dart';
import '../features/User/domain/entities/users.dart';

class UserRemoteDataSourceImplementation implements UserRemoteDataSource {
  UserRemoteDataSourceImplementation(this._faker) {
    final List<User> fakeUsers = List<User>.generate(
      10,
      (int index) => User(
        id: index,
        firstname: _faker.person.firstName(),
        lastname: _faker.person.lastName(),
        email: _faker.internet.email(),
        jobTitle:
            _faker.randomGenerator.element(<String>['Owner', 'Developer']),
        organizationId: '1',
        roleName: faker.randomGenerator.element(Role.values),
      ),
    );
    users = Users(items: fakeUsers, total: fakeUsers.length);
    final List<Organization> fakeOrganizations = List<Organization>.generate(
      2,
      (int index) => Organization(
        id: index,
        name: _faker.lorem.words(2).join(' '),
        description: faker.lorem.sentences(6).join(' '),
      ),
    );
    organizations = Organizations(
      items: fakeOrganizations,
      total: fakeOrganizations.length,
    );
    user = User(
      id: fakeUsers.first.id,
      firstname: fakeUsers.first.firstname,
      lastname: fakeUsers.first.lastname,
      email: fakeUsers.first.email,
      jobTitle: fakeUsers.first.jobTitle,
      organizationId: fakeUsers.first.organizationId,
      roleName: fakeUsers.first.roleName,
    );
    organization = Organization(
      id: fakeOrganizations.first.id,
      name: fakeOrganizations.first.name,
      description: fakeOrganizations.first.description,
    );
    response = UserResponse(message: _faker.lorem.words(3).join(' '));
  }

  final Faker _faker;
  late Users users;
  late User user;
  late Organizations organizations;
  late Organization organization;
  late UserResponse response;

  @override
  Future<Users> getUsers() async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return users;
  }

  @override
  Future<User> getUser(int id) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return user;
  }

  @override
  Future<UserResponse> updateUser(
    int id, {
    required Map<String, dynamic> values,
  }) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<UserResponse> createOrganization({
    required Map<String, dynamic> values,
  }) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<Organization> getOrganization(int id) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return organization;
  }

  @override
  Future<UserResponse> updateOrganization(
    int id, {
    required Map<String, dynamic> values,
  }) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<Organizations> getInvitations() async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return organizations;
  }

  @override
  Future<Users> getInvitedUsers(int organizationId) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return users;
  }

  @override
  Future<UserResponse> acceptInvitation(int organizationId) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<UserResponse> sendInvitation(int organizationId) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return response;
  }

  @override
  Future<UserResponse> declineInvitation(int organizationId) async {
    await Future<dynamic>.delayed(const Duration(seconds: 1));
    return response;
  }
}
