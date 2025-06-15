// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';

// ignore: duplicate_ignore
class Constants {
  //Colors for theme
  static Color lightPrimary = const Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Colors.blueGrey[900]!;
  static Color darkAccent = Colors.white;
  static Color lightBG = const Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color badgeColor = Colors.red;

  // ignore: duplicate_ignore, duplicate_ignore
  static ThemeData lightTheme = ThemeData(
    // ignore: deprecated_member_use
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    cardColor: lightAccent,
    canvasColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      backgroundColor: lightPrimary,
      elevation: 0,
      toolbarTextStyle: TextTheme(
        // ignore: deprecated_member_use
        headline6: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
        // ignore: deprecated_member_use
      ).bodyText2,
      titleTextStyle: TextTheme(
        // ignore: deprecated_member_use
        headline6: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ).headline6,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    cardColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    canvasColor: darkAccent,
    appBarTheme: AppBarTheme(
      backgroundColor: darkPrimary,
      elevation: 0,
      toolbarTextStyle: TextTheme(
        headline6: TextStyle(
          color: lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ).bodyText2,
      titleTextStyle: TextTheme(
        headline6: TextStyle(
          color: lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ).headline6,
    ),
  );
}
