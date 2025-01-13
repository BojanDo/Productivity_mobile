part of 'offline_bloc.dart';

@freezed
class OfflineState with _$OfflineState {
  const factory OfflineState.getting({required Organizations organizations}) = _OfflineStateGetting;
  const factory OfflineState.loaded({required Organizations organizations}) = _OfflineStateLoaded;
}
