import 'package:flutter/material.dart';

class HCustomText extends StatelessWidget {
  final String text;
  final double size;
  final double? letterSpacing;
  final Color textColor;
  final FontWeight weight;

  const HCustomText({
    super.key,
    required this.text,
    required this.weight,
    required this.size,
    this.letterSpacing,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: weight,
        fontSize: size,
        letterSpacing: letterSpacing,
        color: textColor,
      ),
    );
  }
}
