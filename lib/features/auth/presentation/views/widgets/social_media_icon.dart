import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pollo/core/resources/colors.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({super.key, required this.iconImg});
  final String iconImg;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.gray.withOpacity(0.5),
            blurRadius: 5,
            spreadRadius: 1,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      width: 50.w,
      height: 50.h,
      child: Center(child: SvgPicture.asset(iconImg)),
    );
  }
}
