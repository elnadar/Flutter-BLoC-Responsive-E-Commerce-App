import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/constants/theme.dart';

class SplashContentComponent extends StatelessWidget {
  const SplashContentComponent({
    Key? key,
    required this.bodyText,
    required this.image,
  }) : super(key: key);

  final String bodyText;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 94.h,
        ),
        Text(
          appTitleUpper,
          style: TextStyle(
              fontSize: 36.sp,
              fontWeight: FontWeight.bold,
              color: themePrimaryColor),
        ),
        Text(
          bodyText,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.sp, color: themeTextColor),
        ),
        const Spacer(),
        Stack(alignment: Alignment.center, children: [
          SizedBox(
            height: 245.r,
            width: 245.r,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: themeOvalColor,
                  borderRadius: BorderRadius.circular(246.r)),
            ),
          ),
          SvgPicture.asset(
            image,
            height: 280.h,
            width: 250.w,
          ),
        ]),
        SizedBox(
          height: 56.h,
        )
      ],
    );
  }
}
