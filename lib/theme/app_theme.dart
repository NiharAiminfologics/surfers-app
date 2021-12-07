import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTheme {
  static const String roboto = 'Roboto';

  static const skyBlue = Color(0xFF09C4FF);
  static const purple = Color(0xFFB039F3);
  static const pink = Color(0xFFF33990);
  static const violet = Color(0xFF395EF3);
  static const location = Color(0xFFC5C5C5);
  static Color black10 = Color(0xFF5D5D5D).withOpacity(0.0);
  static Color black70 = Color(0xFF0C0C0C);
  static Color black80 = Color(0xFF141414).withOpacity(0.89);
  static Color black90 = Color(0xFF151515).withOpacity(0.89);
  static Color text = Color(0xFF979797);

  static ThemeData get lightTheme {
    return ThemeData(
        fontFamily: roboto,
        backgroundColor: Colors.white,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        platform: TargetPlatform.iOS);
  }
}
