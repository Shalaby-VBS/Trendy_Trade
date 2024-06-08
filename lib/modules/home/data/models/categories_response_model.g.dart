// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesResponseModel _$CategoriesResponseModelFromJson(
        Map<String, dynamic> json) =>
    CategoriesResponseModel(
      name: json['name'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CategoriesResponseModelToJson(
        CategoriesResponseModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };
