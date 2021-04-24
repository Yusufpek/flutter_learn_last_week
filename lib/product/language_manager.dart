import 'package:flutter/material.dart';
import '../feature/bottom_tabbar/app_bottom_tabbar.dart';

import '../core/components/enums/language_enum.dart';

class CurrentLanguageManager extends ChangeNotifier {
  Widget view = AppBottomTabbar();
  LanguageEnum currentLanguage = LanguageEnum.ENG;

  void changeCurrentLanguage() {
    if (currentLanguage == LanguageEnum.ENG) {
      currentLanguage = LanguageEnum.TR;
    } else {
      currentLanguage = LanguageEnum.ENG;
    }
    view = AppBottomTabbar();
    notifyListeners();
  }
}
