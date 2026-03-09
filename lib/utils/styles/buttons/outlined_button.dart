import 'package:flutter/material.dart';

class HOutlinedButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color textColor;
  final FontWeight textWeight;
  final double textSize;
  final double buttonPaddingHor;
  final double buttonPaddingVer;
  final double borderRadius;
  final Color borderColor;
  final double? borderWidth;
  final IconData? icon;
  final double? iconSize;
  final Color? iconColor;

  const HOutlinedButton({
    super.key,
    required this.onTap,
    required this.buttonPaddingHor,
    required this.buttonPaddingVer,
    required this.textWeight,
    required this.text,
    required this.textColor,
    required this.textSize,
    required this.borderRadius,
    required this.borderColor,
    this.borderWidth,
    this.icon,
    this.iconColor,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.symmetric(
          horizontal: buttonPaddingHor,
          vertical: buttonPaddingVer,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(color: borderColor, width: 2),
        ),
      ),

      child: Row(
        children: [
          // Text
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Inconsolata',
              fontSize: textSize,
              fontWeight: textWeight,
              color: textColor,
            ),
          ),

          SizedBox(width: 10),

          // Button Icon
          Icon(icon, size: iconSize, color: iconColor),
        ],
      ),
    );
  }
}
