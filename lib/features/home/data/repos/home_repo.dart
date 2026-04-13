import 'package:dartz/dartz.dart';
import 'package:pollo/core/api/api_failure.dart';
import 'package:pollo/features/home/data/models/category_model/category.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Category>>> getCategories();
}
