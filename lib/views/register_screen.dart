import 'package:flutter/material.dart';

import '../widgets/widget_themes/register_darkmode_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: RegisterDarkMode()),
    );
  }
}
