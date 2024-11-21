import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/config/routes.dart';
import '../../features/App/presentation/bloc/app_bloc.dart';

part 'drawer_event.dart';

part 'drawer_state.dart';

part 'generated/drawer_bloc.freezed.dart';

enum DrawerVisibleList { first, second }

class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  DrawerBloc()
      : super(
          const DrawerState(
            currentRoute: kHomeRoute,
            visibleList: DrawerVisibleList.first,
          ),
        ) {
    on<DrawerEvent>(
      (DrawerEvent event, Emitter<DrawerState> emit) => event.when(
        route: (String route, DrawerVisibleList visibleList) =>
            routeHandler(route, visibleList, emit),
      ),
    );
  }

  void routeHandler(
    String route,
    DrawerVisibleList visibleList,
    Emitter<DrawerState> emit,
  ) {
    emit(DrawerState(currentRoute: route, visibleList: visibleList));
  }
}
