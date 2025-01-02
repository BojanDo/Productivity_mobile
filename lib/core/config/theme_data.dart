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
      borderSide: kBorderSide.copyWith(color: Colors.black),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: kBorderRadius,
      borderSide: kBorderSide,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: kBorderRadius,
      borderSide: kBorderSide.copyWith(color: Colors.red),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: kBorderRadius,
      borderSide: kBorderSide.copyWith(color: Colors.red),
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
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: kSecondaryBackgroundColor,
    modalBackgroundColor: kSecondaryBackgroundColor,
  ),
  popupMenuTheme: const PopupMenuThemeData(
    color: Colors.white, // Set background color to white
    textStyle: TextStyle(
      fontSize: 16,
      color: Colors.black, // Set text color globally
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    elevation: 8, // Shadow effect
  ),
);
