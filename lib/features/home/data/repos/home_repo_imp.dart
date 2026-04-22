import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pollo/core/api/api_endpoints.dart';
import 'package:pollo/core/api/api_failure.dart';
import 'package:pollo/core/api/api_service.dart';
import 'package:pollo/features/home/data/models/category_model/category.dart';
import 'package:pollo/features/home/data/models/product_model/product_model.dart';
import 'package:pollo/features/home/data/models/sub_category/sub_category_model.dart';
import 'package:pollo/features/home/data/repos/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;

  HomeRepoImp({required this.apiService});
  @override
  Future<Either<Failure, List<Category>>> getCategories() async {
    try {
      final response = await apiService.get(
        endPoint: ApiEndpoints.listCategories,
      );

      if (response != null && response['data'] is List) {
        final List<Category> categories = [];
        for (var category in response['data']) {
          categories.add(Category.fromJson(category));
        }
        return right(categories);
      } else {
        return left(const ServerFailure("Unexpected data format"));
      }
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      debugPrint("HOME_REPO_ERROR: $e");
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getProductsOfCategory() async {
    try {
      final response = await apiService.get(endPoint: ApiEndpoints.getProducts);
      final List<ProductModel> products = [];
      for (var product in response['data']) {
        products.add(ProductModel.fromJson(product));
      }
      return right(products);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<SubCategoryModel>>> getSubCategories(
      int id) async {
    try {
      final response =
          await apiService.get(endPoint: ApiEndpoints.getSubCategories(id));
      final List<SubCategoryModel> subCategories = [];
      for (var subCategory in response['data']) {
        subCategories.add(SubCategoryModel.fromJson(subCategory));
      }
      return right(subCategories);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
