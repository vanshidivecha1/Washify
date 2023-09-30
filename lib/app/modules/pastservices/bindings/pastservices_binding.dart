import 'package:get/get.dart';

import '../controller/pastservices_controller.dart';

class PastServicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PastServicesController>(
      () => PastServicesController(),
    );
  }
}
