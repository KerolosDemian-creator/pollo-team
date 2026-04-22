import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';

class SubCategoryItem extends StatelessWidget {
  const SubCategoryItem({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: GradientBoxBorder(gradient: AppColors.appGradientColor()),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              border: GradientBoxBorder(gradient: AppColors.appGradientColor()),
            ),
            child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10.r),
                child: Image.network(image)),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            title,
            style: TextStyles.style16W500(color: Colors.black)
                .copyWith(fontWeight: FontWeight.w700),
            maxLines: 1,
          )
        ],
      ),
    );
  }
}
