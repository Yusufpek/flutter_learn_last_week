import 'package:provider/provider.dart';

import '../../../product/favorite_manager.dart';
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

  List<ChangeNotifierProvider> providerItems = [
    ChangeNotifierProvider<ThemeManager>(
      create: (context) => ThemeManager(),
    ),
    ChangeNotifierProvider<CurrentLanguageManager>(
      create: (context) => CurrentLanguageManager(),
    ),
    ChangeNotifierProvider<FavoriteManager>(
      create: (context) => FavoriteManager(),
    ),
  ];
}
