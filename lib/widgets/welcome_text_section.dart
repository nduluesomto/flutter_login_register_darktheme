import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeTextSection extends StatelessWidget {
  const WelcomeTextSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('abda',
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 40)),
          Text('.', style: TextStyle(color: Colors.blueAccent, fontSize: 40)),
        ]),
        SizedBox(height: 30),
        Text(
            'Watch your faavorite series or movies on only one platform. You can watch it anytime and anywhere '),
      ],
    );
  }
}
