part of 'pop_scope_bloc.dart';

@freezed
class PopScopeEvent with _$PopScopeEvent {
  const factory PopScopeEvent.canPop({
    @Default(true) bool canPop,
    VoidCallback? onPop,
  }) = _CanPop;
}

