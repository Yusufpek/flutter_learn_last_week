import 'package:flutter/material.dart';

import '../components/color/color_theme.dart';

abstract class ITheme {
  ThemeData theme;
  ColorTheme colors = ColorTheme();
}
