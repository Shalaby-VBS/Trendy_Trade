import 'package:json_annotation/json_annotation.dart';
import 'package:trendy_trade/modules/home/data/models/product_model.dart';

part 'products_response.g.dart';

@JsonSerializable()
class ProductsResponse {
  @JsonKey(name: 'data')
  List<ProductModel>? productsList;

  ProductsResponse({
    this.productsList,
  });

  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseFromJson(json);
}
