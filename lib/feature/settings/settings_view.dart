import 'package:flutter/material.dart';
import 'package:flutter_learn_last_week/product/theme_manager.dart';
import 'package:provider/provider.dart';

import '../../core/extensions/context_extension.dart';
import '../../core/extensions/string_extension.dart';
import '../../core/lang/locale_keys.g.dart';
import 'setting_model_view.dart';

class SettingsView extends StatelessWidget {
  final _viewModel = SettingsModelView();
  @override
  Widget build(BuildContext context) {
    _viewModel.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.appBar_settings.locale(context)),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: context.colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: Text(LocaleKeys.settings_theme.locale(context)),
                subtitle: Text("Current theme: ${context.watch<ThemeManager>().currentTheme}"),
                trailing: Icon(Icons.track_changes_outlined),
                onTap: () => _viewModel.changeTheme(),
              ),
              Divider(color: context.colorScheme.primary),
              ListTile(
                title: Text(LocaleKeys.settings_lang.locale(context)),
                trailing: Icon(Icons.text_rotation_angleup_sharp),
                onTap: () => _viewModel.changeLanguage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
