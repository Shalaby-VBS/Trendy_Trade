import 'package:json_annotation/json_annotation.dart';

part 'add_to_cart_request_body.g.dart';

@JsonSerializable()
class AddToCartRequestBody{
  final int productId;
  final int quantity;

  AddToCartRequestBody({required this.productId, required this.quantity});

  Map<String, dynamic> toJson() => _$AddToCartRequestBodyToJson(this);
}