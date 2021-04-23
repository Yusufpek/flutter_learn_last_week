import 'package:flutter/material.dart';
import 'package:flutter_learn_last_week/feature/bottom_tabbar/app_bottom_tabbar.dart';

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
