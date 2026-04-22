import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/core/api/api_service.dart';
import 'package:pollo/core/api/dio_factory.dart';
import 'package:pollo/features/home/data/repos/home_repo_imp.dart';
import 'package:pollo/features/home/presentation/manager/home/home_cubit.dart';
import 'package:pollo/features/home/presentation/views/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => HomeCubit(
          homeRepo: HomeRepoImp(
            apiService: ApiService(dio: DioFactory.instance),
          ),
        )..getCategories(),
        child: const HomeBody(),
      ),
    );
  }
}
