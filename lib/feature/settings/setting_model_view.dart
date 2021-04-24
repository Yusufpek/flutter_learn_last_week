import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../product/language_manager.dart';
import '../../product/theme_manager.dart';

part 'setting_model_view.g.dart';

class SettingsModelView = _SettingsModelViewBase with _$SettingsModelView;

abstract class _SettingsModelViewBase with Store {
  BuildContext _context;
  void init(BuildContext context) {
    _context = context;
  }

  @action
  void changeTheme() {
    _context.read<ThemeManager>().changeTheme();
  }

  @action
  void changeLanguage() {
    _context.read<CurrentLanguageManager>().changeCurrentLanguage();
  }
}
