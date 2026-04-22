import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/features/home/data/repos/home_repo.dart';
import 'package:pollo/features/home/presentation/manager/get_sub_categories/get_sub_categories_state.dart';

class GetSubCategoriesCubit extends Cubit<GetSubCategoriesState> {
  final HomeRepo homeRepo;
  GetSubCategoriesCubit({required this.homeRepo})
      : super(const GetSubCategoriesState.initial());

  Future<void> getSubCategories(int id) async {
    emit(const GetSubCategoriesState.loading());
    final result = await homeRepo.getSubCategories(id);
    result.fold((error) => emit(GetSubCategoriesState.error(error.message)),
        (subCategories) => emit(GetSubCategoriesState.loaded(subCategories)));
  }
}
