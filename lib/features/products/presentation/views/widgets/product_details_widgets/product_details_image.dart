import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsImage extends StatelessWidget {
  const ProductDetailsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 310.h,
        width: double.infinity,
        child: Image.asset(
          'assets/images/products/products_image_test.png',
          fit: BoxFit.cover,
        ));
  }
}
