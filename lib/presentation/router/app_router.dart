import 'package:e_commerce_app/presentation/screens/login_screen/login_screen.dart';
import 'package:e_commerce_app/presentation/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../core/constants/strings.dart';
import '../../core/exceptions/route_exception.dart';
import '../screens/home_screen/home_screen.dart';

class AppRouter {
  static const String homeRoute = '/';
  static const String splashScreenRoute = '/splash-screen';
  static const String loginScreenRoute = '/login';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(
            title: homeScreenTitle,
          ),
          settings: settings,
        );
      case splashScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
          settings: settings,
        );
      case loginScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
          settings: settings,
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
