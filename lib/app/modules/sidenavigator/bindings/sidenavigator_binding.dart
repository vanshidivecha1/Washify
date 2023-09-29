import 'package:get/get.dart';

import '../controllers/sidenavigator_controller.dart';

class SideNavigatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SideNavigatorController>(
      () => SideNavigatorController(),
    );
  }
}
