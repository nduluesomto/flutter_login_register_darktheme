import 'package:flutter/material.dart';
import 'package:flutter_login_register_darktheme/views/login_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import 'input_text_decoration.dart';
import 'lg_button.dart';

class ForgotPassWidget extends StatelessWidget {
  const ForgotPassWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Forgot Password',
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold, fontSize: 25)),
            const SizedBox(height: 150),
            const InputTextDecoration(
              fieldText: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email Address',
                      focusedBorder: InputBorder.none)),
              bgColor: Color(0xFF345678),
            ),
            const SizedBox(height: 20),
            BgButton(
                text: 'Recover Password',
                clickAction: () {},
                textColor: Colors.white,
                bgColor: AppColors.btnColor),
            const SizedBox(height: 10),
            Row(children: [
              const Expanded(child: SizedBox()),
              InkWell(
                  onTap: () {
                    Get.to(() => const LoginScreen());
                  },
                  child: Text('Return to Login?',
                      style: TextStyle(color: Colors.blueGrey.shade200))),
            ]),
          ],
        ),
      ),
    );
  }
}
