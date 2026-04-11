import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.index,
    required this.onboardingPages,
  });
  final int index;
  final List onboardingPages;
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (bounds) => AppColors.appGradientColor().createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        ),

        child: AnimatedSmoothIndicator(
          activeIndex: index,
          count: onboardingPages.length,
          effect: CustomizableEffect(
            dotDecoration: DotDecoration(
              width: 8.w,
              height: 8.h,
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(4.r),
            ),
            activeDotDecoration: DotDecoration(
              width: 24.w,
              height: 8.h,
              color: Colors.white,
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
          textDirection: Directionality.of(context),
        ),
      ),
    );
  }
}
