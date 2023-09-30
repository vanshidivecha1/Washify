import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/modules/logout/controllers/logout_controller.dart';

import '../../../utils/color_themes.dart';
import '../../../utils/text_themes.dart';
import '../../../utils/utils.dart';
import '../controller/pastservices_controller.dart';

final PastServicesController controller = Get.put(PastServicesController());

class PastServicesView extends GetView<PastServicesController> {
  const PastServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return true;
      },
      child: SafeArea(
        top: true,
        child: Scaffold(
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(),
          ),
        ),
      ),
    );
  }
}
