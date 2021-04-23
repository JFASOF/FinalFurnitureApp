import 'dart:io';
import 'package:dio/dio.dart';
import 'package:final_furniture_app/core/constant/app/appConstant.dart';
import 'package:final_furniture_app/features/furniture/model/furnitureModel.dart';
import 'package:final_furniture_app/features/furniture/service/IServiceFurn.dart';
import 'package:final_furniture_app/features/furniture/service/furnitureRaw_path.dart';

class FurnitureDoService extends IFurnituresService {
  FurnitureDoService(Dio dio) : super(dio);

  @override
  Future<List<FurnitureModel>> getAllPhotos() async {
    final response = await dio.get(ApplicationConstant.instance.baseUrl);

    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;
      if (data is List) {
        return data.map((e) => FurnitureModel.fromJson(e)).toList();
      }
    }

    return [];
  }

}
