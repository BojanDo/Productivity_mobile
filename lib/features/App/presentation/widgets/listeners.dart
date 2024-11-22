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
  OverlayEntry? _overlayEntry;

  void _showOverlay(BuildContext context, Widget overlayContent) {
    if (_overlayEntry == null) {
      _overlayEntry = OverlayEntry(
        builder: (BuildContext context) => Positioned.fill(
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.white.withOpacity(0.5),
              ),
              Center(
                child: Material(
                  color: Colors.transparent,
                  child: overlayContent,
                ),
              ),
            ],
          ),
        ),
      );
      Overlay.of(context).insert(_overlayEntry!);
    }
  }

  void _hideOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) =>
      BlocSideEffectListener<AppBloc, AppSideEffect>(
        listener: (BuildContext context, AppSideEffect sideEffect) {
          sideEffect.when(
            error: (String message) => toastError(context, message),
            success: (String message) => toastSuccess(context, message),
            overlayAdd: (Widget content) => _showOverlay(context,content),
            overlayRemove: () => _hideOverlay(),
          );
        },
        child: widget.child,
      );
}
