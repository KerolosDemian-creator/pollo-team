import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: AppColors.lightGray)),
      height: 155.h,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            height: double.infinity,
            child: Image.asset(
              'assets/images/products/products_image_test.png',
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cat',
                        style: TextStyles.style16W500(color: Colors.black),
                      ),
                      const Icon(
                        Icons.favorite_border_rounded,
                        color: AppColors.lightGray,
                      ),
                    ],
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: 'Price: ',
                      style: TextStyles.style16W500(color: Colors.black),
                    ),
                    TextSpan(
                      text: '500 L.E',
                      style: TextStyles.style16W500(color: Colors.black)
                          .copyWith(fontWeight: FontWeight.w600),
                    )
                  ])),
                  const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: AppColors.starsColor,
                      ),
                      Icon(
                        Icons.star,
                        color: AppColors.starsColor,
                      ),
                      Icon(
                        Icons.star,
                        color: AppColors.starsColor,
                      ),
                      Icon(
                        Icons.star,
                        color: AppColors.starsColor,
                      ),
                      Icon(
                        Icons.star,
                        color: AppColors.starsColor,
                      ),
                    ],
                  ),
                  Text(
                    'Sharkia - Zagazig',
                    style: TextStyles.style14W600(color: AppColors.gray)
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  Text('5 days ago',
                      style: TextStyles.style12W500(color: AppColors.gray)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
