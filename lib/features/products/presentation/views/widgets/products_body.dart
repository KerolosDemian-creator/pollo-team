import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/custom_txt_form_field.dart';
import 'package:pollo/features/products/presentation/views/widgets/featured_ads_row.dart';
import 'package:pollo/features/products/presentation/views/widgets/products_list_view.dart';

class ProductsBody extends StatelessWidget {
  const ProductsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          /// Txt Form Field
          SliverToBoxAdapter(
            child: Row(
              spacing: 24.w,
              children: [
                const Expanded(child: CustomTxtFormField()),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.lightGray),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.tune,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),

          /// SizedBox
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16.h,
            ),
          ),

          /// Sort By Row
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Showing: ',
                      style: TextStyles.style13W500(),
                    ),
                    Text(
                      '1199 Results for Cats',
                      style: TextStyles.style13W500(color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  width: 4.w,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(color: AppColors.lightGray)),
                  child: Center(
                    child: Row(
                      children: [
                        Text('Sort by', style: TextStyles.style12W500()),
                        ShaderMask(
                          shaderCallback: (bounds) =>
                              AppColors.appGradientColor(end: .6)
                                  .createShader(bounds),
                          child: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          /// SizedBox
          SliverToBoxAdapter(
            child: SizedBox(
              height: 32.h,
            ),
          ),

          /// Featured Ads
          const FeaturedAdsRow(),

          /// SizedBox
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8.h,
            ),
          ),

          /// Products ListView
          const ProductsListView(),
        ],
      ),
    );
  }
}
