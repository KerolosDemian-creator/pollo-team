import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/custom_gradient_text.dart';

class OwnerContainer extends StatelessWidget {
  const OwnerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60.h,
          width: 60.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              color: AppColors.green),
          child: Center(
              child: Text(
            'S',
            style: TextStyles.style22W600(color: Colors.white)
                .copyWith(fontWeight: FontWeight.w500),
          )),
        ),
        SizedBox(
          width: 8.w,
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Salma Ibrahim ',
                      style: TextStyles.style16W500(color: Colors.black)),
                  Row(
                    children: [
                      ShaderMask(
                          shaderCallback: (bounds) =>
                              AppColors.appGradientColor(end: .7)
                                  .createShader(bounds),
                          child: const Icon(
                            Icons.phone,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 5.w,
                      ),
                      CustomGradientText(
                          text: Text(
                        'Contact',
                        style: TextStyles.style12W500(color: Colors.white)
                            .copyWith(fontWeight: FontWeight.w700),
                      )),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Member since nov 2024',
                    style: TextStyles.style12W500(color: AppColors.gray),
                  ),
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
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
