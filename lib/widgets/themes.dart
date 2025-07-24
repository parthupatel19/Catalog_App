import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    cardColor: Colors.white,
    canvasColor: creamColor,
    buttonTheme: ButtonThemeData(buttonColor: lightblueColor),
    primarySwatch: Colors.deepPurple,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    textTheme: Theme.of(context).textTheme,
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    cardColor: Colors.black,
    canvasColor: darkcreamColor,
    buttonTheme: ButtonThemeData(buttonColor: darkblueColor),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    textTheme: Theme.of(context).textTheme,
  );

  // Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamColor = Vx.gray800;
  static Color darkblueColor = Color(0xff403b58);
  static Color lightblueColor = Vx.purple400;

}