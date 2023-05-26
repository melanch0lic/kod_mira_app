import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  final int id;
  final String name;
  final String description;
  final double price;
  final double discount;
  final String adress;
  final String urlImage;
  final String category;

  ProductModel(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.discount,
      required this.adress,
      required this.urlImage,
      required this.category});

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
