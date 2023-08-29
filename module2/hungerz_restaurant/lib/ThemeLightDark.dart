import 'package:flutter/material.dart';

class ThemeLightDark{
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.yellow,
      textTheme: ButtonTextTheme.primary,
    ),
    bottomAppBarTheme: BottomAppBarTheme(color: Colors.cyan), colorScheme:  ColorScheme.fromSeed(seedColor: Colors.white,primary: Colors.orangeAccent),

    appBarTheme: AppBarTheme(backgroundColor: Colors.white,elevation:0,titleTextStyle:TextStyle(color: Colors.black,fontWeight: FontWeight.bold
    ),iconTheme: IconThemeData(color: Colors.black)),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.yellow,
      textTheme: ButtonTextTheme.primary,
    ),
    bottomAppBarTheme: BottomAppBarTheme(color: Colors.cyan), colorScheme:  ColorScheme.fromSeed(seedColor: Colors.black,primary: Colors.orangeAccent),
    appBarTheme: AppBarTheme(backgroundColor: Colors.black,elevation:0,titleTextStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.bold),iconTheme: IconThemeData(color: Colors.white)),

  );
}