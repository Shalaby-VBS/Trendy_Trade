// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCartResponseModel _$GetCartResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetCartResponseModel(
      cartItems: (json['items'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : GetCartModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetCartResponseModelToJson(
        GetCartResponseModel instance) =>
    <String, dynamic>{
      'items': instance.cartItems,
    };

GetCartModel _$GetCartModelFromJson(Map<String, dynamic> json) => GetCartModel(
      productId: (json['productId'] as num?)?.toInt(),
      productName: json['productName'] as String?,
      price: (json['price'] as num?)?.toInt(),
      pictureURL: json['pictureURL'] as String?,
      caregory: json['caregory'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetCartModelToJson(GetCartModel instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productName': instance.productName,
      'price': instance.price,
      'pictureURL': instance.pictureURL,
      'caregory': instance.caregory,
      'quantity': instance.quantity,
    };
