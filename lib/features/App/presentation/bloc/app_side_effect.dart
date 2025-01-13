part of 'app_bloc.dart';

@freezed
class AppSideEffect with _$AppSideEffect {
  const factory AppSideEffect.error({required String message}) = _AppSideEffectError;
  const factory AppSideEffect.success({required String message}) = _AppSideEffectSuccess;
  const factory AppSideEffect.overlayAdd({required Widget content}) = _AppSideEffectOverlayAdd;
  const factory AppSideEffect.overlayRemove() = _AppSideEffectOverlayRemove;
  const factory AppSideEffect.connectionError() = _AppSideEffectConnectionError;
}
