import 'package:flutter/material.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/custom_gradient_text.dart';

class FeaturedAdsRow extends StatelessWidget {
  const FeaturedAdsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Featured Ads',
            style: TextStyles.style14W600(color: AppColors.gray)
                .copyWith(fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              CustomGradientText(
                  text: Text(
                'View all',
                style: TextStyles.style12W500(color: Colors.white)
                    .copyWith(fontWeight: FontWeight.w700),
              )),
              ShaderMask(
                  shaderCallback: (bounds) =>
                      AppColors.appGradientColor(end: .6).createShader(bounds),
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
