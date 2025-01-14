part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.toAuthenticated({required User user}) = _AppEventToAuthenticated;
  const factory AppEvent.toNotAuthenticated() = _AppEventToNotAuthenticated;
  const factory AppEvent.toOffline({required Organization organization}) = _AppEventToOffline;
  const factory AppEvent.error({required String message}) = _AppEventError;
  const factory AppEvent.success({required String message}) = _AppEventSuccess;
  const factory AppEvent.overlayAdd({Widget? content}) = _AppEventOverlayAdd;
  const factory AppEvent.overlayRemove() = _AppEventOverlayRemove;
}
