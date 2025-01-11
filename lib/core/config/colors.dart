import 'package:flutter/material.dart';

const Color kPrimaryBackgroundColor = Color(0xFFF7F9FC);
const Color kSecondaryBackgroundColor = Colors.white;
const Color kBorderColor = Color(0xffdfe5f5);

const Color kPrimaryColor = Color(0xff7e2cd0);

extension HexColor on Color {
  String _generateAlpha({required int alpha, required bool withAlpha}) {
    if (withAlpha) {
      return alpha.toRadixString(16).padLeft(2, '0');
    } else {
      return '';
    }
  }

  String toHex({bool leadingHashSign = false, bool withAlpha = false}) =>
      '${leadingHashSign ? '#' : ''}'
          '${_generateAlpha(alpha: alpha, withAlpha: withAlpha)}'
          '${red.toRadixString(16).padLeft(2, '0')}'
          '${green.toRadixString(16).padLeft(2, '0')}'
          '${blue.toRadixString(16).padLeft(2, '0')}'
          .toUpperCase();
}