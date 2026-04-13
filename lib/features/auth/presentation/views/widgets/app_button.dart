import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/theme/colors_manager.dart';
import 'package:pollo/core/validation/locale_keys.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.text, required this.ontap});
  final String text;
  final GestureTapCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 245.w,
        height: 50.h,
        decoration: BoxDecoration(
          gradient: ColorsManager.primaryGradientColor,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Center(
          child: Text(
            LocaleKeys.signin.tr(),
            style: TextStyles.style20W400().copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
