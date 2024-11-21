part of 'drawer_bloc.dart';

@freezed
class DrawerEvent with _$DrawerEvent {
  const factory DrawerEvent.route({
    required String route,
    required DrawerVisibleList visibleList,
  }) = _Routed;
}
