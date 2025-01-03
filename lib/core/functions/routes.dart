import 'package:flutter/cupertino.dart';

void route(
  GlobalKey<NavigatorState> navigatorKey,
  String route, [
  Map<String, dynamic>? arguments,
]) {
  navigatorKey.currentState!.pushNamed(route, arguments: arguments);
}

void routeWithResult(
  GlobalKey<NavigatorState> navigatorKey,
  String route,
  void Function(Object?) callback, [
  Map<String, dynamic>? arguments,
]) {
  navigatorKey.currentState!
      .pushNamed(route, arguments: arguments)
      .then((Object? result) => callback(result));
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

void routePopWithResult(GlobalKey<NavigatorState> navigatorKey, Object result) {
  navigatorKey.currentState!.pop(result);
}

bool routeCanPop(GlobalKey<NavigatorState> navigatorKey) =>
    navigatorKey.currentState?.canPop() ?? false;

void animateToPage(PageController pageController, int index) {
  pageController.animateToPage(
    index,
    duration: const Duration(milliseconds: 500),
    curve: Curves.ease,
  );
}
