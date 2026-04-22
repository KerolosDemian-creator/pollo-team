import 'package:dartz/dartz.dart';
import 'package:pollo/core/api/api_failure.dart';
import 'package:pollo/features/home/data/models/category_model/category.dart';
import 'package:pollo/features/home/data/models/product_model/product_model.dart';
import 'package:pollo/features/home/data/models/sub_category/sub_category_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Category>>> getCategories();
  Future<Either<Failure, List<SubCategoryModel>>> getSubCategories(int id);
  Future<Either<Failure, List<ProductModel>>> getProductsOfCategory();
}
