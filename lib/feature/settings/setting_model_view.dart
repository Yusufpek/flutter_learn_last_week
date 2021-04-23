import 'package:flutter_learn_last_week/product/language_manager.dart';
import 'package:flutter_learn_last_week/product/theme_manager.dart';
import 'package:mobx/mobx.dart';

part 'setting_model_view.g.dart';

class SettingsModelView = _SettingsModelViewBase with _$SettingsModelView;

abstract class _SettingsModelViewBase with Store {
  @action
  void changeTheme() {
    ThemeManager().changeTheme();
  }

  @action
  void changeLanguage() {
    CurrentLanguageManager().changeCurrentLanguage();
  }
}
