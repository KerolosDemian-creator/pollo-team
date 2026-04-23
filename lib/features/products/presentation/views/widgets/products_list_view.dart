import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_item.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (context, index) => SizedBox(
        height: 16.h,
      ),
      itemBuilder: (context, index) => const ProductItem(),
      itemCount: 5,
    );
  }
}
