import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/strings.dart';

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
    final MediaQueryData media = MediaQuery.of(context);

    return Column(
      children: <Widget>[
        const Spacer(),
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
        Image.asset(
          image,
          height: 332.h,
          width: media.size.width * .9,
        )
      ],
    );
  }
}
