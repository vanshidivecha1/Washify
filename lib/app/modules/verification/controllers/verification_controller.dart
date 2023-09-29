import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/routes/app_pages.dart';

import '../../../utils/utils.dart';

class VerificationController extends GetxController {
  //var email = ''.obs;
  //var password = ''.obs;

  var isLoading = false.obs;
  final _isPasswordVisible = false.obs;

  bool get isPasswordVisible => _isPasswordVisible.value;

  final GlobalKey<FormState> verificationFormKey = GlobalKey<FormState>();
  late TextEditingController codeController;

  var name = '';
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
    codeController = TextEditingController();
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

  String? validateVerificationCode(String value) {
    if (value.isEmpty) {
      return Utils.enterVerificationCodeText;
    } else if (value.length < 6) {
      return Utils.enterValidVerificationCodeText;
    }
    return null;
  }

  void checkLogin() {
    setLoading(false);
    final isValid = verificationFormKey.currentState!.validate();
    Get.toNamed(AppPages.NEW_PASSWORD);
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
    verificationFormKey.currentState!.save();
  }

  Future<bool> checkUser(String user, String password) {
    if (user == 'v@gmail.com' && password == '12345678') {
      return Future.value(true);
    }
    return Future.value(false);
  }
}
