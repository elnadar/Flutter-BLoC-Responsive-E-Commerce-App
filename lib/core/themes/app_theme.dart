import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/theme.dart';

class AppTheme {
  const AppTheme._();
  static final lightTheme = ThemeData(
    primarySwatch: Colors.orange,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Muli',
    textTheme: Typography.englishLike2018.apply(fontSizeFactor: .7.sp).copyWith(
      bodyText1: const TextStyle(color: themeTextColor),
      bodyText2: const TextStyle(color: themeTextColor),
    ),
  );

  static final darkTheme = lightTheme.copyWith();
}
