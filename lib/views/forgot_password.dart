import 'package:flutter/material.dart';

import '../widgets/forgot_pass_widget.dart';

class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ForgotPassWidget(),
      ),
    );
  }
}
