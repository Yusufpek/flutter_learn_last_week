import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../../product/language_manager.dart';
import '../../../product/theme_manager.dart';

class AppProvider {
  static AppProvider _instance;
  static AppProvider get instance {
    if (_instance == null) {
      _instance = AppProvider._init();
    }
    return _instance;
  }

  AppProvider._init();

  List<SingleChildWidget> dependItems = [
    ChangeNotifierProvider<ThemeManager>(
      create: (context) => ThemeManager(),
    ),
  ];
  List<SingleChildWidget> uiChangesItems = [
    ChangeNotifierProvider<CurrentLanguageManager>(
      create: (context) => CurrentLanguageManager(),
    ),
  ];
}
