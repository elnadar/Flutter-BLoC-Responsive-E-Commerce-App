import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const themePrimaryColor = Color(0xFFFF7643);
const themePrimaryLightColor = Color(0xFFFFECDF);
const themePrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const themeSecondaryColor = Color(0xFF979797);
const themeTextColor = Color(0xFF757575);

const themeAnimationDuration = Duration(milliseconds: 200);

const headingStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String validationEmailNullError = "Please Enter your email";
const String validationInvalidEmailError = "Please Enter Valid Email";
const String validationPassNullError = "Please Enter your password";
const String validationShortPassError = "Password is too short";
const String validationMatchPassError = "Passwords don't match";
const String validationNameNullError = "Please Enter your name";
const String validationPhoneNumberNullError = "Please Enter your phone number";
const String validationAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 15.w),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.w),
    borderSide: const BorderSide(color: themeTextColor),
  );
}
