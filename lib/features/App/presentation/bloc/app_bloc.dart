import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/events/unauthorized.dart';
import '../../../../core/services/ambient_ligt_service.dart';
import '../../../../core/utils/api_manager.dart';
import '../../../../core/utils/localdata_manager.dart';
import '../../../User/domain/entities/users.dart';
import '../../../User/domain/usecases/get_user.dart';



part 'app_event.dart';

part 'app_side_effect.dart';

part 'app_state.dart';

part 'generated/app_bloc.freezed.dart';

class AppBloc extends SideEffectBloc<AppEvent, AppState, AppSideEffect> {
  AppBloc._(
    super.initialState,
    EventBus eventBus,
    APIManager apiManager,
    LocalDataManager localStorage,
  ) {
    on<AppEvent>(
      (AppEvent event, Emitter<AppState> emit) => event.when(
        toAuthenticated: (User user) =>
            emit(AppState.authenticated(user: user)),
        toNotAuthenticated: () async {
          await apiManager.removeToken();
          await localStorage.removeData('user_id');
          return emit(const AppState.notAuthenticated());
        },
        error: (String message) =>
            produceSideEffect(AppSideEffect.error(message: message)),
        success: (String message) =>
            produceSideEffect(AppSideEffect.success(message: message)),
        overlayAdd: (Widget? content) => produceSideEffect(
          AppSideEffect.overlayAdd(content: content ?? const SizedBox.shrink()),
        ),
        overlayRemove: () =>
            produceSideEffect(const AppSideEffect.overlayRemove()),
      ),
    );

    _authErrorSubscription = eventBus.on<UnAuthorizedEvent>().listen(
      (UnAuthorizedEvent event) {
        add(
          const AppEvent.toNotAuthenticated(),
        );
      },
    );

    ambientLightService.startListening((double lux) {
      print('LUX value $lux');
      //add(AppEvent.success(message: 'Ambient light: $lux'));
      //add(AppEvent.ambientLightChanged(lux));
    });
  }

  static Future<AppBloc> create(
    LocalDataManager localStorage,
    APIManager apiManager,
    GetUser getUser,
    EventBus eventBus,
  ) async {
    final dynamic userId = await localStorage.getData('user_id');
    if (userId != null) {
      final int id = userId as int;
      final Either<Failure, User> result = await getUser(id);
      return result.fold(
        (Failure failure) => AppBloc._(
          const AppState.notAuthenticated(),
          eventBus,
          apiManager,
          localStorage,
        ),
        (User user) => AppBloc._(
          AppState.authenticated(user: user),
          eventBus,
          apiManager,
          localStorage,
        ),
      );
    }

    return AppBloc._(
      const AppState.notAuthenticated(),
      eventBus,
      apiManager,
      localStorage,
    );
  }

  final GlobalKey<NavigatorState> outerNavigator = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> innerNavigator = GlobalKey<NavigatorState>();
  late final StreamSubscription<UnAuthorizedEvent> _authErrorSubscription;
  final AmbientLightService ambientLightService = AmbientLightService();

  @override
  Future<void> close() {
    _authErrorSubscription.cancel();
    ambientLightService.stopListening();
    return super.close();
  }
}
