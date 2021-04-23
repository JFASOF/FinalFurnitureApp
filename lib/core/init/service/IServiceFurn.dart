import 'package:dio/dio.dart';
import 'package:final_furniture_app/features/furniture/model/furnitureModel.dart';

abstract class IFurnituresService {
  final Dio dio;

  IFurnituresService(this.dio);

  Future<List<FurnitureModel>> getAllPhotos();
}