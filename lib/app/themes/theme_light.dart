import 'package:flutter/material.dart';

class ThemeLight {
  String fontFamily = '';
  ThemeLight(this.fontFamily);

  ThemeData init() {
    return ThemeData(
      fontFamily: fontFamily,
      textTheme: TextTheme(
        overline: TextStyle(fontFamily: fontFamily),
        headline1: TextStyle(fontSize: 20.0, fontFamily: fontFamily),
        bodyText1: TextStyle(fontSize: 16.0, fontFamily: fontFamily),
        bodyText2: TextStyle(fontSize: 14.0, fontFamily: fontFamily),
        button: TextStyle(fontSize: 15.0, fontFamily: fontFamily),
        headline6: TextStyle(fontSize: 16.0, fontFamily: fontFamily),
        subtitle1: TextStyle(fontSize: 16.0, fontFamily: fontFamily),
        caption: TextStyle(fontSize: 12.0, fontFamily: fontFamily),
      ),
    );
  }
}
