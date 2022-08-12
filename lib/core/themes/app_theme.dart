import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/theme.dart';

class AppTheme {
  const AppTheme._();

  static final lightTheme = ThemeData(
    primarySwatch: Colors.orange,
    primaryColor: themePrimaryColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Muli',
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      centerTitle: true,
    ),
    inputDecorationTheme: InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 30.r, vertical: 17.r),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: themeTextColor),
            gapPadding: 10),
        focusColor: themePrimaryColor),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: themePrimaryColor)),
    textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.r).copyWith(
          headline1: const TextStyle(color: themeTextColor),
          headline2: const TextStyle(color: themeTextColor),
          headline3: const TextStyle(color: themeTextColor),
          headline4: const TextStyle(color: themeTextColor),
          headline5: const TextStyle(color: themeTextColor),
          headline6: const TextStyle(color: themeTextColor),
          subtitle1: const TextStyle(color: themeTextColor),
          subtitle2: const TextStyle(color: themeTextColor),
          bodyText1: const TextStyle(color: themeTextColor),
          bodyText2: const TextStyle(color: themeTextColor),
          caption: const TextStyle(color: themeTextColor),
          button: const TextStyle(color: themeTextColor),
          overline: const TextStyle(color: themeTextColor),
        ),
  );

  static final darkTheme = lightTheme.copyWith();
}
