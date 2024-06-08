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

  ProductModel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.pictureURL,
    this.productCategory,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
