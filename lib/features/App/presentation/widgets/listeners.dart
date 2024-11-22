import 'package:flutter/material.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

import '../../../../core/functions/toasts.dart';
import '../bloc/app_bloc.dart';

class AppListeners extends StatefulWidget {
  const AppListeners({super.key, required this.child});

  final Widget child;

  @override
  State<AppListeners> createState() => _AppListenersState();
}

class _AppListenersState extends State<AppListeners> {
  @override
  Widget build(BuildContext context) =>
      BlocSideEffectListener<AppBloc, AppSideEffect>(
        listener: (BuildContext context, AppSideEffect sideEffect) {
          sideEffect.when(
            error: (String message) => toastError(context, message),
            success: (String message) => toastSuccess(context, message),
          );
        },
        child: widget.child,
      );
}
