import 'package:flutter/material.dart';
import 'package:flutter_login_register_darktheme/views/forgot_password.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../../views/register_screen.dart';
import '../input_text_decoration.dart';
import '../lg_button.dart';

class LoginDarkMode extends StatelessWidget {
  const LoginDarkMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Welcome Back!',
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold, fontSize: 25)),
            const SizedBox(height: 15),
            Text('Please sign in to your account',
                style: TextStyle(
                    color: Colors.blueGrey.shade500,
                    fontWeight: FontWeight.w600)),
            const SizedBox(height: 80),
            const InputTextDecoration(
              fieldText: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email address',
                      focusedBorder: InputBorder.none)),
              bgColor: Color(0xFF345678),
            ),
            const SizedBox(height: 20),
            const InputTextDecoration(
              fieldText: TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.visibility),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none)),
              bgColor: Color(0xFF345678),
            ),
            const SizedBox(height: 15),
            Row(children: [
              const Expanded(child: SizedBox()),
              InkWell(
                  onTap: () {
                    Get.to(() => const ForgotPassScreen());
                  },
                  child: Text('Forgot Password?',
                      style: TextStyle(color: Colors.blueGrey.shade200))),
            ]),
            const Spacer(),
            //const SizedBox(height: 100),
            BgButton(
                text: 'Sign In',
                clickAction: () {},
                textColor: Colors.white,
                bgColor: AppColors.btnColor),
            const SizedBox(height: 12),
            BgButton(
                text: 'Sign In with Google',
                clickAction: () {},
                textColor: Colors.black,
                bgColor: Colors.white),
            const SizedBox(height: 30),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text("Don't have an Account?",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              const SizedBox(width: 5),
              InkWell(
                onTap: () {
                  Get.to(() => const RegisterScreen());
                },
                child: Text('Sign Up',
                    style: TextStyle(
                        color: Colors.blueAccent.shade100,
                        fontWeight: FontWeight.w500)),
              )
            ]),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
