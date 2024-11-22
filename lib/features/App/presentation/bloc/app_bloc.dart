import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

part 'app_event.dart';
part 'app_side_effect.dart';
part 'app_state.dart';
part 'generated/app_bloc.freezed.dart';

class AppBloc extends SideEffectBloc<AppEvent, AppState, AppSideEffect> {
  AppBloc() : super(const AppState()) {
    on<AppEvent>(
      (AppEvent event, Emitter<AppState> emit) => event.when(
        error: (String message) =>
            produceSideEffect(AppSideEffect.error(message: message)),
        success: (String message) =>
            produceSideEffect(AppSideEffect.success(message: message)),
      ),
    );
  }

  final GlobalKey<NavigatorState> outerNavigator = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> innerNavigator = GlobalKey<NavigatorState>();
}
