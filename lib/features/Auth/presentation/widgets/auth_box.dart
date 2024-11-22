import 'package:flutter/material.dart';

import '../../../../core/config/colors.dart';
import '../../../../core/config/constants.dart';

class AuthBox extends StatelessWidget {
  final Widget page;
  final String title;

  const AuthBox({super.key, required this.page, required this.title});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 24.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: kBorderRadius, // Smaller border radius
            border: Border.all(color: kBorderSide.color, width: kBorderSide.width),
          ),
          child: Padding(
            padding: const EdgeInsets.all(34.0),
            child: page,
            ),
          ),
        ),
      ),
  );
}
