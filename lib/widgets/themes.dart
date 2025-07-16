import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    iconTheme: IconThemeData(
        color: Colors.white
    ),
    textTheme: Theme.of(context).textTheme,
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
  );

  // Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkblueColor = Color(0xff403b58);

}