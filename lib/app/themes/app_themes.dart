import 'package:flutter/material.dart';

import 'theme_dark.dart';
import 'theme_light.dart';

class AppThemes {
  static const String _fontFamily = "Poppins";

  static ThemeData lightTheme() {
    return ThemeLight(_fontFamily).init();
  }

  static ThemeData darkTheme() {
    return ThemeDark(_fontFamily).init();
  }

  ThemeMode init() {
    return ThemeMode.light;
  }
}
