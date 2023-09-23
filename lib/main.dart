import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:vehicle_washing_flutter/app/modules/splash/controllers/splash_controller.dart';
import 'app/modules/splash/views/splash_view.dart';
import 'app/routes/app_pages.dart';

void main() async {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.SPLASH,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
