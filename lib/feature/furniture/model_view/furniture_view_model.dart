import 'package:mobx/mobx.dart';

import '../model/furniture_model.dart';

part 'furniture_view_model.g.dart';

class FurnitureViewModel = _FurnitureViewModelBase with _$FurnitureViewModel;

abstract class _FurnitureViewModelBase with Store {
  @observable
  List<Furniture> furnitureList = [];
}
