import 'package:flutter/material.dart';

import 'color_themes.dart';

class Utils {
  // Images
  static String logoNameImage = "assets/images/ic_logo.png";
  static String backgroundImage = "assets/images/ic_background.png";
  static String emailImage = "assets/images/ic_email.png";
  static String passwordImage = "assets/images/ic_password.png";

  // Texts
  static String loadingText = "Loading...";
  static String loginText = "Log In";
  static String welcomeMsgText = "Welcome To The Washify !";
  static String emailText = "Email Address";
  static String passwordText = "Password";
  static String forgetPasswordText = "Forget Password ?";
  static String dontHaveAnAccountText = "Don't Have An Account ?";
  static String signUpText = "Sign Up";

  static String enterValidEmail = "Enter valid email address";
  static String enterCorrectEmail = "Please correct email field";
  static String enterEmailHint = "Enter Your Email";
  static String enterEmailLabel = "Email Address";

  static String enterPassword = "Enter Password";
  static String enterPasswordHint = "******";
  static String enterPasswordLabel = "Password";
  static String enterCurrentPassword = "Enter Current Password";
  static String passwordLength = "Password must be at list 8 characters";

  static final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    backgroundColor: ThemeColor.mainColor,
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 14),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
}
