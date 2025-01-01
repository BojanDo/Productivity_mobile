part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUser() = _UserEventGetUser;
  const factory UserEvent.loadAccount() = _UserEventLoadAccount;
  const factory UserEvent.loadOrganization() = _UserEventLoadOrganization;

  const factory UserEvent.loadInvitations() = _UserEventLoadInvitations;
  const factory UserEvent.loadInvitedUsers() = _UserEventLoadInvitedUsers;
}
