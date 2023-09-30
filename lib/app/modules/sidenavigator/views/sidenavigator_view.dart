import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/utils/color_themes.dart';

import '../../../utils/text_themes.dart';
import '../../../utils/utils.dart';
import '../controllers/sidenavigator_controller.dart';

final SideNavigatorController controller = Get.put(SideNavigatorController());
const TAG = "SideNavigatorView";

class SideNavigatorView extends GetView<SideNavigatorController> {
  const SideNavigatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return SafeArea(
      top: true,
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
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
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => {},
                    child: Container(
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: ThemeColor.black.withOpacity(0.2),
                            // Shadow color
                            spreadRadius: 2,
                            blurRadius: 1,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: ThemeColor.primaryYellow,
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: ThemeColor.white, width: 2.0),
                        ),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(20), // Image radius
                            child: const Icon(Icons.person),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                    width: width,
                    child: Text(
                      "Bhavik Miyani",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: mandisaRegular(
                          color: ThemeColor.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                  ),
                  Container(
                    width: width,
                    padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                    child: Text(
                      "bhavikmiyani000@gmail.com",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: mandisaRegular(
                          color: ThemeColor.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10.0),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      height: 30.0,
                      width: 100.0,
                      decoration: const BoxDecoration(
                        color: ThemeColor.mainColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        Utils.editProfileText,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: mandisaRegular(
                            color: ThemeColor.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                child: Divider(
                  color: ThemeColor.secondaryLightGrey,
                ),
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    for (var i = 0; i < controller.items.length; i++)
                      SideNavigatorModelItem(
                        index: i,
                        bullet: controller.items[i].bullet,
                        text: controller.items[i].text,
                        imagePath: controller.items[i].imagePath,
                      ),
                    GestureDetector(
                      onTap: () {
                        print("$TAG -- Logout");
                        controller.goToLogoutPage();
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
                        margin: const EdgeInsets.only(
                            left: 10.0, top: 80.0, bottom: 20.0),
                        child: Row(
                          children: <Widget>[
                            const Icon(
                              Utils.bulletImage,
                              color: ThemeColor.black,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                Utils.logoutText,
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                style: mandisaRegular(
                                    color: ThemeColor.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SideNavigatorModelItem extends StatelessWidget {
  final int index;
  final IconData bullet;
  final String text;
  final String imagePath;

  const SideNavigatorModelItem(
      {super.key,
      required this.index,
      required this.bullet,
      required this.text,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        controller.selectedIndex.value = index;
        if (index == 0) {
          print("$TAG -- Index -- $index");
          controller.goToMyServices();
        } else if (index == 1) {
          print("$TAG -- Index -- $index");
          controller.goToPastServices();
        } else if (index == 2) {
          print("$TAG -- Index -- $index");
          controller.goToAddressPage();
        } else if (index == 3) {
          print("$TAG -- Index -- $index");
          controller.goToVehiclesPage();
        } else if (index == 4) {
          print("$TAG -- Index -- $index");
          controller.goToSlotAndTimePage();
        } else if (index == 5) {
          print("$TAG -- Index -- $index");
          controller.goToChangePasswordPage();
        } else if (index == 6) {
          print("$TAG -- Index -- $index");
          controller.goToTermsAndConditionPage();
        }
      },
      child: Container(
        margin: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 5.0),
        child: Row(
          children: <Widget>[
            Icon(
              bullet,
              color: ThemeColor.black,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                      child: Text(
                        text,
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: mandisaRegular(
                            color: ThemeColor.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ),
                    Image.asset(imagePath),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
