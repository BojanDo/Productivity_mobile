import 'package:flutter/cupertino.dart';

void route(GlobalKey<NavigatorState> navigatorKey, String route) {
  navigatorKey.currentState!.pushNamed(route);
}

void routeReplacement(GlobalKey<NavigatorState> navigatorKey, String route) {
  navigatorKey.currentState!.pushReplacementNamed(route);
}

void routePopAllPushReplacement(
  GlobalKey<NavigatorState> navigatorKey,
  String route,
) {
  navigatorKey.currentState!.pushNamedAndRemoveUntil(
    route,
    (Route<dynamic> route) => false,
  );
}

void routePop(GlobalKey<NavigatorState> navigatorKey) {
  navigatorKey.currentState!.pop();
}

bool routeCanPop(GlobalKey<NavigatorState> navigatorKey) =>
    navigatorKey.currentState?.canPop() ?? false;
