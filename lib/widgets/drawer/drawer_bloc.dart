import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/config/routes.dart';

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
            _routeHandler(route, visibleList, emit),
      ),
    );
  }

  void _routeHandler(
    String route,
    DrawerVisibleList visibleList,
    Emitter<DrawerState> emit,
  ) {
    emit(state.copyWith(currentRoute: route,visibleList: visibleList));
  }
}
