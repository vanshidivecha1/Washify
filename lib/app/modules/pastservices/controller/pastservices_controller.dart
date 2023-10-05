import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/modules/pastservices/model/past_services_model.dart';
import 'package:vehicle_washing_flutter/app/routes/app_pages.dart';

import '../../../utils/utils.dart';

class PastServicesController extends GetxController {
  var isLoading = false.obs;
  var selectedIndex = RxInt(-1);

  final items = <PastServicesModel>[
    PastServicesModel(
      companyName: "Toyota Innova Crysta",
      servicedByPersonName: "Bhavik Miyani",
      dateTime: "Aug 01, 2023 07:00 AM",
    ),
    PastServicesModel(
      companyName: "Toyota Innova Crysta",
      servicedByPersonName: "Bhavik Miyani",
      dateTime: "Aug 01, 2023 07:00 AM",
    ),
    PastServicesModel(
      companyName: "Toyota Innova Crysta",
      servicedByPersonName: "Bhavik Miyani",
      dateTime: "Aug 01, 2023 07:00 AM",
    ),
    PastServicesModel(
      companyName: "Toyota Innova Crysta",
      servicedByPersonName: "Bhavik Miyani",
      dateTime: "Aug 01, 2023 07:00 AM",
    ),
    PastServicesModel(
      companyName: "Toyota Innova Crysta",
      servicedByPersonName: "Bhavik Miyani",
      dateTime: "Aug 01, 2023 07:00 AM",
    ),
    PastServicesModel(
      companyName: "Toyota Innova Crysta",
      servicedByPersonName: "Bhavik Miyani",
      dateTime: "Aug 01, 2023 07:00 AM",
    ),
    PastServicesModel(
      companyName: "Toyota Innova Crysta",
      servicedByPersonName: "Bhavik Miyani",
      dateTime: "Aug 01, 2023 07:00 AM",
    ),
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
