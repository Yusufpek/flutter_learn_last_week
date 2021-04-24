import 'package:flutter/material.dart';
import 'package:flutter_learn_last_week/feature/furniture/model/furniture_model.dart';

class FavoriteManager extends ChangeNotifier {
  List<Furniture> favoriteFurnitures = [];

  void addFurnitue(Furniture furniture) {
    favoriteFurnitures.add(furniture);
    notifyListeners();
  }

  void removeFurniture(Furniture furniture) {
    favoriteFurnitures.remove(furniture);
    notifyListeners();
  }
}
