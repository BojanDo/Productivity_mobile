part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    required ThemeData themeData,
    required bool isDarkMode,
}) = _ThemeState;
}
