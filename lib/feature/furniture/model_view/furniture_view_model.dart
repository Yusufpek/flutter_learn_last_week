import 'package:flutter_learn_last_week/core/constants/image_url_constants.dart';
import 'package:mobx/mobx.dart';

import '../model/furniture_model.dart';

part 'furniture_view_model.g.dart';

class FurnitureViewModel = _FurnitureViewModelBase with _$FurnitureViewModel;

abstract class _FurnitureViewModelBase with Store {
  @observable
  List<Furniture> furnitureList = [
    Furniture(
      title: "Clovidennt",
      description: "",
      url: ImageConstants.instance.chair1ImgUrl,
      price: 201,
      rate: 4.5,
    ),
    Furniture(
      title: "Clovidennt",
      description: "",
      url: ImageConstants.instance.chair1ImgUrl,
      price: 201,
      rate: 4.5,
    ),
    Furniture(
      title: "Clovidennt",
      description: "",
      url: ImageConstants.instance.chair1ImgUrl,
      price: 201,
      rate: 4.5,
    ),
    Furniture(
      title: "Clovidennt",
      description: "",
      url: ImageConstants.instance.chair1ImgUrl,
      price: 201,
      rate: 4.5,
    ),
  ];
}
