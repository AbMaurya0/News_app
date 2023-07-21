import 'package:flutter/material.dart';
import 'package:news_app/utils/color_constant.dart';

class Apptheme {
  static ThemeData lighttheme = ThemeData(
      primaryColor: ColorConstant.whiteF5,
      colorScheme: ColorScheme.fromSeed(
        seedColor: ColorConstant.blue0A,
      ),
      useMaterial3: true);
  static ThemeData darktheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
  );
}
