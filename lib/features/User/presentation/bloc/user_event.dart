part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  //const factory UserEvent.updateUser({required UpdateUserParams params}) = _UserEventUpdateUser;
  const factory UserEvent.loadAccount() = _UserEventLoadAccount;
  const factory UserEvent.getUser() = _UserEventGetUser;
}
