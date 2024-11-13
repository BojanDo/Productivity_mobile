import '../../../../core/utils/typedef.dart';
import '../entities/organizations.dart';
import '../entities/user_response.dart';
import '../entities/users.dart';

abstract class UserRepository {
  const UserRepository();

  ResultFuture<Users> getUsers();

  ResultFuture<User> getUser(String id);

  ResultFuture<UserResponse> updateUser(
    String id, {
    required Map<String, dynamic> values,
  });

  ResultFuture<UserResponse> createOrganization({
    required Map<String, dynamic> values,
  });

  ResultFuture<Organization> getOrganization(String id);

  ResultFuture<UserResponse> updateOrganization(
    String id, {
    required Map<String, dynamic> values,
  });

  ResultFuture<Organizations> getInvitations();

  ResultFuture<Users> getInvitedUsers(String organizationId);

  ResultFuture<UserResponse> acceptInvitation(String organizationId);

  ResultFuture<UserResponse> sendInvitation(String organizationId);

  ResultFuture<UserResponse> declineInvitation(String organizationId);
}
