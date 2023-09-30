import 'package:get/get.dart';

import '../controller/slotandtime_controller.dart';

class SlotAndTimeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SlotAndTimeController>(
      () => SlotAndTimeController(),
    );
  }
}
