import 'package:flutter/material.dart';

import '../../../../core/config/constants.dart';

class Box extends StatelessWidget {
  const Box({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      child: SingleChildScrollView(
        padding:
        const EdgeInsets.symmetric(vertical: 60.0, horizontal: 24.0),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: kBorderRadius,
            border: Border.all(
              color: Theme.of(context)
                  .inputDecorationTheme
                  .enabledBorder!
                  .borderSide
                  .color,
              width: Theme.of(context)
                  .inputDecorationTheme
                  .enabledBorder!
                  .borderSide
                  .width,
            ),
          ),
          child: child,
        ),
      ),
    ),
  );
}
