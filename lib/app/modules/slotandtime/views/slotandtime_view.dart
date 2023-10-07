import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/modules/slotandtime/controller/slotandtime_controller.dart';

import '../../../utils/color_themes.dart';
import '../../../utils/text_themes.dart';
import '../../../utils/utils.dart';

final SlotAndTimeController controller = Get.put(SlotAndTimeController());

class SlotAndTimeView extends GetView<SlotAndTimeController> {
  const SlotAndTimeView({Key? key}) : super(key: key);

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
                        Utils.selectSlotText,
                        textAlign: TextAlign.start,
                        style: mandisaRegular(
                            color: ThemeColor.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                      child: Image.asset(Utils.slotBGImage),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 50.0),
                      child: Text(
                        Utils.slotDescText,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: mandisaRegular(
                            color: ThemeColor.primaryShadowGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Obx(
                          () => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: controller.isTimeOneSelected.value
                                  ? ThemeColor.mainColor
                                  : ThemeColor.servicesBackground,
                              onPrimary: controller.isTimeOneSelected.value
                                  ? ThemeColor.mainColor
                                  : ThemeColor.servicesBackground,
                              // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0), // BorderRadius
                                side: BorderSide(
                                    color: controller.isTimeOneSelected.value
                                        ? ThemeColor.mainColor
                                        : ThemeColor.servicesBorderColor,
                                    width: 2.0), // Border
                              ),
                            ),
                            onPressed: () {
                              controller.toggleTimeOne();
                              Get.snackbar('Button Clicked',
                                  'Button with Image Clicked');
                            },
                            child: Text(
                              Utils.slotTimeOneText,
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: controller.isTimeOneSelected.value
                                      ? ThemeColor.white
                                      : ThemeColor.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0),
                            ),
                          ),
                        ),
                        Obx(
                          () => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: controller.isTimeTwoSelected.value
                                  ? ThemeColor.mainColor
                                  : ThemeColor.servicesBackground,
                              onPrimary: controller.isTimeTwoSelected.value
                                  ? ThemeColor.mainColor
                                  : ThemeColor.servicesBackground,
                              // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0), // BorderRadius
                                side: BorderSide(
                                    color: controller.isTimeTwoSelected.value
                                        ? ThemeColor.mainColor
                                        : ThemeColor.servicesBorderColor,
                                    width: 2.0), // Border
                              ),
                            ),
                            onPressed: () {
                              controller.toggleTimeTwo();
                              Get.snackbar('Button Clicked',
                                  'Button with Image Clicked');
                            },
                            child: Text(
                              Utils.slotTimeTwoText,
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: controller.isTimeTwoSelected.value
                                      ? ThemeColor.white
                                      : ThemeColor.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Obx(
                          () => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: controller.isTimeThreeSelected.value
                                  ? ThemeColor.mainColor
                                  : ThemeColor.servicesBackground,
                              onPrimary: controller.isTimeThreeSelected.value
                                  ? ThemeColor.mainColor
                                  : ThemeColor.servicesBackground,
                              // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0), // BorderRadius
                                side: BorderSide(
                                    color: controller.isTimeThreeSelected.value
                                        ? ThemeColor.mainColor
                                        : ThemeColor.servicesBorderColor,
                                    width: 2.0), // Border
                              ),
                            ),
                            onPressed: () {
                              controller.toggleTimeThree();
                              Get.snackbar('Button Clicked',
                                  'Button with Image Clicked');
                            },
                            child: Text(
                              Utils.slotTimeThreeText,
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: controller.isTimeThreeSelected.value
                                      ? ThemeColor.white
                                      : ThemeColor.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0),
                            ),
                          ),
                        ),
                        Obx(
                          () => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: controller.isTimeFourSelected.value
                                  ? ThemeColor.mainColor
                                  : ThemeColor.servicesBackground,
                              onPrimary: controller.isTimeFourSelected.value
                                  ? ThemeColor.mainColor
                                  : ThemeColor.servicesBackground,
                              // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0), // BorderRadius
                                side: BorderSide(
                                    color: controller.isTimeFourSelected.value
                                        ? ThemeColor.mainColor
                                        : ThemeColor.servicesBorderColor,
                                    width: 2.0), // Border
                              ),
                            ),
                            onPressed: () {
                              controller.toggleTimeFour();
                              Get.snackbar('Button Clicked',
                                  'Button with Image Clicked');
                            },
                            child: Text(
                              Utils.slotTimeFourText,
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: controller.isTimeFourSelected.value
                                      ? ThemeColor.white
                                      : ThemeColor.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Obx(
                          () => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: controller.isTimeFiveSelected.value
                                  ? ThemeColor.mainColor
                                  : ThemeColor.servicesBackground,
                              onPrimary: controller.isTimeFiveSelected.value
                                  ? ThemeColor.mainColor
                                  : ThemeColor.servicesBackground,
                              // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0), // BorderRadius
                                side: BorderSide(
                                    color: controller.isTimeFiveSelected.value
                                        ? ThemeColor.mainColor
                                        : ThemeColor.servicesBorderColor,
                                    width: 2.0), // Border
                              ),
                            ),
                            onPressed: () {
                              controller.toggleTimeFive();
                              Get.snackbar('Button Clicked',
                                  'Button with Image Clicked');
                            },
                            child: Text(
                              Utils.slotTimeFiveText,
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: controller.isTimeFiveSelected.value
                                      ? ThemeColor.white
                                      : ThemeColor.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0),
                            ),
                          ),
                        ),
                        Obx(
                          () => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: controller.isTimeSixSelected.value
                                  ? ThemeColor.mainColor
                                  : ThemeColor.servicesBackground,
                              onPrimary: controller.isTimeSixSelected.value
                                  ? ThemeColor.mainColor
                                  : ThemeColor.servicesBackground,
                              // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0), // BorderRadius
                                side: BorderSide(
                                    color: controller.isTimeSixSelected.value
                                        ? ThemeColor.mainColor
                                        : ThemeColor.servicesBorderColor,
                                    width: 2.0), // Border
                              ),
                            ),
                            onPressed: () {
                              controller.toggleTimeSix();
                              Get.snackbar('Button Clicked',
                                  'Button with Image Clicked');
                            },
                            child: Text(
                              Utils.slotTimeSixText,
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: controller.isTimeSixSelected.value
                                      ? ThemeColor.white
                                      : ThemeColor.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Obx(
                          () => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: controller.isTimeSevenSelected.value
                                  ? ThemeColor.mainColor
                                  : ThemeColor.servicesBackground,
                              onPrimary: controller.isTimeSevenSelected.value
                                  ? ThemeColor.mainColor
                                  : ThemeColor.servicesBackground,
                              // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0), // BorderRadius
                                side: BorderSide(
                                    color: controller.isTimeSevenSelected.value
                                        ? ThemeColor.mainColor
                                        : ThemeColor.servicesBorderColor,
                                    width: 2.0), // Border
                              ),
                            ),
                            onPressed: () {
                              controller.toggleTimeSeven();
                              Get.snackbar('Button Clicked',
                                  'Button with Image Clicked');
                            },
                            child: Text(
                              Utils.slotTimeSevenText,
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: controller.isTimeSevenSelected.value
                                      ? ThemeColor.white
                                      : ThemeColor.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0),
                            ),
                          ),
                        ),
                        Obx(
                          () => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: controller.isTimeEightSelected.value
                                  ? ThemeColor.mainColor
                                  : ThemeColor.servicesBackground,
                              onPrimary: controller.isTimeEightSelected.value
                                  ? ThemeColor.mainColor
                                  : ThemeColor.servicesBackground,
                              // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0), // BorderRadius
                                side: BorderSide(
                                    color: controller.isTimeEightSelected.value
                                        ? ThemeColor.mainColor
                                        : ThemeColor.servicesBorderColor,
                                    width: 2.0), // Border
                              ),
                            ),
                            onPressed: () {
                              controller.toggleTimeEight();
                              Get.snackbar('Button Clicked',
                                  'Button with Image Clicked');
                            },
                            child: Text(
                              Utils.slotTimeEightText,
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: controller.isTimeEightSelected.value
                                      ? ThemeColor.white
                                      : ThemeColor.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Obx(
                      () {
                        return Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 80.0, 30.0, 5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: ThemeColor.servicesBackground,
                              boxShadow: [
                                BoxShadow(
                                  color: ThemeColor.servicesBackground
                                      .withOpacity(0.2), // Shadow color
                                  spreadRadius: 1,
                                  blurRadius: 0.2,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                              border: Border.all(
                                color: ThemeColor.servicesBorderColor,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: 32,
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
                                controller.checkSave();
                              },
                              style: Utils.elevatedButtonStyle,
                              child: controller.isLoading.isTrue
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                      Utils.saveText,
                                      style: mandisaRegular(
                                          color: ThemeColor.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.0),
                                    ),
                            ),
                          ),
                        );
                      },
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
