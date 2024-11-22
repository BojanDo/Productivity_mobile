part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.error({required String message}) = _AppEventError;
  const factory AppEvent.success({required String message}) = _AppEventSuccess;
}
