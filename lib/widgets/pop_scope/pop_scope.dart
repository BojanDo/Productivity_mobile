import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/functions/routes.dart';
import 'pop_scope_bloc.dart';

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
  Widget build(BuildContext context) =>
      BlocBuilder<PopScopeBloc, PopScopeState>(
        builder: (BuildContext context, PopScopeState state) => PopScope(
          canPop: false,
          onPopInvokedWithResult: (bool didPop, Object? dynamic) {
            if (didPop) return;
            if(!state.canPop){
              state.onPop();
              return;
            }
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
        ),
      );
}
