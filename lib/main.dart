import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn_last_week/product/theme_manager.dart';
import 'package:provider/provider.dart';

import 'core/components/notifier/provider_list.dart';
import 'core/constants/application_constants.dart';
import 'core/lang/language_manager.dart';
import 'core/theme/theme.dart';
import 'product/language_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    MultiProvider(
      providers: AppProvider.instance.providerItems,
      child: EasyLocalization(
        supportedLocales: LanguageManager.instance.locales,
        path: ApplicationConstants.LANG_ASSET_PATH,
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture App',
      theme: AppTheme(Provider.of<ThemeManager>(context, listen: true).currentTheme).theme,
      home: Provider.of<CurrentLanguageManager>(context, listen: false).view,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
