import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/colors.dart';

class TextStyles {
  TextStyles._();
  static TextStyle style12W500({Color? color}) {
    return TextStyle(
      fontSize: 12.sp,
      color: color ?? Colors.black,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle style13W500({Color? color}) {
    return TextStyle(
      fontSize: 13.sp,
      color: color ?? AppColors.gray,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle style14W600({Color? color}) {
    return TextStyle(
      fontSize: 14.sp,
      color: color ?? Colors.white,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle style16W500({Color? color}) {
    return TextStyle(
      fontSize: 16.sp,
      color: color ?? AppColors.gray,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle style18W500({Color? color}) {
    return TextStyle(
      fontSize: 18.sp,
      color: color ?? AppColors.black,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle style20W400({Color? color}) {
    return TextStyle(
      fontSize: 20.sp,
      color: color ?? AppColors.gray,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle style22W600({Color? color}) {
    return TextStyle(
      fontSize: 22.sp,
      color: color ?? AppColors.black,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle style24W700({Color? color}) {
    return TextStyle(
      fontSize: 24.sp,
      color: color ?? AppColors.black,
      fontWeight: FontWeight.w700,
    );
  }
}
