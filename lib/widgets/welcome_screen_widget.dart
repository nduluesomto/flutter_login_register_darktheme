import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../views/login_screen.dart';
import 'lg_button.dart';

class WelcomeWidgetBackground extends StatelessWidget {
  const WelcomeWidgetBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      //padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
          //color: Color.fromARGB(100, 32, 50, 43),
          image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage('lib/images/bg-image.jpeg'))),
      child: Container(
        height: height / 2,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black],
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('abda',
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold, fontSize: 40)),
            const SizedBox(height: 20),
            const Text(
              textAlign: TextAlign.center,
              'Watch your favorite series or movies on \n only one platform. You can watch it \n anytime and anywhere',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 60),
            BgButton(
                text: 'Get Started',
                clickAction: () {
                  Get.to(() => const LoginScreen());
                },
                textColor: Colors.white,
                bgColor: AppColors.btnColor),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
