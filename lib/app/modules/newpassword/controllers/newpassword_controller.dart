import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/routes/app_pages.dart';

import '../../../utils/utils.dart';

class NewPasswordController extends GetxController {
  //var email = ''.obs;
  //var password = ''.obs;

  var isLoading = false.obs;
  final _isPasswordVisible = false.obs;
  final _isConfirmPasswordVisible = false.obs;

  bool get isPasswordVisible => _isPasswordVisible.value;

  bool get isConfirmPasswordVisible => _isConfirmPasswordVisible.value;

  final GlobalKey<FormState> newPasswordFormKey = GlobalKey<FormState>();
  late TextEditingController passwordController, confirmPasswordController;

  var password = '';
  var confirmPassword = '';

  void setLoading(bool value) {
    isLoading.value = value;
  }

  void togglePasswordVisibility() {
    _isPasswordVisible.value = !_isPasswordVisible.value;
  }

  void toggleConfirmPasswordVisibility() {
    _isConfirmPasswordVisible.value = !_isConfirmPasswordVisible.value;
  }

  @override
  void onInit() {
    super.onInit();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
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

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return Utils.enterPassword;
    } else if (value.length < 8) {
      return Utils.passwordLength;
    }
    return null;
  }

  String? validateConfirmPassword(String value) {
    if (value.isEmpty) {
      return Utils.enterCurrentPassword;
    } else if (value != passwordController.text.toString()) {
      return Utils.confirmPasswordIsNotSameText;
    }
    return null;
  }

  void checkLogin() {
    setLoading(false);
    final isValid = newPasswordFormKey.currentState!.validate();
    Get.until((route) => Get.currentRoute == AppPages.LOGIN);
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
