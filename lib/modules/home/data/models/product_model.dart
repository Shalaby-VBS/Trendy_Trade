import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  int? id;
  String? name;
  String? description;
  num? price;
  String? pictureURL;
  String? productCategory;
  int quantity;

  ProductModel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.pictureURL,
    this.productCategory,
    this.quantity = 0,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
