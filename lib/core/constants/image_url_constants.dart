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
  String get chair1ImgUrl =>
      "https://cdn.pixabay.com/photo/2017/09/03/19/46/chair-2711803_960_720.jpg";
}
