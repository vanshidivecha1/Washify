import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/color_themes.dart';
import '../../../utils/text_themes.dart';
import '../../../utils/utils.dart';
import '../controller/termsandcondition_controller.dart';

final TermsAndConditionController controller =
    Get.put(TermsAndConditionController());

class TermsAndConditionView extends GetView<TermsAndConditionController> {
  const TermsAndConditionView({Key? key}) : super(key: key);

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
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15.0, 20.0, 20.0, 5.0),
                      child: Image.asset(Utils.backImage),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 5.0),
                    child: Text(
                      Utils.termConditionText,
                      textAlign: TextAlign.start,
                      style: mandisaRegular(
                          color: ThemeColor.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: Container(
                  color: ThemeColor.termsConditionBorderColor,
                  width: width,
                  margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                  child: Text(
                    Utils.termConditionText,
                    textAlign: TextAlign.start,
                    style: mandisaRegular(
                        color: ThemeColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
