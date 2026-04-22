import 'package:flutter/material.dart';
import 'package:pollo/features/home/data/models/sub_category/sub_category_model.dart';
import 'package:pollo/features/home/presentation/views/widgets/sub_category_widgets/sub_category_item.dart';

class SubCategoriesGridView extends StatelessWidget {
  const SubCategoriesGridView({super.key, required this.subCategory});
  final List<SubCategoryModel> subCategory;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: subCategory.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 165 / 196),
        itemBuilder: (context, index) {
          return SubCategoryItem(
            image: subCategory[index].image,
            title: subCategory[index].name,
          );
        });
  }
}
