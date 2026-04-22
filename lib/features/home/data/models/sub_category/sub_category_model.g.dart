// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubCategoryModelImpl _$$SubCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubCategoryModelImpl(
      id: (json['id'] as num).toInt(),
      image: json['image'] as String,
      name: json['name'] as String,
      type: json['type'] as String?,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$SubCategoryModelImplToJson(
        _$SubCategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'type': instance.type,
      'created_at': instance.createdAt,
    };
