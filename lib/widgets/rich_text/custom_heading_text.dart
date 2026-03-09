import 'package:flutter/material.dart';
import 'package:hammad_butt/utils/constants/colors.dart';

class CustomHeadingText extends StatelessWidget {
  final String headingLine1;
  final String headingLine2;
  final String headingLine3;

  final double fontSizeLine1;
  final double fontSizeLine2;
  final double fontSizeLine3;

  const CustomHeadingText({
    super.key,
    required this.headingLine1,
    required this.fontSizeLine1,
    required this.headingLine2,
    required this.fontSizeLine2,
    required this.headingLine3,
    required this.fontSizeLine3,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: headingLine1,
            style: TextStyle(
              fontSize: fontSizeLine1,
              fontWeight: FontWeight.w500,
              color: HColors.secondaryText,
            ),
          ),
          TextSpan(
            text: headingLine2,
            style: TextStyle(
              color: HColors.primaryText,
              fontSize: fontSizeLine2,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: headingLine3,
            style: TextStyle(
              color: HColors.primaryColor,
              fontSize: fontSizeLine3,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
