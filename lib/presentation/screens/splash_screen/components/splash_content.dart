import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    final ThemeData theme = Theme.of(context);

    return Column(
      children: <Widget>[
        SizedBox(
          height: 52.h,
        ),
        Text(
          appTitleUpper,
          style:
              theme.textTheme.headline3!.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          bodyText,
          textAlign: TextAlign.center,
        ),
        const Spacer(
          flex: 2,
        ),
        Stack(alignment: Alignment.center, children: [
          SizedBox(
            height: 245.r,
            width: 245.r,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: themePrimaryLightColor,
                  borderRadius: BorderRadius.circular(246.r)),
            ),
          ),
          Image.asset(
            image,
            height: 280.h,
            width: 250.w,
          ),
        ]),
        SizedBox(
          height: 60.h,
        )
      ],
    );
  }
}
