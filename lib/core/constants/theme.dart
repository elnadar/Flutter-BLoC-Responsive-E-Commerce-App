import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const themePrimaryColor = Color(0xFFFF7643);
const themePrimaryLightColor = Color(0xFFFFECDF);
const themePrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const themeSecondaryColor = Color(0xFF979797);
const themeTextColor = Color(0xFF757575);
const themeOvalColor = Color(0xFFFFFAF8);

const themeAnimationDuration = Duration(milliseconds: 200);

const headingStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);