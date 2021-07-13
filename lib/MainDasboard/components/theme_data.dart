import 'package:flutter/material.dart';

class GlobalContext {
  static final appTheme = ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Raleway2'
      );
}

class ColorPallette {
  static final color1 = Color(0xff202020);
  static final color2 = Color(0xfff1f3f8);
  static final color3 = Colors.red;
  static final color4 = Color(0xff2C2E43);
}

class TextThemeData {
  static final subTitleTextStyleW = TextStyle(color: ColorPallette.color2,fontFamily: 'CabinItalic', fontSize: 18);
  static final titleTextStyleW = TextStyle(color:ColorPallette.color2, fontFamily: 'CabinBold', fontSize: 24);
}
