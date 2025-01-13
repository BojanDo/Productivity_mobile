import '../../../../core/utils/typedef.dart';
import '../entities/organizations.dart';
import '../entities/user_response.dart';
import '../entities/users.dart';

abstract class UserRepository {
  const UserRepository();

  ResultFuture<Users> getUsers();

  ResultFuture<User> getUser(int id);

  ResultFuture<UserResponse> updateUser(
    int id, {
    required Map<String, dynamic> values,
  });

  ResultFuture<Organizations> getOrganizations();

  ResultFuture<UserResponse> createOrganization({
    required Map<String, dynamic> values,
  });

  ResultFuture<Organization> getOrganization(int id);

  ResultFuture<UserResponse> updateOrganization(
    int id, {
    required Map<String, dynamic> values,
  });

  ResultFuture<Organizations> getInvitations();

  ResultFuture<Users> getInvitedUsers(int organizationId);

  ResultFuture<UserResponse> acceptInvitation(int organizationId);

  ResultFuture<UserResponse> sendInvitation(
    int organizationId, {
    required Map<String, dynamic> values,
  });

  ResultFuture<UserResponse> declineInvitation(int organizationId);
}
