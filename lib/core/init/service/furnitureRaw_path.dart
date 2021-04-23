enum FurnServicePath{FURNITURESLIST}
extension FurnServicePathExtension on FurnServicePath {
  String get rawValue{
    switch(this){
      case FurnServicePath.FURNITURESLIST:
        return 'furnitureList.json?auth=0Y4p9AY1EjfWSPWwmCFjzVqabll9uUPXnZncZC2C';
    }
  }
}