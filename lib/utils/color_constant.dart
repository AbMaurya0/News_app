import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#161614');

  static Color whiteF5 = fromHex('#F5F5F5');

  static Color blue0A = fromHex('#0A86E5');
  static Color grayA1 = fromHex('#A1A1A1');
  static Color boxgrayA1 = fromHex('#E9E9EA');

  static Color grayB9 = fromHex('#B9BDC1');

  static Color gray60 = fromHex('#605D5D');
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
