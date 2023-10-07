import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        bottom: false,
        child: Scaffold(
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: controller.registerNumberKey,
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
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 5.0),
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
                    padding: const EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 0.0),
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
                    padding: const EdgeInsets.fromLTRB(10.0, 0.0, 5.0, 5.0),
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
                                  : ThemeColor.servicesBackground,
                              // Text color
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
                              Get.snackbar('Button Clicked',
                                  'Button with Image Clicked');
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
                                      color:
                                          controller.isTwoWheelerSelected.value
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
                                  : ThemeColor.servicesBackground,
                              // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0), // BorderRadius
                                side: BorderSide(
                                    color:
                                        controller.isFourWheelerSelected.value
                                            ? ThemeColor.servicesBorderColor
                                            : ThemeColor.secondaryLightGrey,
                                    width: 2.0), // Border
                              ),
                            ),
                            onPressed: () {
                              controller.toggleFourWheeler();
                              Get.snackbar('Button Clicked',
                                  'Button with Image Clicked');
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
                  // Company List
                  Obx(
                    () => Container(
                      width: width,
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                      margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
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
                      child: DropdownButton(
                        items: controller.twoWheelerCompanyList
                            .map((selectedType) {
                          return DropdownMenuItem(
                            value: selectedType,
                            child: Text(
                              selectedType,
                              style: mandisaRegular(
                                  color: ThemeColor.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0),
                            ),
                          );
                        }).toList(),
                        hint: Text(
                          Utils.selectVehicleCompanyText,
                          style: mandisaRegular(
                              color: ThemeColor.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 10.0),
                        ),
                        value: controller.selectedCompany.value == ""
                            ? null
                            : controller.selectedCompany.value,
                        onChanged: (newValue) {
                          controller.selectedCompany.value =
                              newValue.toString();
                        },
                        underline: const SizedBox(),
                        isExpanded: true,
                      ),
                    ),
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
                  // Model List
                  Obx(
                    () => Container(
                      width: width,
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                      margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
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
                      child: DropdownButton(
                        items: controller.modelList.map((selectedType) {
                          return DropdownMenuItem(
                            value: selectedType,
                            child: Text(
                              selectedType,
                              style: mandisaRegular(
                                  color: ThemeColor.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0),
                            ),
                          );
                        }).toList(),
                        hint: Text(
                          Utils.selectVehicleModelText,
                          style: mandisaRegular(
                              color: ThemeColor.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 10.0),
                        ),
                        value: controller.selectedModel.value == ""
                            ? null
                            : controller.selectedModel.value,
                        onChanged: (newValue) {
                          //controller.selectedModel.value = newValue.toString();
                          controller.selectedModel.value = newValue.toString();
                        },
                        underline: const SizedBox(),
                        isExpanded: true,
                      ),
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
                  // Type List
                  Obx(
                    () => Container(
                      width: width,
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                      margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
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
                      child: DropdownButton(
                        items: controller.typeList.map((selectedType) {
                          return DropdownMenuItem(
                            value: selectedType,
                            child: Text(
                              selectedType,
                              style: mandisaRegular(
                                  color: ThemeColor.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0),
                            ),
                          );
                        }).toList(),
                        hint: Text(
                          Utils.selectVehicleTypeText,
                          style: mandisaRegular(
                              color: ThemeColor.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 10.0),
                        ),
                        value: controller.selectedType.value == ""
                            ? null
                            : controller.selectedType.value,
                        onChanged: (newValue) {
                          controller.selectedType.value = newValue.toString();
                        },
                        underline: const SizedBox(),
                        isExpanded: true,
                      ),
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
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
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: controller.registrationNumberController,
                        onSaved: (value) {
                          controller.registrationNumber = value!;
                        },
                        validator: (value) =>
                            controller.validateRegistrationNumber(value!),
                        decoration: InputDecoration(
                          hintText: Utils.enterRegistrationNumber,
                          hintStyle: mandisaRegular(
                              color: ThemeColor.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 10.0),
                          errorStyle: mandisaRegular(
                              color: ThemeColor.secondaryRed,
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
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
                                    Utils.saveAndNextText,
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
            ),
          ),
        ),
      ),
    );
  }
}
