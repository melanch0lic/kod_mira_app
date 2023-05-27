import 'package:json_annotation/json_annotation.dart';
part 'tender_model.g.dart';

@JsonSerializable()
class TenderModel {
  final int id;
  final String numberSystem;
  final int endResult;
  final String productName;
  final String farmName;
  final double price;
  final int currentResult;
  TenderModel({
    required this.id,
    required this.numberSystem,
    required this.endResult,
    required this.productName,
    required this.farmName,
    required this.price,
    required this.currentResult,
  });

  factory TenderModel.fromJson(Map<String, dynamic> json) => _$TenderModelFromJson(json);

  Map<String, dynamic> toJson() => _$TenderModelToJson(this);
}
