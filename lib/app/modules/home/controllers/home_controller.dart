import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/routes/app_pages.dart';
import 'package:vehicle_washing_flutter/app/utils/utils.dart';

import '../model/our_services_model.dart';

class HomeController extends GetxController {
  final items = <OurServicesModel>[
    OurServicesModel(imagePath: Utils.bikeWashImage, text: 'Bike Wash'),
    OurServicesModel(imagePath: Utils.carWashImage, text: 'Car Wash'),
    OurServicesModel(
        imagePath: Utils.groceryDeliveryImage, text: 'Grocery Delivery'),
    OurServicesModel(imagePath: Utils.houseKeepingImage, text: 'House Keeping'),
  ].obs;

  void addItem(OurServicesModel item) {
    items.add(item);
  }

  void openSideNavigator() {
    Get.to(
      AppPages.SIDE_NAVIGATOR,
      transition: Transition.rightToLeft,
    );
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
}
