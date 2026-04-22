import 'package:bloc/bloc.dart';
import 'package:pollo/features/home/data/repos/home_repo.dart';
import 'package:pollo/features/home/presentation/manager/home/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;

  HomeCubit({required this.homeRepo}) : super(const HomeState.initial());
  Future<void> getCategories() async {
    emit(const HomeState.loading());
    final result = await homeRepo.getCategories();
    result.fold(
      (failure) => emit(HomeState.error(failure.message)),
      (categories) => emit(HomeState.loaded(categories)),
    );
  }
}
