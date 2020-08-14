import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

// Color colorConvert(String color) {
//     color = color.replaceAll("#", "");
//     if (color.length == 6) {
//       return Color(int.parse("0xFF" + color));
//     } else if (color.length == 8) {
//       return Color(int.parse("0x" + color));
//     }
//   }
