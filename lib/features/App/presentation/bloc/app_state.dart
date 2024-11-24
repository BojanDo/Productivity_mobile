part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.authenticated({required User user}) = _AppStateAuthenticated;
  const factory AppState.notAuthenticated() = _AppStateNotAuthenticated;
}
