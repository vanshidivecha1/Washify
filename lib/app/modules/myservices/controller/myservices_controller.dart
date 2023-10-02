import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/modules/myservices/model/services_items_model.dart';

import '../../../utils/utils.dart';
import '../model/services_model.dart';

class MyServicesController extends GetxController {
  var isLoading = false.obs;

  final items = <ServicesModel>[
    ServicesModel(imagePath: Utils.bikeWashImage, text: 'Bike Wash'),
    ServicesModel(imagePath: Utils.carWashImage, text: 'Car Wash'),
  ].obs;

  final servicesItems = <ServicesItemModel>[
    ServicesItemModel(
        title: "Today",
        companyName: "Toyota Innova Crysta",
        servicedByPersonName: "Bhavik Miyani",
        imagePath: Utils.backgroundImage,
        dateTime: "Aug 01, 2023 07:00 AM"),
    ServicesItemModel(
        title: "Tomorrow",
        companyName: "Toyota Innova Crysta",
        servicedByPersonName: "Bhavik Miyani",
        imagePath: Utils.backgroundImage,
        dateTime: "Aug 01, 2023 07:00 AM")
  ].obs;

  void setLoading(bool value) {
    isLoading.value = value;
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
    // nameController.dispose();
    // emailController.dispose();
    // passwordController.dispose();
  }

  void checkLogOut() {
    setLoading(false);
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
  }
}
