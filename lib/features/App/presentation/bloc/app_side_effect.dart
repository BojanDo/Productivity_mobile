part of 'app_bloc.dart';

@freezed
class AppSideEffect with _$AppSideEffect {
  const factory AppSideEffect.error({required String message}) = _AppSideEffectError;
  const factory AppSideEffect.success({required String message}) = _AppSideEffectSuccess;

}
