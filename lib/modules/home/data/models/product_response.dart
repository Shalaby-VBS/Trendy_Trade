import 'package:json_annotation/json_annotation.dart';

import 'product_model.dart';

part 'product_response.g.dart';

@JsonSerializable()
class ProductResponse {
  @JsonKey(name: 'data')
  List<ProductModel>? productsList;
  int? totalCount;
  int? pageSize;
  int? pageIndex;

  ProductResponse({
    this.productsList,
    this.totalCount,
    this.pageSize,
    this.pageIndex,
  });

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}
