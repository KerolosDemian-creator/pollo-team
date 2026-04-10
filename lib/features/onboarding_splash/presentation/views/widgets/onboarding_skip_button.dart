import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/colors.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({super.key, required this.ontap});
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          gradient: AppColors.appGradientColor(end: .7),
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              gradient: AppColors.appGradientColor(end: .7),
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: IconButton(
              onPressed: ontap,
              icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
