// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ferm_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FermModel _$FermModelFromJson(Map<String, dynamic> json) => FermModel(
      id: json['id'] as int,
      name: json['name'] as String,
      ownerName: json['ownerName'] as String,
      productCategories: (json['productCategories'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      adress: json['adress'] as String,
      urlImage: json['urlImage'] as String,
    );

Map<String, dynamic> _$FermModelToJson(FermModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ownerName': instance.ownerName,
      'productCategories': instance.productCategories,
      'adress': instance.adress,
      'urlImage': instance.urlImage,
    };
