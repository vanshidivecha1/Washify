import 'package:flutter/material.dart';

import 'color_themes.dart';

class Utils {
  // Images
  static String logoNameImage = "assets/images/ic_logo.png";
  static String backgroundImage = "assets/images/ic_background.png";
  static String emailImage = "assets/images/ic_email.png";
  static String passwordImage = "assets/images/ic_password.png";

  // Icons
  static const IconData personImage = Icons.person_outlined;
  static const IconData bikeWashImage = Icons.directions_bike_outlined;
  static const IconData carWashImage = Icons.directions_car_filled_outlined;
  static const IconData groceryDeliveryImage =
      Icons.local_grocery_store_outlined;
  static const IconData houseKeepingImage = Icons.home_outlined;

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

  // Dashboard Texts
  static String selectPlanText = "Select Plan";
  static String ourServicesText = "Our Services";
  static String basicText = "Basic";
  static String premiumText = "Premium";
  static String advancedText = "Advanced";
  static String whoWeAreText = "Who We Are";
  static String whoWeAreDesc =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using lorem lpsum is that it has a more-or less norm. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using lorem lpsum is that it has a more-or less norm.";

  // Sign Up Texts
  static String signInText = "Sign In";
  static String signInDesc = "Let's Create Account Together";
  static String alreadyHaveAnAccountText = "Already Have An Account ?";
  static String enterName = "Please enter your name";
  static String enterNameHint = "Enter Your Name";
  static String enterNameLabel = "Name";

  // Forget Password Text
  static String forgetPasswordTitle = "Forget Password";
  static String sendText = "Send";
  static String backToText = "Back To?";

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
