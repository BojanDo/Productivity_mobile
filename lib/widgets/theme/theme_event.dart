part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.toggle() = _ThemeEventToggle;
  const factory ThemeEvent.toggleLight() = _ThemeEventToggleLight;
  const factory ThemeEvent.toggleDark() = _ThemeEventToggleDark;
}
