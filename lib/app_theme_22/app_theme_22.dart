import 'package:flutter/material.dart';

class AppTheme22{
  static const Color primary22 = Color.fromARGB(255, 20, 40, 56);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Color.fromARGB(255, 20, 40, 56),

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
      floatingLabelStyle: TextStyle(color: Colors.black),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary22,
      elevation: 5,
    )
  );
}