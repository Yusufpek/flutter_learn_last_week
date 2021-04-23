import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../product/language_manager.dart';
import '../components/enums/language_enum.dart';

extension StringLocalization on String {
  String locale(BuildContext context) {
    if (context.watch<CurrentLanguageManager>().currentLanguage == LanguageEnum.TR) {
      print("tr oldu");
      return this.tr();
    } else {
      return this;
    }
  }
}
