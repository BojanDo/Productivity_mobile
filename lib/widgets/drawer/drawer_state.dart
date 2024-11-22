part of 'drawer_bloc.dart';

@freezed
class DrawerState with _$DrawerState {
  const factory DrawerState({
    required String currentRoute,
    required DrawerVisibleList visibleList,
  }) = _DrawerState;
}
