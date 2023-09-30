import 'package:get/get.dart';

import '../controller/myservices_controller.dart';

class MyServicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyServicesController>(
      () => MyServicesController(),
    );
  }
}
