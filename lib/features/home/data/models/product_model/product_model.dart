import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollo/features/home/data/models/category_model/category.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String image,
    required String name,
    required String price,
    required String description,
    @JsonKey(name: 'remove_at') required String removeAt,
    String? merchant,
    required Category category,
    required CountryModel country,
    required LocationModel state,
    required LocationModel city,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({
    required int id,
    required String name,
    required String code,
    @JsonKey(name: 'currency_code')
    required String currencyCode, // ✅ String مش DateTime
    required String emoji,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({required int id, required String name}) =
      _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
