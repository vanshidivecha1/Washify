import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/routes/app_pages.dart';

import '../../../utils/utils.dart';
import '../model/sidenavigator_model.dart';

class SideNavigatorController extends GetxController {
  var isLoading = false.obs;
  var selectedIndex = RxInt(-1);

  final GlobalKey<FormState> newPasswordFormKey = GlobalKey<FormState>();

  void setLoading(bool value) {
    isLoading.value = value;
  }

  final items = <SideNavigatorModel>[
    SideNavigatorModel(
      bullet: Utils.bulletImage,
      text: Utils.myServicesText,
      imagePath: Utils.forwardImage,
    ),
    SideNavigatorModel(
      bullet: Utils.bulletImage,
      text: Utils.pastServicesText,
      imagePath: Utils.forwardImage,
    ),
    SideNavigatorModel(
      bullet: Utils.bulletImage,
      text: Utils.addressText,
      imagePath: Utils.forwardImage,
    ),
    SideNavigatorModel(
      bullet: Utils.bulletImage,
      text: Utils.vehiclesText,
      imagePath: Utils.forwardImage,
    ),
    SideNavigatorModel(
      bullet: Utils.bulletImage,
      text: Utils.slotAndTimeText,
      imagePath: Utils.forwardImage,
    ),
    SideNavigatorModel(
      bullet: Utils.bulletImage,
      text: Utils.changePasswordText,
      imagePath: Utils.forwardImage,
    ),
    SideNavigatorModel(
      bullet: Utils.bulletImage,
      text: Utils.termsConditionsText,
      imagePath: Utils.forwardImage,
    ),
  ].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    // nameController.dispose();
    // emailController.dispose();
    // passwordController.dispose();
  }

  void goToMyServices() {
    Get.toNamed(AppPages.MY_SERVICES);
  }

  void goToPastServices() {
    Get.toNamed(AppPages.PAST_SERVICES);
  }

  void goToAddressPage() {
    Get.toNamed(AppPages.ADDRESS);
  }

  void goToVehiclesPage() {
    Get.toNamed(AppPages.VEHICLES);
  }

  void goToSlotAndTimePage() {
    Get.toNamed(AppPages.SLOT_AND_TIME);
  }

  void goToTermsAndConditionPage() {
    Get.toNamed(AppPages.TERMS_AND_CONDITION);
  }

  void goToChangePasswordPage() {
    Get.toNamed(AppPages.CHANGE_PASSWORD);
  }

  void goToLogoutPage() {
    Get.toNamed(AppPages.LOGOUT);
  }

  void checkLogin() {
    setLoading(false);
    final isValid = newPasswordFormKey.currentState!.validate();
    //Get.until((route) => Get.currentRoute == AppPages.LOGIN);
    /*checkUser(emailController.text, passwordController.text).then((auth) {
      if (auth) {
        Get.snackbar('Login', 'Login successfully',
            backgroundColor: ThemeColor.white);
        Future.delayed(const Duration(milliseconds: 2000), () {
          Get.offAllNamed(AppPages.HOME);
        });
      } else {
        Get.snackbar('Login', 'Invalid email or password',
            backgroundColor: ThemeColor.secondaryRed);
      }
      passwordController.clear();
    });*/
    if (!isValid) {
      return;
    }
    newPasswordFormKey.currentState!.save();
  }

  Future<bool> checkUser(String user, String password) {
    if (user == 'v@gmail.com' && password == '12345678') {
      return Future.value(true);
    }
    return Future.value(false);
  }
}
