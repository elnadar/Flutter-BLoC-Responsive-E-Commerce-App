import 'package:e_commerce_app/logic/cubit/login_form_validation_cubit/login_form_validation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/strings.dart';
import '../../../core/constants/theme.dart';
import 'components/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginFormValidationCubit(),
      child: Scaffold(
        appBar: AppBar(title: const Text(loginScreenTitle),),
        body: const LoginScreenBody(),
      ),
    );
  }
}
