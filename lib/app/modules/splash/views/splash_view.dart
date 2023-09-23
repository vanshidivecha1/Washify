import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/modules/splash/controllers/splash_controller.dart';
import 'package:vehicle_washing_flutter/app/utils/color_themes.dart';

import '../../../utils/utils.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SplashController>(); // Get the controller

    return WillPopScope(
      onWillPop: controller.onBackButtonPressed,
      child: Scaffold(
        body: Obx(() {
          if (controller.isSplashVisible) {
            return Container(
              color: ThemeColor.mainColor,
              child: Center(
                child: Image.asset(
                  Utils.logoNameImage,
                  fit: BoxFit.cover,
                ),
              ),
            );
          } else {
            return Container();
          }
        }),
      ),
    );
  }
}
