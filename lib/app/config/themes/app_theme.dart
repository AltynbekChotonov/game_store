import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const _primaryColor = Color.fromARGB(255, 30, 31, 62);
  static const _primaryColorLight = Color.fromARGB(255, 13, 16, 65);

  static ThemeData get basic {
    return ThemeData(
      primarySwatch: Colors.indigo,
      canvasColor: Color.fromRGBO(246, 247, 255, 1),
      primaryColor: _primaryColor,
      primaryColorLight: _primaryColorLight,
      buttonColor: Colors.indigo,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Color.fromRGBO(244, 246, 253, 1),
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
