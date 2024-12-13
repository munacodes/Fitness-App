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
  // searchBarTheme: SearchBarThemeData(
  //   backgroundColor: MaterialStateProperty.all(Colors.purple.shade700),
  //   elevation: MaterialStateProperty.all(5),
  //   overlayColor: MaterialStateProperty.all(Colors.purple.shade900),
  //   surfaceTintColor: MaterialStateProperty.all(Colors.purple.shade900),
  //   padding: MaterialStateProperty.all(EdgeInsets.all(8)),
  //   shape: MaterialStateProperty.all(RoundedRectangleBorder(
  //     borderRadius: BorderRadius.circular(10),
  //   )),
  //   side: MaterialStateProperty.all(BorderSide(
  //     color: Colors.white70,
  //     width: 1.5,
  //   )),
  //   hintStyle: MaterialStateProperty.all(TextStyle(
  //     color: Colors.white70,
  //     fontSize: 16,
  //   )),
  //   textStyle: MaterialStateProperty.all(TextStyle(
  //     color: Colors.white,
  //     fontSize: 18,
  //   )),
  // ),
  textTheme: TextTheme(
    titleSmall: TextStyle(
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      color: Colors.white,
    ),
    titleLarge: TextStyle(
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      color: Colors.white,
    ),
    bodyLarge: TextStyle(
      color: Colors.white,
    ),
    labelLarge: TextStyle(),
    labelMedium: TextStyle(),
    labelSmall: TextStyle(),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.black45,
);
