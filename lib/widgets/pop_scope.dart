import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/functions/routes.dart';

class GlobalPopScope extends StatelessWidget {
  const GlobalPopScope({
    super.key,
    required this.child,
    required this.outerNavigator,
    required this.innerNavigator,
  });

  final Widget child;
  final GlobalKey<NavigatorState> outerNavigator;
  final GlobalKey<NavigatorState> innerNavigator;

  @override
  Widget build(BuildContext context) => PopScope(
        canPop: false,
        onPopInvokedWithResult: (bool didPop, Object? dynamic) {
          print("Global widget $didPop");
          if (didPop) return;
          if (routeCanPop(outerNavigator)) {
            routePop(outerNavigator);
            return;
          }
          if (routeCanPop(innerNavigator)) {
            routePop(innerNavigator);
            return;
          }

          showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Exit App'),
              content: const Text('Do you really want to close the app?'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    SystemNavigator.pop();
                  },
                  child: const Text('Exit'),
                ),
              ],
            ),
          );
        },
        child: child,
      );
}
