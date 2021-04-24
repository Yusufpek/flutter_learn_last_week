import 'package:flutter/material.dart';
import '../feature/furniture/model/furniture_model.dart';

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
