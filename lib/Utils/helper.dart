import 'package:flutter/material.dart';

class Helper  {
  static BoxShadow buildBoxShadow({
    String color = '#d8d8d8',
    double blurRadius = 10.0,
    double spreadRadius = 10.0,
    double hOffset = 0.0,
    double vOffset = 0.0,
  }) {
    return BoxShadow(
      color: hexColor(color), //HexColor('#d8d8d8'),
      blurRadius: blurRadius, // has the effect of softening the shadow
      spreadRadius: spreadRadius, // has the effect of extending the shadow
      offset: Offset(
        hOffset, // horizontal, move right 10
        vOffset, // vertical, move down 10
      ),
    );
  }
   static Color hexColor(final String hexColor) => _HexColor(hexColor);
}

class _HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  _HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}