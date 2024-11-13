import '../../../../core/config/constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/utils/api_manager.dart';
import '../../../../core/utils/typedef.dart';
import '../../domain/entities/organizations.dart';
import '../../domain/entities/user_response.dart';
import '../../domain/entities/users.dart';

abstract class UserRemoteDataSource {
  Future<Users> getUsers();

  Future<User> getUser(String id);

  Future<UserResponse> updateUser(
    String id, {
    required Map<String, dynamic> values,
  });

  Future<UserResponse> createOrganization({
    required Map<String, dynamic> values,
  });

  Future<Organization> getOrganization(String id);

  Future<UserResponse> updateOrganization(
    String id, {
    required Map<String, dynamic> values,
  });

  Future<Organizations> getInvitations();

  Future<Users> getInvitedUsers(String organizationId);

  Future<UserResponse> acceptInvitation(String organizationId);

  Future<UserResponse> sendInvitation(String organizationId);

  Future<UserResponse> declineInvitation(String organizationId);
}

class UserRemoteDataSourceImplementation implements UserRemoteDataSource {
  const UserRemoteDataSourceImplementation(this._apiManager);

  final APIManager _apiManager;

  @override
  Future<Users> getUsers() async {
    try {
      final dynamic response = await _apiManager.get(
        kUsersUrl,
        '',
        <String, dynamic>{},
      );

      return Users.fromJson(
        response as DataMap,
        (Object? item) => User.fromJson(item as DataMap),
      );
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<User> getUser(String id) async {
    try {
      final dynamic response = await _apiManager.get(
        kUsersUrl,
        id,
        <String, dynamic>{},
      );

      return User.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<UserResponse> updateUser(
    String id, {
    required Map<String, dynamic> values,
  }) async {
    try {
      final dynamic response = await _apiManager.put(
        kUsersUrl,
        id,
        values,
      );

      return UserResponse.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<UserResponse> createOrganization({
    required Map<String, dynamic> values,
  }) async {
    try {
      final dynamic response = await _apiManager.post(
        kOrganizationsUrl,
        '',
        values,
      );

      return UserResponse.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<Organization> getOrganization(String id) async {
    try {
      final dynamic response = await _apiManager.get(
        kOrganizationsUrl,
        id,
        <String, dynamic>{},
      );

      return Organization.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<UserResponse> updateOrganization(
    String id, {
    required Map<String, dynamic> values,
  }) async {
    try {
      final dynamic response = await _apiManager.put(
        kOrganizationsUrl,
        id,
        values,
      );

      return UserResponse.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<Organizations> getInvitations() async {
    try {
      final dynamic response = await _apiManager.get(
        kInvitationUrl,
        '',
        <String, dynamic>{},
      );

      return Organizations.fromJson(
        response as DataMap,
        (Object? item) => Organization.fromJson(item as DataMap),
      );
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<Users> getInvitedUsers(String organizationId) async {
    try {
      final dynamic response = await _apiManager.get(
        kInvitationUrl,
        organizationId,
        <String, dynamic>{},
      );

      return Users.fromJson(
        response as DataMap,
        (Object? item) => User.fromJson(item as DataMap),
      );
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<UserResponse> acceptInvitation(String organizationId) async {
    try {
      final dynamic response = await _apiManager.post(
        kInvitationUrl,
        organizationId,
        <String, dynamic>{},
      );

      return UserResponse.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<UserResponse> sendInvitation(String organizationId) async {
    try {
      final dynamic response = await _apiManager.put(
        kInvitationUrl,
        organizationId,
        <String, dynamic>{},
      );

      return UserResponse.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }

  @override
  Future<UserResponse> declineInvitation(String organizationId) async {
    try {
      final dynamic response = await _apiManager.delete(
        kInvitationUrl,
        organizationId,
        <String, dynamic>{},
      );

      return UserResponse.fromJson(response as DataMap);
    } on APIException {
      rethrow;
    }
  }
}
