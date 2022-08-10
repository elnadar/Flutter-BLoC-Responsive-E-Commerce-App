import 'package:e_commerce_app/presentation/screens/splash_screen/components/splash_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/constants/theme.dart';

const List<Map<String, String>> splashMap = [
  {
    'bodyText': 'Welcome to $appTitle, let\'s shop.',
    'image': 'assets/images/splash_1.png'
  },
  {
    'bodyText':
        'We help people connect with store \naround United States of America',
    'image': 'assets/images/splash_2.png'
  },
  {
    'bodyText': 'We show the easy way to shop.\nJust stay at home with us.',
    'image': 'assets/images/splash_3.png'
  },
];

class SplashScreenBodyComponent extends StatelessWidget {
  const SplashScreenBodyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final MediaQueryData media = MediaQuery.of(context);

    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          SizedBox(
              height: media.size.height * .7,
              child: PageView.builder(
                itemCount: splashMap.length,
                itemBuilder: (context, index) {
                  return SplashContentComponent(
                    bodyText: splashMap[index]['bodyText']!,
                    image: splashMap[index]['image']!,
                  );
                },
              )),
        ],
      ),
    );
  }
}
