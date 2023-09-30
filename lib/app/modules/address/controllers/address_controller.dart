import 'package:get/get.dart';

import '../model/address_model.dart';

class AddressController extends GetxController {
  var isLoading = false.obs;
  RxInt selectedIndex = 0.obs;

  void setLoading(bool value) {
    isLoading.value = value;
  }

  final List<AddressModel> items = List.generate(
      10,
      (index) => AddressModel(
            addressName: 'Address $index',
            contactNumber: 'Contact Number $index',
            address: 'Address $index',
          )).obs;

  void setSelectedIndex(int index) {
    selectedIndex.value = index;
  }

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
  }

  void checkLogin() {
    setLoading(false);
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
