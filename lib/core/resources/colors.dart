import 'package:flutter/material.dart';

abstract class AppColors {
  AppColors._();
  static const Color primary = Color(0xffC20167);

  static const Color black = Color(0xff000000);
  static const Color gray = Color(0xff544F4F);
  static const Color lightGray = Color(0xff9B9B9B);
  static const Color lightBackground = Color(0xffECECEC);
  static const Color primary2 = Color(0xff064198);
  static const Color mauve = Color(0xffC388B3);
  static const Color starsColor = Color(0xffD69304);
  static const Color green = Color(0xff06833E);

  static LinearGradient appGradientColor({double end = 1.0}) => LinearGradient(
        colors: const [AppColors.primary2, AppColors.primary],
        stops: [0.0, end],
      );
}
