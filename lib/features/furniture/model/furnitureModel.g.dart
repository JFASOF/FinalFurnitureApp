// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'furnitureModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FurnitureModel _$FurnitureModelFromJson(Map<String, dynamic> json) {
  return FurnitureModel(
    json['furnitureName'] as String?,
    json['furnitureImage'] as String?,
    json['furniturePrice'] as String?,
    json['furniturePoint'] as String?,
    json['furnitureDesc'] as String?,
    json['isLiked'] as bool,
  );
}

Map<String, dynamic> _$FurnitureModelToJson(FurnitureModel instance) =>
    <String, dynamic>{
      'furnitureName': instance.furnitureName,
      'furnitureImage': instance.furnitureImage,
      'furniturePrice': instance.furniturePrice,
      'furnitureDesc': instance.furnitureDesc,
      'furniturePoint': instance.furniturePoint,
      'isLiked':instance.isLiked,
    };
