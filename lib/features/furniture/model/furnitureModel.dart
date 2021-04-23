
import 'package:json_annotation/json_annotation.dart';
part 'furnitureModel.g.dart';
@JsonSerializable()
class FurnitureModel{
  final String? furnitureName;
  final String? furnitureImage;
  final String? furniturePrice;
  final String? furnitureDesc;
  final String? furniturePoint;

  FurnitureModel(this.furnitureName, this.furnitureImage, this.furniturePrice,this.furniturePoint,this.furnitureDesc);
  
  factory FurnitureModel.fromJson(Map<String, dynamic> json) {
    return _$FurnitureModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$FurnitureModelToJson(this);
  }

}