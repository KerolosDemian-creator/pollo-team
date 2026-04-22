import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/features/home/data/repos/home_repo.dart';
import 'package:pollo/features/home/presentation/manager/get_product/get_products_state.dart';

class GetProductCubit extends Cubit<GetProductsState> {
  final HomeRepo homeRepo;

  GetProductCubit({required this.homeRepo})
    : super(const GetProductsState.initial());
  Future<void> getProductsOfCategory() async {
    emit(const GetProductsState.loading());
    final result = await homeRepo.getProductsOfCategory();
    result.fold(
      (error) => emit(GetProductsState.error(error.message)),
      (products) => emit(GetProductsState.loaded(products)),
    );
  }
}
