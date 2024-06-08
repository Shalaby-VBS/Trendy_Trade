// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    ProductResponse(
      productsList: (json['data'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      pageIndex: (json['pageIndex'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductResponseToJson(ProductResponse instance) =>
    <String, dynamic>{
      'data': instance.productsList,
      'totalCount': instance.totalCount,
      'pageSize': instance.pageSize,
      'pageIndex': instance.pageIndex,
    };
