import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details_widgets/cat_row.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details_widgets/owner_container.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details_widgets/product_details_image.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Image
        const ProductDetailsImage(),

        /// SizedBox
        SizedBox(
          height: 16.h,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Cat Row
              const CatRow(),

              /// SizedBox
              SizedBox(
                height: 8.h,
              ),

              /// Price
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Price: ',
                  style: TextStyles.style22W600(color: Colors.black)
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: '500 L.E',
                  style: TextStyles.style22W600(color: Colors.black),
                )
              ])),

              /// SizedBox
              SizedBox(
                height: 8.h,
              ),

              /// Location & Date
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on_outlined),
                      Text(
                        'Sharkia - Zagazig',
                        style: TextStyles.style16W500(color: AppColors.gray),
                      ),
                    ],
                  ),
                  Text('2/6/2023', style: TextStyles.style16W500())
                ],
              ),

              /// SizedBox
              SizedBox(
                height: 25.h,
              ),

              Text('Details',
                  style: TextStyles.style18W500()
                      .copyWith(fontWeight: FontWeight.w600)),

              /// SizedBox
              SizedBox(
                height: 8.h,
              ),

              /// Detail Content
              Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: TextStyles.style16W500()),

              /// SizedBox
              SizedBox(
                height: 24.h,
              ),

              Text('Owner',
                  style: TextStyles.style18W500()
                      .copyWith(fontWeight: FontWeight.w600)),

              /// SizedBox
              SizedBox(
                height: 8.h,
              ),

              /// Owner Container
              const OwnerContainer(),
            ],
          ),
        )
      ],
    );
  }
}
