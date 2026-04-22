// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num).toInt(),
      image: json['image'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      description: json['description'] as String,
      removeAt: json['remove_at'] as String,
      merchant: json['merchant'] as String?,
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      country: CountryModel.fromJson(json['country'] as Map<String, dynamic>),
      state: LocationModel.fromJson(json['state'] as Map<String, dynamic>),
      city: LocationModel.fromJson(json['city'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'remove_at': instance.removeAt,
      'merchant': instance.merchant,
      'category': instance.category,
      'country': instance.country,
      'state': instance.state,
      'city': instance.city,
      'created_at': instance.createdAt,
    };

_$CountryModelImpl _$$CountryModelImplFromJson(Map<String, dynamic> json) =>
    _$CountryModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
      currencyCode: json['currency_code'] as String,
      emoji: json['emoji'] as String,
    );

Map<String, dynamic> _$$CountryModelImplToJson(_$CountryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'currency_code': instance.currencyCode,
      'emoji': instance.emoji,
    };

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
