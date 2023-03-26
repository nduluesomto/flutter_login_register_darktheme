import 'package:flutter/material.dart';
import 'package:flutter_login_register_darktheme/views/welcome_screen.dart';
import 'package:get/get.dart';

import 'constants/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      //theme: ResponsiveTheme.lightTheme,
      darkTheme: ResponsiveTheme.darkTheme,
      home: const WelcomeScreen(),
    );
  }
}
