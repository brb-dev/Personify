import 'package:flutter/material.dart';

class AppColor {
  static Color black = HexColor.fromHex('#010314');
  static Color skyBlue = HexColor.fromHex('#7EE8F6');
  static Color white = HexColor.fromHex('#FFFFFF');
  static Color blue = HexColor.fromHex('#2B69A8');
  static Color lightBlue = HexColor.fromHex('#8AEBFF');

  static Color gradient1 = HexColor.fromHex('#152b3e');
  static Color gradient2 = HexColor.fromHex('#284e61');
  static Color gradient3 = HexColor.fromHex('#1a3346');

  static Color linearGradient1 = HexColor.fromHex('#021D5A');
  static Color linearGradient2 = HexColor.fromHex('#4CA7E8');
  static Color lightGrey = HexColor.fromHex('#828282');
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
