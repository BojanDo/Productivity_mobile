part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    required User user,
    @Default(Organizations(items: <Organization>[], total: 0))
    Organizations invitaions,
    @Default(Users(items: <User>[], total: 0)) Users invitedUsers,
  }) = _UserState;

  const factory UserState.getting({
    required User user,
    required Organizations invitaions,
    required Users invitedUsers,
  }) = _UserStateGetting;

}
