import 'package:flutter/material.dart';

import '../core/components/enums/theme_enum.dart';

class ThemeManager extends ChangeNotifier {
  ThemeData _currentTheme = ThemeData.light();
  ThemeEnum _currentThemeEnum = ThemeEnum.LIGHT;

  ThemeData get currentTheme => _currentTheme;

  void changeTheme() {
    if (_currentThemeEnum == ThemeEnum.LIGHT) {
      _currentTheme = ThemeData.dark();
      _currentThemeEnum = ThemeEnum.DARK;
    } else {
      _currentTheme = ThemeData.light();
      _currentThemeEnum = ThemeEnum.LIGHT;
    }
    notifyListeners();
  }
}
