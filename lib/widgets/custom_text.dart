import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({required this.text, this.textSize, this.textWight});
  final String text;
  final double? textSize;
  final FontWeight? textWight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black54,
        fontSize: textSize,
        fontWeight: textWight,
      ),
    );
  }
}
