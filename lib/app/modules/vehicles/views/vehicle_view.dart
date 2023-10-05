import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/modules/vehicles/model/company_item_model.dart';

import '../../../utils/color_themes.dart';
import '../../../utils/text_themes.dart';
import '../../../utils/utils.dart';
import '../controller/vehicle_controller.dart';

final VehicleController controller = Get.put(VehicleController());

class VehicleView extends GetView<VehicleController> {
  const VehicleView({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        Utils.addVehiclesText,
                        textAlign: TextAlign.start,
                        style: mandisaRegular(
                            color: ThemeColor.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 5.0),
                  child: Text(
                    Utils.classText,
                    textAlign: TextAlign.start,
                    style: mandisaRegular(
                        color: ThemeColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 5.0),
                  child: Row(
                    children: [
                      Obx(
                        () => ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: controller.isTwoWheelerSelected.value
                                ? ThemeColor.servicesBackground
                                : ThemeColor.secondaryLightGrey,
                            onPrimary: controller.isTwoWheelerSelected.value
                                ? ThemeColor.mainColor
                                : ThemeColor.servicesBackground, // Text color
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(10.0), // BorderRadius
                              side: BorderSide(
                                  color: controller.isTwoWheelerSelected.value
                                      ? ThemeColor.servicesBorderColor
                                      : ThemeColor.secondaryLightGrey,
                                  width: 2.0), // Border
                            ),
                          ),
                          onPressed: () {
                            controller.toggleTwoWheeler();
                            Get.snackbar(
                                'Button Clicked', 'Button with Image Clicked');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                Utils.bikeImage,
                                height: 24.0,
                                color: controller.isTwoWheelerSelected.value
                                    ? ThemeColor.mainColor
                                    : ThemeColor.black,
                              ),
                              const SizedBox(width: 4.0),
                              Text(
                                Utils.twoWheelerText,
                                textAlign: TextAlign.center,
                                style: mandisaRegular(
                                    color: controller.isTwoWheelerSelected.value
                                        ? ThemeColor.mainColor
                                        : ThemeColor.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Obx(
                        () => ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: controller.isFourWheelerSelected.value
                                ? ThemeColor.servicesBackground
                                : ThemeColor.secondaryLightGrey,
                            onPrimary: controller.isFourWheelerSelected.value
                                ? ThemeColor.mainColor
                                : ThemeColor.servicesBackground, // Text color
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(10.0), // BorderRadius
                              side: BorderSide(
                                  color: controller.isFourWheelerSelected.value
                                      ? ThemeColor.servicesBorderColor
                                      : ThemeColor.secondaryLightGrey,
                                  width: 2.0), // Border
                            ),
                          ),
                          onPressed: () {
                            controller.toggleFourWheeler();
                            Get.snackbar(
                                'Button Clicked', 'Button with Image Clicked');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                Utils.carImage,
                                height: 24.0,
                                color: controller.isFourWheelerSelected.value
                                    ? ThemeColor.mainColor
                                    : ThemeColor.black,
                              ),
                              const SizedBox(width: 4.0),
                              Text(
                                Utils.fourWheelerText,
                                textAlign: TextAlign.center,
                                style: mandisaRegular(
                                    color:
                                        controller.isFourWheelerSelected.value
                                            ? ThemeColor.mainColor
                                            : ThemeColor.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 5.0),
                  child: Text(
                    Utils.companyText,
                    textAlign: TextAlign.start,
                    style: mandisaRegular(
                        color: ThemeColor.secondaryDarkGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  ),
                ),
                Obx(() {
                  if (controller.dropdownValues.isEmpty) {
                    return const Text('No options available');
                  }

                  return DropdownButtonHideUnderline(
                    items: controller.companyDataList.map<DropdownMenuItem<CompanyItemModel>>((value) {
                        return DropdownMenuItem(
                        value: value,
                        child: Row(
                          children: [
                            Text(value.bank_name),
                          ],
                        ),
                      );
                  }).toList(),
                    child: DropdownButton<CompanyItemModel>(
                      style: mandisaRegular(
                            color: ThemeColor.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 10.0),
                      hint: Text(
                        'Select Company',
                        textAlign: TextAlign.start,
                        style: mandisaRegular(
                            color: ThemeColor.secondaryDarkGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0),
                      ),
                  )
                  );
                    /*value: controller.selectedValue.value,
                    items: controller.dropdownValues
                        .map((value) => DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            ))
                        .toList(),*/
                    /*onChanged: (selectedValue) {
                    controller.selectedValue.value = selectedValue.toString();
                  },*/
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 5.0),
                  child: Text(
                    Utils.modelText,
                    textAlign: TextAlign.start,
                    style: mandisaRegular(
                        color: ThemeColor.secondaryDarkGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 5.0),
                  child: Text(
                    Utils.typeText,
                    textAlign: TextAlign.start,
                    style: mandisaRegular(
                        color: ThemeColor.secondaryDarkGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 5.0),
                  child: Text(
                    Utils.registrationNumberText,
                    textAlign: TextAlign.start,
                    style: mandisaRegular(
                        color: ThemeColor.secondaryDarkGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
