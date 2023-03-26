import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../../views/login_screen.dart';
import '../input_text_decoration.dart';
import '../lg_button.dart';

class RegisterDarkMode extends StatelessWidget {
  const RegisterDarkMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
      child: Center(
        child: Column(
          children: [
            Text('Create new account',
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold, fontSize: 25)),
            const SizedBox(height: 15),
            Text('Please fill in the form to continue',
                style: TextStyle(
                    color: Colors.blueGrey.shade500,
                    fontWeight: FontWeight.w600)),
            const SizedBox(height: 80),
            const InputTextDecoration(
              fieldText: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Full Name',
                      focusedBorder: InputBorder.none)),
              bgColor: Color(0xFF345678),
            ),
            const SizedBox(height: 15),
            const InputTextDecoration(
              fieldText: TextField(
                  decoration: InputDecoration(
                      hintText: 'Email Address',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none)),
              bgColor: Color(0xFF345678),
            ),
            const SizedBox(height: 15),
            const InputTextDecoration(
              fieldText: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Phone Number',
                      focusedBorder: InputBorder.none)),
              bgColor: Color(0xFF345678),
            ),
            const SizedBox(height: 15),
            const InputTextDecoration(
              fieldText: TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.visibility),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none)),
              bgColor: Color(0xFF345678),
            ),
            const Spacer(),
            //const SizedBox(height: 100),
            BgButton(
                text: 'Sign Up',
                clickAction: () {},
                textColor: Colors.white,
                bgColor: AppColors.btnColor),
            const SizedBox(height: 30),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text("Have an Account?",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              const SizedBox(width: 5),
              InkWell(
                onTap: () {
                  Get.to(() => const LoginScreen());
                },
                child: Text('Sign In',
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
