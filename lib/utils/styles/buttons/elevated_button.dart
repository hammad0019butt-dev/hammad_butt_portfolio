import 'package:flutter/material.dart';

class HElevatedButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color buttonColor;
  final Color textColor;
  final FontWeight textWeight;
  final double textSize;
  final double buttonPaddingHor;
  final double buttonPaddingVer;
  final double borderRadius;
  final IconData? icon;
  final double? iconSize;
  final Color? iconColor;

  const HElevatedButton({
    super.key,
    required this.onTap,
    required this.buttonColor,
    required this.buttonPaddingHor,
    required this.buttonPaddingVer,
    required this.textWeight,
    required this.text,
    required this.textColor,
    required this.textSize,
    required this.borderRadius,
    this.icon,
    this.iconSize,
    this.iconColor
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        elevation: 0,
        padding: EdgeInsets.symmetric(
          horizontal: buttonPaddingHor,
          vertical: buttonPaddingVer,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),

      child: Row(
        children: [
          // text
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

          // Icon
          Icon( icon as IconData, size: iconSize, color: iconColor),
        ],
      ),
    );
  }
}
