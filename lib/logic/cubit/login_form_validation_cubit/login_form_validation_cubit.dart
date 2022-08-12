import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'login_form_validation_state.dart';

class LoginFormValidationCubit extends Cubit<LoginFormValidationState> {
  late final GlobalKey<FormState> formKey;
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  Map<String, String> validatedData = {};

  LoginFormValidationCubit() : super(LoginFormValidationState(false, false)) {
    formKey = GlobalKey();
  }

  void toggleRememberMe() => emit(LoginFormValidationState(state.isValidate, !state.isRememberMe));
  void activateAutoValidation() {
    autoValidateMode = AutovalidateMode.onUserInteraction;
    emit(LoginFormValidationState(true, state.isRememberMe));
  }
  bool validate() => formKey.currentState!.validate();
  void addValidData(Map<String, String> data) => validatedData.addAll(data);

  @override
  Future<void> close() {
    formKey.currentState!.dispose();
    return super.close();
  }
}
