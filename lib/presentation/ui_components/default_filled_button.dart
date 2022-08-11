import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/theme.dart';

class DefaultFilledButton extends StatelessWidget {
  const DefaultFilledButton({
    Key? key,
    required this.child,
    required this.onPressed,
  }) : super(key: key);
  final Widget child;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 315.w,
      height: 56.h,
      child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r)),
              backgroundColor: themePrimaryColor,
              primary: Colors.white,
              padding: const EdgeInsets.all(10),
              textStyle: TextStyle(fontSize: 18.r, fontWeight: FontWeight.bold)),
          onPressed: onPressed,
          child: child),
    );
  }
}
