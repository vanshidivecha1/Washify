import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/utils.dart';

class VehicleController extends GetxController {
  var isLoading = false.obs;
  var isTwoWheelerSelected = false.obs;
  var isFourWheelerSelected = false.obs;

  List<String> dropdownValues = ['Option 1', 'Option 2', 'Option 3'];
  Rx<List<String>> selectedOptionList = Rx<List<String>>([]);
  var selectedValue = ''.obs;

  var selectedCompany = "".obs;
  List companyList = ['abc', 'def', 'ghi'];

  var selectedModel = "".obs;
  List modelList = ['abc', 'def', 'ghi'];

  var selectedType = "".obs;
  List typeList = ['abc', 'def', 'ghi'];

  late TextEditingController registrationNumberController;
  var registrationNumber = '';

  final GlobalKey<FormState> registerNumberKey = GlobalKey<FormState>();

  String? validateRegistrationNumber(String value) {
    if (value.isEmpty) {
      return Utils.enterRegistrationNumber;
    }
    return null;
  }

  void toggleTwoWheeler() {
    isTwoWheelerSelected.toggle();
    isFourWheelerSelected.value = false;
  }

  void toggleFourWheeler() {
    isFourWheelerSelected.toggle();
    isTwoWheelerSelected.value = false;
  }

  void setLoading(bool value) {
    isLoading.value = value;
  }

  @override
  void onInit() {
    super.onInit();
    registrationNumberController = TextEditingController();
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

  void checkSave() {
    setLoading(false);
    Get.back();

    final isValid = registerNumberKey.currentState!.validate();
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
  }
}
