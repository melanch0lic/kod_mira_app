import 'package:json_annotation/json_annotation.dart';

part 'ferm_model.g.dart';

@JsonSerializable()
class FermModel {
  final int id;
  final String name;
  final String ownerName;
  final List<int> productCategories;
  final String adress;
  final String urlImage;

  FermModel({
    required this.id,
    required this.name,
    required this.ownerName,
    required this.productCategories,
    required this.adress,
    required this.urlImage,
  });

  factory FermModel.fromJson(Map<String, dynamic> json) => _$FermModelFromJson(json);

  Map<String, dynamic> toJson() => _$FermModelToJson(this);
}
