import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/modules/logout/controllers/logout_controller.dart';

import '../../../utils/color_themes.dart';
import '../../../utils/text_themes.dart';
import '../../../utils/utils.dart';

final LogoutController controller = Get.put(LogoutController());

class LogoutView extends GetView<LogoutController> {
  const LogoutView({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 20.0, 20.0, 5.0),
                        child: Image.asset(Utils.backImage),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 5.0),
                      child: Text(
                        Utils.logOutBtnText,
                        textAlign: TextAlign.start,
                        style: mandisaRegular(
                            color: ThemeColor.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: width,
                  height: 200.0,
                  child: Image.asset(Utils.logoutBGImage),
                ),
                Text(
                  Utils.logOutDescText,
                  textAlign: TextAlign.center,
                  style: mandisaRegular(
                      color: ThemeColor.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0),
                ),
                // Back and Logout Button
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 20.0,
                    ),
                    Obx(() {
                      return Expanded(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          child: ElevatedButton(
                            /* onPressed: controller.isValid
                                        ? () => Get.toNamed(AppPages.HOME)
                                        : null,*/
                            onPressed: () async {
                              /*if (controller.loginInFormKey.currentState!
                                              .validate()) {
                                            controller.setLoading(true);
                                            await Future.delayed(
                                                const Duration(milliseconds: 1000));
                                            controller.checkLogin();
                                          }*/
                              controller.checkLogOut();
                            },
                            style: Utils.elevatedButtonStyle,
                            child: controller.isLoading.isTrue
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        Utils.loadingText,
                                        style: mandisaRegular(
                                            color: ThemeColor.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.0),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const SizedBox(
                                        height: 20.0,
                                        width: 20.0,
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 2.0,
                                        ),
                                      ),
                                    ],
                                  )
                                : Text(
                                    Utils.backText,
                                    style: mandisaRegular(
                                        color: ThemeColor.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.0),
                                  ),
                          ),
                        ),
                      );
                    }),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Obx(() {
                      return Expanded(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          child: ElevatedButton(
                            /* onPressed: controller.isValid
                                        ? () => Get.toNamed(AppPages.HOME)
                                        : null,*/
                            onPressed: () async {
                              /*if (controller.loginInFormKey.currentState!
                                              .validate()) {
                                            controller.setLoading(true);
                                            await Future.delayed(
                                                const Duration(milliseconds: 1000));
                                            controller.checkLogin();
                                          }*/
                              controller.checkLogOut();
                            },
                            style: Utils.elevatedButtonStyle,
                            child: controller.isLoading.isTrue
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        Utils.loadingText,
                                        style: mandisaRegular(
                                            color: ThemeColor.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.0),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const SizedBox(
                                        height: 20.0,
                                        width: 20.0,
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 2.0,
                                        ),
                                      ),
                                    ],
                                  )
                                : Text(
                                    Utils.logOutBtnText,
                                    style: mandisaRegular(
                                        color: ThemeColor.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.0),
                                  ),
                          ),
                        ),
                      );
                    }),
                    const SizedBox(
                      width: 20.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
