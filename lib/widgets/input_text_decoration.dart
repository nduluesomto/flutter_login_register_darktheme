import 'package:flutter/material.dart';

class InputTextDecoration extends StatelessWidget {
  final Widget fieldText;
  final Color bgColor;
  const InputTextDecoration(
      {Key? key, required this.fieldText, required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, top: 5, bottom: 5, right: 10),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(13)),
      child: fieldText,
    );
  }
}
