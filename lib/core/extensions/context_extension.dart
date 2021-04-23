import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  double dynamicHeight(double val) => MediaQuery.of(this).size.height * val;
  double dynamicWidth(double val) => MediaQuery.of(this).size.width * val;
}
