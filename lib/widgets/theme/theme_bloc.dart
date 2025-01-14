import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/config/theme_data.dart';
import '../../core/services/ambient_ligt_service.dart';

part 'theme_event.dart';

part 'theme_state.dart';

part 'generated/theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(themeData: theme, isDarkMode: false)) {
    on<ThemeEvent>(
      (ThemeEvent event, Emitter<ThemeState> emit) => event.when(
        toggle: () {
          if (state.isDarkMode) {
            emit(ThemeState(themeData: theme, isDarkMode: false));
          } else {
            emit(ThemeState(themeData: darkTheme, isDarkMode: true));
          }
          return null;
        },
        toggleLight: () {
          emit(ThemeState(themeData: theme, isDarkMode: false));
          return null;
        },
        toggleDark: () {
          emit(ThemeState(themeData: darkTheme, isDarkMode: true));
          return null;
        },
      ),
    );

    ambientLightService.startListening((double lux) {
      const double lightThreshold = 2;
      final bool isDark = state.isDarkMode;

      if (lux < lightThreshold && !isDark) {
        add(const ThemeEvent.toggleDark());
      } else if (lux >= lightThreshold && isDark) {
        add(const ThemeEvent.toggleLight());
      }
    });


  }

  final AmbientLightService ambientLightService = AmbientLightService();

  @override
  Future<void> close() {
    ambientLightService.stopListening();
    return super.close();
  }
}
