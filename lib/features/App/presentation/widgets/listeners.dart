import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

import '../../../../core/functions/toasts.dart';
import '../../../../core/services/injection_container.dart';
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

  void _showConnectionError(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Connection error'),
        content: const Text('Check your internet connection'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Continue in online'),
          ),
          TextButton(
            onPressed: () {
              sl<AppBloc>().add(const AppEvent.toNotAuthenticated());
              Navigator.of(context).pop();
            },
            child: const Text('Continiue in offline'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) =>
      BlocSideEffectListener<AppBloc, AppSideEffect>(
        listener: (BuildContext context, AppSideEffect sideEffect) {
          sideEffect.when(
            error: (String message) => toastError(context, message),
            success: (String message) => toastSuccess(context, message),
            overlayAdd: (Widget content) => _showOverlay(context, content),
            overlayRemove: () => _hideOverlay(),
            connectionError: () => _showConnectionError(context),
          );
        },
        child: widget.child,
      );
}
