import 'package:flutter/material.dart';

import '../widgets/welcome_screen_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      body: WelcomeWidgetBackground(),
    );
  }
}
