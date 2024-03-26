import 'package:flutter/material.dart';

class AppColor {
  static Color black = HexColor.fromHex('#010314');
  static Color skyBlue = HexColor.fromHex('#7EE8F6');
  static Color white = HexColor.fromHex('#FFFFFF');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString'; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
