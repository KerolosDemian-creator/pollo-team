import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.id});
  final String imageUrl;
  final String title;
  final int id;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105.w,
      height: 95.h,
      decoration: BoxDecoration(
        color: AppColors.lightBackground,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imageUrl,
            width: 50.w,
            height: 50.h,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.image_not_supported),
          ),
          Text(
            title,
            style: TextStyles.style12W500(),
          ),
        ],
      ),
    );
  }
}
