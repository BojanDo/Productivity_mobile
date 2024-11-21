import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<AppEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  final GlobalKey<NavigatorState> outerNavigator = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> innerNavigator = GlobalKey<NavigatorState>();
}
