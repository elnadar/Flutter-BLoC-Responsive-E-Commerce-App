import 'package:e_commerce_app/core/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPointsComponents extends StatelessWidget {
  const SplashPointsComponents({Key? key, required this.active})
      : super(key: key);
  final bool active;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: themeAnimationDuration,
      margin: EdgeInsets.all(4.r),
      height: 6.r,
      width: active ? 20.r : 6.r,
      decoration: BoxDecoration(
          color: active ? themePrimaryColor : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(16.r)),
    );
  }
}
