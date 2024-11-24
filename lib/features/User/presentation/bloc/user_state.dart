part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({required User user}) = _UserState;
  const factory UserState.initial() = _UserStateInitial;
}
