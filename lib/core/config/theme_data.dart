import 'package:flutter/material.dart';

import 'colors.dart';
import 'constants.dart';

final ThemeData theme = ThemeData(
  fontFamily: 'Poppins',
  useMaterial3: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  actionIconTheme: ActionIconThemeData(
    backButtonIconBuilder: (BuildContext context) =>
        const Icon(Icons.arrow_back_ios_new_rounded),
  ),
  scaffoldBackgroundColor: kPrimaryBackgroundColor,
  dividerTheme: const DividerThemeData(
    color: kBorderColor,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: kSecondaryBackgroundColor,
    scrolledUnderElevation: 0.0,
    shape: Border(
      bottom: kBorderSide,
    ),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: kSecondaryBackgroundColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    focusedBorder: OutlineInputBorder(
      borderRadius: kBorderRadius,
      borderSide:
          kBorderSide.copyWith(color: Colors.black), // Your predefined border
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: kBorderRadius,
      borderSide: kBorderSide, // Your predefined border
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: kBorderRadius,
      borderSide:
          kBorderSide.copyWith(color: Colors.red), // Error border when focused
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: kBorderRadius,
      borderSide: kBorderSide.copyWith(color: Colors.red), // Error border
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: kBorderRadius,
      ),
    ),
  ),
);
