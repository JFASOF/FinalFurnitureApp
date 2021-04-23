class ImgConst {
  static ImgConst? _instace;
  static ImgConst get instance {
    if (_instace != null) return _instace!;
    _instace = ImgConst._init();
    return _instace!;
  }

  ImgConst._init();

  final sandalye = 'sandalye'.toPng;
  final koltuk = 'koltuk'.toPng;
  final masa = 'masa1'.toPng;
  final tvunite = 'tvunite'.toPng;
  final yatak = 'yatak'.toPng;
  final lamba = 'lamba'.toPng;
  final yatak2 = 'yatak'.toPng;
  final deriyatak = 'lamba'.toPng;
}

extension _ImageExtension on String {
  // Add to png path on image string
  String get toPng => 'assets/images/$this.png';
}