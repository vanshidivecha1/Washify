import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/routes/app_pages.dart';
import 'package:vehicle_washing_flutter/app/utils/color_themes.dart';

import '../../../utils/utils.dart';

class LoginController extends GetxController {
  //var email = ''.obs;
  //var password = ''.obs;

  var isLoading = false.obs;
  final _isPasswordVisible = false.obs;

  bool get isPasswordVisible => _isPasswordVisible.value;

  final GlobalKey<FormState> loginInFormKey = GlobalKey<FormState>();
  late TextEditingController emailController, passwordController;
  var email = '';
  var password = '';

  void setLoading(bool value) {
    isLoading.value = value;
  }

  void togglePasswordVisibility() {
    _isPasswordVisible.value = !_isPasswordVisible.value;
  }

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    //emailController.dispose();
    //passwordController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return Utils.enterValidEmail;
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 8) {
      return Utils.passwordLength;
    }
    return null;
  }

  void checkLogin() {
    setLoading(false);
    final isValid = loginInFormKey.currentState!.validate();
    Get.offAllNamed(AppPages.HOME);
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
    loginInFormKey.currentState!.save();
  }

  Future<bool> checkUser(String user, String password) {
    if (user == 'v@gmail.com' && password == '12345678') {
      return Future.value(true);
    }
    return Future.value(false);
  }

  void goToForgetPassword() {
    Get.toNamed(AppPages.FORGET_PASSWORD);
  }
}
