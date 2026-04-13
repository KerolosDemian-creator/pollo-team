import 'package:dartz/dartz.dart';
import 'package:pollo/core/api/api_endpoints.dart';
import 'package:pollo/core/api/api_failure.dart';
import 'package:pollo/core/api/api_service.dart';
import 'package:pollo/features/home/data/models/category_model/category.dart';
import 'package:pollo/features/home/data/repos/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;

  HomeRepoImp({required this.apiService});
  @override
  Future<Either<Failure, List<Category>>> getCategories() async {
    try {
      final data = await apiService.get(endPoint: ApiEndpoints.listCategories);
      final List<Category> categories = [];
      for (var category in data['data']) {
        categories.add(Category.fromMap(category));
      }
      return right(categories);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
