import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          if (didPop) return;
          if (outerNavigator.currentState?.canPop() ?? false) {
            outerNavigator.currentState?.pop();
            return;
          }
          if (innerNavigator.currentState?.canPop() ?? false) {
            innerNavigator.currentState?.pop();
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
