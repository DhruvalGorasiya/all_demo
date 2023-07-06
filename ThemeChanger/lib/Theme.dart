import 'package:flutter/material.dart';

class CTheme {
  static final ThemeData green = ThemeData(
    backgroundColor: Color(0xff399354),
    primaryColor: Color(0xff58bde0),
    dividerColor: Color(0xff008e05),
  );

  static final ThemeData blue = ThemeData(
    backgroundColor: Color(0xff5baaff),
    primaryColor: Color(0xff001e90),
    dividerColor: Color(0xff47c1ff),
  );

  static final ThemeData pink = ThemeData(
    backgroundColor: Color(0xffff00cc),
    primaryColor: Color(0xff333399),
    dividerColor: Color(0xffee63ff),
  );

  static final ThemeData orange = ThemeData(
    backgroundColor: Color(0xfff6cf5a),
    primaryColor: Color(0xffdc6a34),
    dividerColor: Color(0xffffcb5f),
  );
}

ThemeData Light = CTheme.green;

ThemeData ChangeTheme(j) {
  if (j == 1) {
    print(j.toString());
    return Light = CTheme.green;
  }
  if (j == 2) {
    print(j.toString());
    return Light = CTheme.blue;
  }
  if (j == 3) {
    print(j.toString());

    return Light = CTheme.pink;
  }
  if (j == 4) {
    print(j.toString());
    return Light = CTheme.orange;
  }
  return Light = CTheme.green;
}
