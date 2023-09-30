import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/modules/address/controllers/address_controller.dart';

class AddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddressController>(
      () => AddressController(),
    );
  }
}
