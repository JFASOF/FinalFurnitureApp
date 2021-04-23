import 'package:dio/dio.dart';
import 'package:final_furniture_app/core/constant/app/appConstant.dart';
import 'package:final_furniture_app/core/constant/app/imgConstant.dart';
import 'package:final_furniture_app/core/init/service/FurnitureService.dart';
import 'package:final_furniture_app/core/init/service/IServiceFurn.dart';
import 'package:final_furniture_app/features/furniture/model/furnitureModel.dart';
import 'package:logger/logger.dart';
import 'package:mobx/mobx.dart';
part 'furniture_controller.g.dart';

class FurnitureController = _FurnitureControllerBase with _$FurnitureController;

abstract class _FurnitureControllerBase with Store {
  final Dio _dio =
      Dio(BaseOptions(baseUrl: ApplicationConstant.instance.baseUrl));
  late final IFurnituresService furnitureService;

  @observable
  List<FurnitureModel> furnitures = [];

  @observable
  bool isLoading = false;

  _FurnitureControllerBase() {
    furnitureService = FurnitureDoService(_dio) as IFurnituresService;
    getAllPhotos();
  }

  @action
  Future<void> getAllPhotos() async {
    changeLoading();
    final response = await furnitureService.getAllPhotos();
    Logger().wtf(response);
    changeLoading();
    furnitures = response;
  }

  @observable
  List<FurnitureModel> furnitureList=[
      FurnitureModel('Lamba', ImgConst.instance.lamba, "150" ,'4.5','Yüksek Işıklı Göz Yormaz Lamba',true),
      FurnitureModel('Tv Ünitesi', ImgConst.instance.tvunite, '950','4.8','MDF 1.Sınıf tv ünitesi',false),
      FurnitureModel('Yatak', ImgConst.instance.yatak, '1200','4.8','yeni yatak',true),
      FurnitureModel('Masa', ImgConst.instance.masa, '450','3.8','çınar ağacından masa',true),
      FurnitureModel('Sandalye', ImgConst.instance.sandalye, '650','4.8','Meşe ağacından sandalye',false),
      FurnitureModel('Koltuk', ImgConst.instance.koltuk, '850','4.9','Rahat Koltuk',false),
      FurnitureModel('Ergonomik Yatak', ImgConst.instance.yatak2, '2250','5.0','Ergonomik kaz tüyünden yapılmıştır.',true),
      FurnitureModel('Deri Koltuk', ImgConst.instance.deriyatak, '5000','4.6','1.sınıf suni deriden yapılmıştır.',true),
  ];

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }
    @action
  void setLike(int index) {
    furnitureList[index].isLiked = !furnitureList[index].isLiked;
    print(furnitureList[index].isLiked);
    furnitureList = furnitureList;
  }
}
