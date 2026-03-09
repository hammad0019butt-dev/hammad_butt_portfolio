import 'package:flutter/material.dart';
import 'package:hammad_butt/utils/constants/colors.dart';

// this page only have dark theme

final ThemeData webTheme = ThemeData(
  scaffoldBackgroundColor: HColors.background,
  brightness: Brightness.dark,
  fontFamily: 'Inconsolata',
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: HColors.primaryButton,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: HColors.secondaryText,
          width: 2,
          style: BorderStyle.solid,
        ),
      ),
    ),
  ),
);
