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
  scaffoldBackgroundColor: const Color(0xFFF7F9FC),
  dividerTheme: const DividerThemeData(
    color: Color(0xffdfe5f5),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: kPrimaryBackgroundColor,
    scrolledUnderElevation: 0.0,
    shape: Border(
      bottom: BorderSide(
        color: Color(0xffdfe5f5),
      ),
    ),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: kPrimaryBackgroundColor,
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
    backgroundColor: kPrimaryBackgroundColor,
    modalBackgroundColor: kPrimaryBackgroundColor,
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
  dialogTheme: const DialogTheme(
    backgroundColor: kPrimaryBackgroundColor,
    // Replace with your desired color
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ), // Optional: add rounded corners
    ),
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: kPrimaryColor,
    onPrimary: Colors.white,
    secondary: kPrimaryBackgroundColor,
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.white,
    surface: kPrimaryBackgroundColor,
    onSurface: Colors.black,
  ),
);

final ThemeData darkTheme = theme.copyWith(
  scaffoldBackgroundColor: const Color(0xFF4B4B4B),
  dividerTheme: const DividerThemeData(
    color: Color(0xff686a72),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: kPrimaryDarkBackgroundColor,
    scrolledUnderElevation: 0.0,
    shape: Border(
      bottom: BorderSide(
        color: Color(0xff686a72),
      ),
    ),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: kPrimaryDarkBackgroundColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: kPrimaryDarkBackgroundColor,
    focusedBorder: OutlineInputBorder(
      borderRadius: kBorderRadius,
      borderSide: kDarkBorderSide.copyWith(color: Colors.black),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: kBorderRadius,
      borderSide: kDarkBorderSide,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: kBorderRadius,
      borderSide: kDarkBorderSide.copyWith(color: Colors.red),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: kBorderRadius,
      borderSide: kDarkBorderSide.copyWith(color: Colors.red),
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
    backgroundColor: kPrimaryDarkBackgroundColor,
    modalBackgroundColor: kPrimaryDarkBackgroundColor,
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
  dialogTheme: const DialogTheme(
    backgroundColor: kPrimaryDarkBackgroundColor,
    // Replace with your desired color
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ), // Optional: add rounded corners
    ),
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: kPrimaryColor,
    onPrimary: Colors.white,
    secondary: kPrimaryDarkBackgroundColor,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    surface: kPrimaryDarkBackgroundColor,
    onSurface: Colors.white,
  ),
);
//Theme.of(context).colorScheme.secondary
/*
color: Theme.of(context).inputDecorationTheme.enabledBorder!.borderSide.color,
width: Theme.of(context).inputDecorationTheme.enabledBorder!.borderSide.width,

 */