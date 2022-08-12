import 'package:e_commerce_app/logic/cubit/splash_screen_cubit/points_cubit/splash_points_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashPointsCubit(),
      child: const Scaffold(
        body: SplashScreenBodyComponent(),
        backgroundColor: Colors.white,
      ),
    );
  }
}
