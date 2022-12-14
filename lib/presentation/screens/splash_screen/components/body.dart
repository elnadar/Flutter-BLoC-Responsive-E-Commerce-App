import 'package:e_commerce_app/logic/cubit/splash_screen_cubit/points_cubit/splash_points_cubit.dart';
import 'package:e_commerce_app/presentation/screens/splash_screen/components/splash_content.dart';
import 'package:e_commerce_app/presentation/screens/splash_screen/components/splash_status/splash_status_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../ui_components/default_filled_button.dart';
import '../data/splash_contents.dart';

class SplashScreenBodyComponent extends StatelessWidget {
  const SplashScreenBodyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final ThemeData theme = Theme.of(context);
    final MediaQueryData media = MediaQuery.of(context);
    final pageCubit = context.watch<SplashPointsCubit>();

    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          SizedBox(
              height: media.size.height * .765,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: pageCubit.pageController,
                onPageChanged: (int index) {
                  BlocProvider.of<SplashPointsCubit>(context)
                      .changeActive(index);
                },
                itemCount: splashMap.length,
                itemBuilder: (context, index) {
                  return SplashContentComponent(
                    bodyText: splashMap[index]['bodyText']!,
                    image: splashMap[index]['image']!,
                  );
                },
              )),
          SizedBox(
            height: media.size.height * .235,
            child: Column(
              children: <Widget>[
                SplashStatus(length: splashMap.length),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.all(30.r),
                  child: DefaultFilledButton(
                    child: Text(pageCubit.state == (splashMap.length - 1)
                        ? 'Let\'s Go'
                        : 'Continue'),
                    onPressed: () => pageCubit.forwardAction(
                        context, pageCubit.state == (splashMap.length - 1)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
