import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/theme.dart';

class SplashPointsCubit extends Cubit<int> {
  SplashPointsCubit() : super(0) {
    pageController = PageController();
  }

  late final PageController pageController;

  void forwardAction(bool isLast) {
    if (isLast) {
      debugPrint('Final page.');
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
