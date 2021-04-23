import 'package:flutter/material.dart';

import '../../product/theme_manager.dart';
import 'ITheme.dart';

class AppTheme extends ITheme {
  final ThemeData _lightTheme = ThemeManager().currentTheme;
  @override
  ThemeData get theme => ThemeData(
        appBarTheme: _lightTheme.appBarTheme.copyWith(
            backgroundColor: colors.gallery,
            textTheme: _lightTheme.textTheme.apply(bodyColor: Colors.black)),
        textTheme: _lightTheme.textTheme.apply(bodyColor: Colors.black),
        colorScheme: _lightTheme.colorScheme.copyWith(
          primary: Colors.white,
          onPrimary: colors.chambray,
          secondary: Colors.amber,
        ),
        tabBarTheme: _lightTheme.tabBarTheme.copyWith(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
        ),
        bottomAppBarColor: colors.chambray,
        bottomAppBarTheme: _lightTheme.bottomAppBarTheme.copyWith(
          shape: CircularNotchedRectangle(),
        ),
      );
}
