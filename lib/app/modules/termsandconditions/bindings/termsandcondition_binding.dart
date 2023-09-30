import 'package:get/get.dart';

import '../controller/termsandcondition_controller.dart';

class TermsAndConditionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TermsAndConditionController>(
      () => TermsAndConditionController(),
    );
  }
}
