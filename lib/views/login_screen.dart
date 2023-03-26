import 'package:flutter/material.dart';

import '../widgets/widget_themes/login_darkmode_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: LoginDarkMode()));
  }
}
