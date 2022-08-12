import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/theme.dart';
import '../../../../presentation/router/app_router.dart';

class SplashPointsCubit extends Cubit<int> {
  SplashPointsCubit() : super(0) {
    pageController = PageController();
  }

  late final PageController pageController;

  void forwardAction(BuildContext context, bool isLast) {
    if (isLast) {
      Navigator.pushNamed(context, AppRouter.loginScreenRoute);
    } else {
      pageController.nextPage(
          duration: themeAnimationDuration, curve: Curves.linear);
    }
  }

  void changeActive(int index) => emit(index);

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
