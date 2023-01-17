import 'package:flutter/material.dart';

class AppTheme22{
  static const Color primary22 = Color.fromARGB(255, 121, 0, 219);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Color.fromARGB(255, 121, 0, 219),

    appBarTheme: const AppBarTheme(
      color: primary22,
      elevation: 0,
    ),
    
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary22,
        shape: const StadiumBorder(),
        elevation: 5,
      )
    ),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary22),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary22),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary22),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      )
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary22,
      elevation: 5,
    )
  );
}