class ImageConstants {
  static ImageConstants _instance;
  static ImageConstants get instance {
    if (_instance == null) {
      _instance = ImageConstants._init();
    }
    return _instance;
  }

  ImageConstants._init();

  String get profileImgUrl => "https://avatars.githubusercontent.com/u/17102578?v=4";
}
