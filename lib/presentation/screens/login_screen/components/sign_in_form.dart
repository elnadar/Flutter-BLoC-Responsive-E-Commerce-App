import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/strings.dart';
import '../../../../logic/cubit/login_form_validation_cubit/login_form_validation_cubit.dart';
import '../../../ui_components/default_filled_button.dart';
import '../../../ui_components/text_field_custom_svg_icon.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<LoginFormValidationCubit>();
    return Form(
        key: cubit.formKey,
        child: Column(
          children: [
            TextFormField(
              autovalidateMode: cubit.autoValidateMode,
              validator: (value) {
                if (value!.isEmpty) {
                  return validationEmailNullError;
                } else if (!emailValidatorRegExp.hasMatch(value)) {
                  return validationInvalidEmailError;
                }
                cubit.addValidData({'email': value});
                return null;
              },
              decoration: const InputDecoration(
                  hintText: "Enter your email",
                  labelText: "Email",
                  suffixIcon: TextFieldCustomSvgIcon('assets/icons/Mail.svg')),
            ),
            SizedBox(
              height: 26.h,
            ),
            TextFormField(
              autovalidateMode: cubit.autoValidateMode,
              validator: (value) {
                if (value!.isEmpty) {
                  return validationPassNullError;
                }
                cubit.addValidData({'password': value});
                return null;
              },
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: "Enter your password",
                  labelText: "Password",
                  suffixIcon: TextFieldCustomSvgIcon('assets/icons/Lock.svg')),
            ),
            SizedBox(
              height: 26.h,
            ),
            Row(
              children: [
                Checkbox(
                    value: cubit.state.isRememberMe,
                    onChanged: (value) => cubit.toggleRememberMe()),
                const Text('Remember me'),
                const Spacer(),
                TextButton(
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(
              height: 46.h,
            ),
            DefaultFilledButton(
              onPressed: () {
                if (!cubit.state.isValidate) {
                  cubit.activateAutoValidation();
                }
                if(cubit.validate()) {
                  debugPrint(cubit.validatedData.toString());
                }
              },
              child: const Text('Continue'),
            )
          ],
        ));
  }
}
