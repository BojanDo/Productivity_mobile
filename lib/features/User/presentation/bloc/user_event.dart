part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.setUser({required User user}) = _UserEventSetUser;
}
