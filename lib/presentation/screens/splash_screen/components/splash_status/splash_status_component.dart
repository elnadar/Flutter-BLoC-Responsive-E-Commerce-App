import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../logic/cubit/splash_screen_cubit/points_cubit/splash_points_cubit.dart';
import 'splash_points.dart';

class SplashStatus extends StatelessWidget {
  const SplashStatus({
    Key? key,
    required this.length,
  }) : super(key: key);
  final int length;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          length,
          (index) => SplashPointsComponents(
              active: index == context.watch<SplashPointsCubit>().state)),
    );
  }
}
