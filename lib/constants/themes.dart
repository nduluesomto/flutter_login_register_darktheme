import 'package:flutter/material.dart';

import 'colors.dart';

class ResponsiveTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white)),
      inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(color: Colors.black)));

  static ThemeData darkTheme = ThemeData(
      inputDecorationTheme:
          const InputDecorationTheme(hintStyle: TextStyle(color: Colors.white)),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.scaffoldBgColor);
}
