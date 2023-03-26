import 'package:flutter/material.dart';

class WelcomeBtmShadow extends StatelessWidget {
  const WelcomeBtmShadow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        height: 380,
        width: width,
        decoration: const BoxDecoration(
          // border: Border.all(color: Colors.transparent),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(100, 22, 44, 33),
              blurRadius: 9.0,
              spreadRadius: 0.0,
              //offset: const Offset(6, 10),
            ),
            // BoxShadow(
            //   color: Colors.white38,
            //   blurRadius: 2.0,
            //   spreadRadius: 0.1,
            //   offset: const Offset(-4, -4),
            // ),
          ],
        ));
    // border: Border.all(width: width, color: Colors.transparent),
    // color: Color.fromARGB(100, 32, 50, 43)));
  }
}
