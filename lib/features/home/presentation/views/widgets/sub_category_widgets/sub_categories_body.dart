import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/features/home/data/models/sub_category/sub_category_model.dart';
import 'package:pollo/features/home/presentation/manager/get_sub_categories/get_sub_categories_cubit.dart';
import 'package:pollo/features/home/presentation/manager/get_sub_categories/get_sub_categories_state.dart';
import 'package:pollo/features/home/presentation/views/widgets/sub_category_widgets/sub_categories_grid_view.dart';

class SubCategoriesBody extends StatelessWidget {
  const SubCategoriesBody({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<GetSubCategoriesCubit, GetSubCategoriesState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (List<SubCategoryModel> subCategories) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 10.h,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 138.h,
                        width: double.infinity,
                        child:
                            Image.asset(AppImages.adsImage2, fit: BoxFit.fill),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 24.h,
                      ),
                    ),
                    SliverToBoxAdapter(
                        child: Text('Available',
                            style: TextStyles.style20W400().copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.black))),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 8.h,
                      ),
                    ),
                    SubCategoriesGridView(
                      subCategory: subCategories,
                    )
                  ],
                ),
              );
            },
            error: (String message) {
              return Center(child: Text(message));
            },
          );
        },
      ),
    );
  }
}
