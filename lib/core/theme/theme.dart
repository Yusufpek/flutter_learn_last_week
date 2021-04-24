import 'package:flutter/material.dart';

import 'ITheme.dart';

class AppTheme extends ITheme {
  AppTheme(this._lightTheme);
  ThemeData _lightTheme;
  @override
  ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: colors.gallery,
        appBarTheme: _lightTheme.appBarTheme.copyWith(
            elevation: 0,
            centerTitle: false,
            backgroundColor: colors.gallery,
            textTheme: _lightTheme.textTheme.apply(
              bodyColor: Colors.black,
            )),
        textTheme: _lightTheme.textTheme.apply(
          bodyColor: Colors.white,
        ),
        colorScheme: _lightTheme.colorScheme.copyWith(
          primary: Colors.white,
          onPrimary: colors.chambray,
          secondary: Colors.amber,
          onSecondary: Colors.grey,
          onError: Colors.red,
        ),
        tabBarTheme: _lightTheme.tabBarTheme.copyWith(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
        ),
        bottomAppBarColor: colors.chambray,
        bottomAppBarTheme: _lightTheme.bottomAppBarTheme.copyWith(
          shape: CircularNotchedRectangle(),
        ),
        inputDecorationTheme: _lightTheme.inputDecorationTheme.copyWith(
          border: OutlineInputBorder(),
          focusColor: Colors.black,
          hoverColor: Colors.black,
        ),
      );
}
