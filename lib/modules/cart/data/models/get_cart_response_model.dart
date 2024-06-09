import 'package:json_annotation/json_annotation.dart';

part 'get_cart_response_model.g.dart';

@JsonSerializable()
class GetCartResponseModel {
  @JsonKey(name: 'items')
  List<GetCartModel?>? cartItems;

  GetCartResponseModel({
    this.cartItems,
  });

  factory GetCartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetCartResponseModelFromJson(json);
}

@JsonSerializable()
class GetCartModel {
  final int? productId;
  final String? productName;
  final int? price;
  final String? pictureURL;
  final String? caregory;
  final int? quantity;

  GetCartModel({
    this.productId,
    this.productName,
    this.price,
    this.pictureURL,
    this.caregory,
    this.quantity,
  });

  factory GetCartModel.fromJson(Map<String, dynamic> json) =>
      _$GetCartModelFromJson(json);
}
