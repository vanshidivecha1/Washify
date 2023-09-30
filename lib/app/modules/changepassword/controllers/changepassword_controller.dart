import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/routes/app_pages.dart';

import '../../../utils/utils.dart';

class ChangePasswordController extends GetxController {
  var isLoading = false.obs;
  final _isCurrentPasswordVisible = false.obs;
  final _isNewPasswordVisible = false.obs;
  final _isConfirmPasswordVisible = false.obs;

  bool get isCurrentPasswordVisible => _isCurrentPasswordVisible.value;

  bool get isNewPasswordVisible => _isNewPasswordVisible.value;

  bool get isConfirmPasswordVisible => _isConfirmPasswordVisible.value;

  final GlobalKey<FormState> changePasswordFormKey = GlobalKey<FormState>();
  late TextEditingController currentPasswordController,
      newPasswordController,
      confirmPasswordController;

  var currentPassword = '';
  var newPassword = '';
  var confirmPassword = '';

  void setLoading(bool value) {
    isLoading.value = value;
  }

  void toggleCurrentPasswordVisibility() {
    _isCurrentPasswordVisible.value = !_isCurrentPasswordVisible.value;
  }

  void toggleNewPasswordVisibility() {
    _isNewPasswordVisible.value = !_isNewPasswordVisible.value;
  }

  void toggleConfirmPasswordVisibility() {
    _isConfirmPasswordVisible.value = !_isConfirmPasswordVisible.value;
  }

  @override
  void onInit() {
    super.onInit();
    newPasswordController = TextEditingController();
    currentPasswordController = TextEditingController();
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

  String? validateCurrentPassword(String value) {
    if (value.isEmpty) {
      return Utils.enterCurrentPassword;
    } else if (value.length < 8) {
      return Utils.passwordLength;
    }
    return null;
  }

  String? validateNewPassword(String value) {
    if (value.isEmpty) {
      return Utils.enterPassword;
    } else if (value.length < 8) {
      return Utils.passwordLength;
    }
    return null;
  }

  String? validateConfirmPassword(String value) {
    if (value.isEmpty) {
      return Utils.enterConfirmPassword;
    } else if (value != newPasswordController.text.toString()) {
      return Utils.confirmPasswordIsNotSameText;
    }
    return null;
  }

  void checkLogin() {
    setLoading(false);
    final isValid = changePasswordFormKey.currentState!.validate();
    Get.back();
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
    changePasswordFormKey.currentState!.save();
  }

  Future<bool> checkUser(String user, String password) {
    if (user == 'v@gmail.com' && password == '12345678') {
      return Future.value(true);
    }
    return Future.value(false);
  }
}
