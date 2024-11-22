part of 'pop_scope_bloc.dart';

@freezed
class PopScopeState with _$PopScopeState {
  const factory PopScopeState({
    @Default(true) bool canPop,
    required VoidCallback onPop,
  }) = _PopScopeState;
}
