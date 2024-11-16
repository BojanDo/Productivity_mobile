import 'package:faker/faker.dart';

import '../features/User/data/datasources/user_remote_data_source.dart';
import '../features/User/domain/entities/organizations.dart';
import '../features/User/domain/entities/user_response.dart';
import '../features/User/domain/entities/users.dart';

class UserRemoteDataSourceImplementation implements UserRemoteDataSource {
  const UserRemoteDataSourceImplementation(this._faker);

  final Faker _faker;

  @override
  Future<Users> getUsers() async {
    // TODO: implement getUsers
    throw UnimplementedError();
  }

  @override
  Future<User> getUser(String id) async {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<UserResponse> updateUser(String id,
      {required Map<String, dynamic> values}) async {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  Future<UserResponse> createOrganization(
      {required Map<String, dynamic> values}) async {
    // TODO: implement createOrganization
    throw UnimplementedError();
  }

  @override
  Future<Organization> getOrganization(String id) async {
    // TODO: implement getOrganization
    throw UnimplementedError();
  }

  @override
  Future<UserResponse> updateOrganization(String id,
      {required Map<String, dynamic> values}) async {
    // TODO: implement updateOrganization
    throw UnimplementedError();
  }

  @override
  Future<Organizations> getInvitations() async {
    // TODO: implement getInvitations
    throw UnimplementedError();
  }

  @override
  Future<Users> getInvitedUsers(String organizationId) async {
    // TODO: implement getInvitedUsers
    throw UnimplementedError();
  }

  @override
  Future<UserResponse> acceptInvitation(String organizationId) async {
    // TODO: implement acceptInvitation
    throw UnimplementedError();
  }

  @override
  Future<UserResponse> sendInvitation(String organizationId) async {
    // TODO: implement sendInvitation
    throw UnimplementedError();
  }

  @override
  Future<UserResponse> declineInvitation(String organizationId) async {
    // TODO: implement declineInvitation
    throw UnimplementedError();
  }
}
