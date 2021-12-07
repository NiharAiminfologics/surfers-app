import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_theme.dart';

class AppTextStyle {
  static TextStyle title = TextStyle(
      fontSize: 30.sp, fontWeight: FontWeight.bold, color: Colors.black);

  static TextStyle surfing = TextStyle(
      fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.black);

  static TextStyle name = TextStyle(
      fontSize: 12.sp, fontWeight: FontWeight.bold, color: Colors.black);

  static TextStyle hours = TextStyle(
      fontSize: 9.sp,
      fontWeight: FontWeight.w500,
      color: Colors.black.withOpacity(0.51));
  static TextStyle famous = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle location = TextStyle(
    fontSize: 9.sp,
    fontWeight: FontWeight.w500,
    color: AppTheme.location,
  );

  static TextStyle userName = TextStyle(
      fontSize: 45.sp,
      fontWeight: FontWeight.w700,
      color: Colors.white,
      letterSpacing: -2.sp,
      shadows: [
        BoxShadow(
            color: Colors.black.withOpacity(.31.sp),
            offset: Offset(0.sp, 2.sp),
            blurRadius: 2.sp)
      ]);

  static TextStyle info = TextStyle(
      fontSize: 17.sp,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      shadows: [
        BoxShadow(
            color: Colors.black.withOpacity(0.22.sp),
            offset: Offset(1.sp, 1.sp),
            blurRadius: 2.sp)
      ]);

  static TextStyle follow = TextStyle(
      fontSize: 15.sp, fontWeight: FontWeight.bold, color: Colors.white);

  static TextStyle title2 = TextStyle(
      fontSize: 26.sp, fontWeight: FontWeight.w700, color: Colors.black);
  static TextStyle date = TextStyle(
      fontSize: 13.sp, fontWeight: FontWeight.w500, color: Colors.black);
  static TextStyle longText = TextStyle(
      fontSize: 17.sp, fontWeight: FontWeight.w500, color: AppTheme.text);
}
