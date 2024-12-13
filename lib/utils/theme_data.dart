import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.purple.shade900,
  appBarTheme: AppBarTheme(
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 25,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    backgroundColor: Colors.purple.shade900,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.purple.shade900,
    foregroundColor: Colors.white,
  ),
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
  cardTheme: CardTheme(
    color: Colors.purple.withOpacity(0.2),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.purple.shade900,
  ),
  popupMenuTheme: PopupMenuThemeData(
    iconColor: Colors.white,
    color: Colors.purple.shade700,
    textStyle: TextStyle(
      color: Colors.white,
    ),
  ),
  searchBarTheme: SearchBarThemeData(
    backgroundColor: WidgetStateProperty.all(Colors.purple.shade700),
    elevation: WidgetStateProperty.all(5),
    overlayColor: WidgetStateProperty.all(Colors.purple.shade900),
    surfaceTintColor: WidgetStateProperty.all(Colors.purple.shade900),
    padding: WidgetStateProperty.all(EdgeInsets.all(8)),
    shape: WidgetStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    )),
    side: WidgetStateProperty.all(BorderSide(
      color: Colors.white70,
      width: 1.5,
    )),
    hintStyle: WidgetStateProperty.all(TextStyle(
      color: Colors.white70,
      fontSize: 16,
    )),
    textStyle: WidgetStateProperty.all(TextStyle(
      color: Colors.white,
      fontSize: 18,
    )),
  ),
  textTheme: TextTheme(
    titleSmall: TextStyle(color: Colors.white),
    titleMedium: TextStyle(color: Colors.white),
    titleLarge: TextStyle(color: Colors.white),
    bodySmall: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
    bodyLarge: TextStyle(color: Colors.white),
    labelLarge: TextStyle(color: Colors.white),
    labelMedium: TextStyle(color: Colors.white),
    labelSmall: TextStyle(color: Colors.white),
    displayLarge: TextStyle(color: Colors.white),
    displayMedium: TextStyle(color: Colors.white),
    displaySmall: TextStyle(color: Colors.white),
    headlineLarge: TextStyle(color: Colors.white),
    headlineMedium: TextStyle(color: Colors.white),
    headlineSmall: TextStyle(color: Colors.white),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.black45,
  appBarTheme: AppBarTheme(
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 25,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    backgroundColor: Colors.black26,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.black26,
    foregroundColor: Colors.white,
  ),
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
  cardTheme: CardTheme(),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.black26,
  ),
  popupMenuTheme: PopupMenuThemeData(
    iconColor: Colors.white,
    color: Colors.black26,
    textStyle: TextStyle(
      color: Colors.white,
    ),
  ),
  searchBarTheme: SearchBarThemeData(
    backgroundColor: WidgetStateProperty.all(Colors.black26),
    elevation: WidgetStateProperty.all(5),
    overlayColor: WidgetStateProperty.all(Colors.black26),
    surfaceTintColor: WidgetStateProperty.all(Colors.black26),
    padding: WidgetStateProperty.all(EdgeInsets.all(10)),
    shape: WidgetStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    )),
    side: WidgetStateProperty.all(BorderSide(
      color: Colors.white70,
      width: 1.5,
    )),
    hintStyle: WidgetStateProperty.all(TextStyle(
      color: Colors.white70,
      fontSize: 16,
    )),
    textStyle: WidgetStateProperty.all(TextStyle(
      color: Colors.white,
      fontSize: 18,
    )),
  ),
  textTheme: TextTheme(
    titleSmall: TextStyle(color: Colors.white),
    titleMedium: TextStyle(color: Colors.white),
    titleLarge: TextStyle(color: Colors.white),
    bodySmall: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
    bodyLarge: TextStyle(color: Colors.white),
    labelLarge: TextStyle(color: Colors.white),
    labelMedium: TextStyle(color: Colors.white),
    labelSmall: TextStyle(color: Colors.white),
    displayLarge: TextStyle(color: Colors.white),
    displayMedium: TextStyle(color: Colors.white),
    displaySmall: TextStyle(color: Colors.white),
    headlineLarge: TextStyle(color: Colors.white),
    headlineMedium: TextStyle(color: Colors.white),
    headlineSmall: TextStyle(color: Colors.white),
  ),
);
