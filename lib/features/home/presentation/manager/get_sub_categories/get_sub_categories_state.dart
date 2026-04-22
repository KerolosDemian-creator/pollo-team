import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollo/features/home/data/models/sub_category/sub_category_model.dart';

part 'get_sub_categories_state.freezed.dart';

@freezed
class GetSubCategoriesState with _$GetSubCategoriesState {
  const factory GetSubCategoriesState.initial() = _Initial;
  const factory GetSubCategoriesState.loading() = _Loading;
  const factory GetSubCategoriesState.loaded(
      List<SubCategoryModel> subCategories) = _Loaded;
  const factory GetSubCategoriesState.error(String message) = _Error;
}
