import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/core/resources/get_it.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/features/home/data/repos/home_repo_imp.dart';
import 'package:pollo/features/home/presentation/manager/get_sub_categories/get_sub_categories_cubit.dart';
import 'package:pollo/features/home/presentation/views/widgets/sub_category_widgets/sub_categories_body.dart';

class SubCategoriesScreen extends StatelessWidget {
  final int id;
  final String title;
  const SubCategoriesScreen({super.key, required this.id, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => GetSubCategoriesCubit(
          homeRepo: getIt<HomeRepoImp>(),
        )..getSubCategories(id),
        child: SubCategoriesBody(id: id),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          title,
          style: TextStyles.style22W600(),
        ),
        centerTitle: true,
      ),
    );
  }
}
