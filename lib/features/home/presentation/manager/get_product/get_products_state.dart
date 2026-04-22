import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollo/features/home/data/models/product_model/product_model.dart';

part 'get_products_state.freezed.dart';

@freezed
class GetProductsState with _$GetProductsState {
  const factory GetProductsState.initial() = _Initial;
  const factory GetProductsState.loading() = _Loading;
  const factory GetProductsState.loaded(List<ProductModel> products) = _Loaded;
  const factory GetProductsState.error(String message) = _Error;
}
