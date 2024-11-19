import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'colors.dart';
import 'constants.dart';



final theme = ThemeData(
  fontFamily: 'Poppins',
  useMaterial3: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  actionIconTheme: ActionIconThemeData(
    backButtonIconBuilder: (BuildContext context) => const Icon(Icons.arrow_back_ios_new_rounded),
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
    backgroundColor: kSecondaryBackgroundColor,// Set your desired color here
  ),
);