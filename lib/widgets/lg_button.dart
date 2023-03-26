import 'package:flutter/material.dart';

class BgButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color bgColor;
  final VoidCallback clickAction;
  const BgButton(
      {Key? key,
      required this.text,
      required this.clickAction,
      required this.textColor,
      required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: clickAction,
      child: Container(
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(16)),
        height: 60,
        child: Center(
          child: Text(text,
              style: TextStyle(color: textColor, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
