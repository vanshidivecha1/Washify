import 'package:flutter/material.dart';

import 'color_themes.dart';

class Utils {
  // Images
  static String logoNameImage = "assets/images/ic_logo.png";
  static String backgroundImage = "assets/images/ic_background.png";
  static String emailImage = "assets/images/ic_email.png";
  static String passwordImage = "assets/images/ic_password.png";
  static String backImage = "assets/images/ic_arrow_left.png";
  static String forwardImage = "assets/images/ic_frwd.png";
  static String homeBGImage = "assets/images/ic_home_background.png";
  static String logoutBGImage = "assets/images/ic_logout_background.png";
  static String plusImage = "assets/images/ic_plus.png";
  static String addMoreServicesImage = "assets/images/ic_add_more_services.png";
  static String bikeImage = "assets/images/ic_bike.png";
  static String carImage = "assets/images/ic_car.png";
  static String slotBGImage = "assets/images/ic_slot_background.png";

  // Icons
  static const IconData personImage = Icons.person_outlined;
  static const IconData bikeWashImage = Icons.directions_bike_outlined;
  static const IconData carWashImage = Icons.directions_car_filled_outlined;
  static const IconData groceryDeliveryImage =
      Icons.local_grocery_store_outlined;
  static const IconData houseKeepingImage = Icons.home_outlined;
  static const IconData bulletImage = Icons.circle;

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

  // Verification Text
  static String verificationText = "Verification";
  static String verificationDesc =
      "We will send OTP on your registered email address";
  static String enterVerificationCodeText = "Enter Verification Code";
  static String enterValidVerificationCodeText =
      "Enter Valid Verification Code";
  static String didNotReceivedCodeText = "If You Didn't Receive Code!";
  static String resendText = "Resend";
  static String verifyText = "Verify";

  // New Password Text
  static String newPasswordText = "New Password";
  static String saveText = "Save";
  static String enterConfirmPassword = "Enter Confirm Password";
  static String confirmPasswordIsNotSameText =
      "Confirm Password Is Same As Password";

  // Side Navigator
  static String editProfileText = "Edit Profile";
  static String myServicesText = "My Services";
  static String pastServicesText = "Past Services";
  static String addressText = "Address";
  static String vehiclesText = "Vehicles";
  static String slotAndTimeText = "Slot And Time";
  static String changePasswordText = "Change Password";
  static String termsConditionsText = "Terms & Conditions";
  static String logoutText = "Logout";

  // Change Password Text
  static String currentPasswordLabel = "Current Password";
  static String newPasswordLabel = "New Password";
  static String confirmPasswordLabel = "Confirm Password";

  // Logout Text
  static String logOutDescText = "Are you sure want to logout ?";
  static String logOutBtnText = "Log Out";
  static String backText = "Back";

  // My Services Text
  static String addMoreText = "Add More";
  static String servicedByText = "Serviced By : ";
  static String viewPastServicesText = "View Past Services?";
  static String clickHereText = "Click Here!";

  // Vehicles Text
  static String addVehiclesText = "Add Vehicles";
  static String classText = "Class";
  static String twoWheelerText = "2 Wheeler";
  static String fourWheelerText = "4 Wheeler";
  static String companyText = "Company";
  static String modelText = "Model";
  static String typeText = "Type";
  static String registrationNumberText = "Registration Number";
  static String saveAndNextText = "Save And Next";
  static String enterRegistrationNumber = "GJ 05 BM 7313";
  static String enterRegistrationLabelText = "GJ 05 BM 7313";
  static String selectVehicleModelText = "Select Vehicle Model";
  static String selectVehicleCompanyText = "Select Vehicle Company";
  static String selectVehicleTypeText = "Select Vehicle Type";

  // Slot And Time Text
  static String selectSlotText = "Select Slot";
  static String slotDescText =
      "Please select time slot between which you want your service to happen on a daily basis.";
  static String slotTimeOneText = "04:00 AM - 06:00 AM";
  static String slotTimeTwoText = "06:00 AM - 08:00 AM";
  static String slotTimeThreeText = "08:00 AM - 10:00 AM";
  static String slotTimeFourText = "10:00 AM - 12:00 AM";
  static String slotTimeFiveText = "12:00 PM - 02:00 PM";
  static String slotTimeSixText = "02:00 PM - 04:00 PM";
  static String slotTimeSevenText = "04:00 PM - 06:00 PM";
  static String slotTimeEightText = "06:00 PM - 08:00 PM";

  // Address
  static String addAddressText = "Add Address";

  // Term & Condition Text
  static String termConditionText = "Term & Condition";

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
