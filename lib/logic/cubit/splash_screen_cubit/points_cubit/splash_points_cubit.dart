import 'package:bloc/bloc.dart';

class SplashPointsCubit extends Cubit<int> {
  SplashPointsCubit() : super(0);
  void changeActive(int index) => emit(index);
}
