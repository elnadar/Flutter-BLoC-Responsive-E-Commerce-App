import 'package:e_commerce_app/presentation/screens/login_screen/components/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../ui_components/typography.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(30.w),
        child: Column(
          children: <Widget>[
            const H3('Welcome Back'),
            const Text('Sign in with your email and password\nor continue with social media', textAlign: TextAlign.center,),
            SizedBox(
              height: 68.h,
            ),
            const SignInForm()
          ],
        ),
      ),
    );
  }
}
