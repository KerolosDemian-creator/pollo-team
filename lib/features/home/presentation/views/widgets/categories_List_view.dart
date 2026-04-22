import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/core/validation/extentions.dart';
import 'package:pollo/features/home/presentation/manager/home/home_cubit.dart';
import 'package:pollo/features/home/presentation/manager/home/home_state.dart';
import 'package:pollo/features/home/presentation/views/widgets/category_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (categories) => GridView.builder(
            itemCount: categories.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
            ),
            itemBuilder: (context, index) {
              final category = categories[index];
              return InkWell(
                onTap: () {
                  context.pushNamed(
                    Routes.subCategoryScreen,
                    arguments: {
                      'id': category.id,
                      'title': category.name,
                    },
                  );
                },
                child: CategoryItem(
                  imageUrl: category.image,
                  title: category.name,
                  id: category.id,
                ),
              );
            },
          ),
          error: (message) => Center(child: Text(message)),
        );
      },
    );
  }
}
