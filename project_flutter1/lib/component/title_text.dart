import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
 final String text;
  final double fontSize;

  const TitleText({
    super.key,
    required this.text,
    this.fontSize = 28,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}