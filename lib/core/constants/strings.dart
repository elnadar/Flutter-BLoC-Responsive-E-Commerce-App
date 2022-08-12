// App
const appTitle = 'Shoppy';
final String appTitleUpper = appTitle.toUpperCase();

// HomeScreen
const homeScreenTitle = 'Home Screen';

// LoginScreen
const loginScreenTitle = 'Sign In';

// Form Errors
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
