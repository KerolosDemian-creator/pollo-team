import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/colors.dart';

class TextStyles {
  TextStyles._();
  static TextStyle style24W700({Color? color}) {
    return TextStyle(
      fontSize: 24.sp,
      color: color ?? AppColors.black,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle style20W400({Color? color}) {
    return TextStyle(
      fontSize: 20.sp,
      color: color ?? AppColors.gray,
      fontWeight: FontWeight.w400,
    );
  }
}
