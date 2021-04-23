import 'package:flutter/material.dart';

class LanguageManager {
  static LanguageManager _instance;
  static LanguageManager get instance {
    if (_instance == null) {
      _instance = LanguageManager._init();
    }
    return _instance;
  }

  LanguageManager._init();

  final Locale enLocale = Locale("en", "US");

  List<Locale> get locales => [enLocale];
}
