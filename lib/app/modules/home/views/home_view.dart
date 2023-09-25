import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/color_themes.dart';
import '../../../utils/text_themes.dart';
import '../../../utils/utils.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final HomeController itemController = Get.find();

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3), // Shadow color
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    Utils.backgroundImage,
                    fit: BoxFit.cover,
                    width: width,
                    height: 280.0,
                  ),
                ),
                Positioned(
                  top: 60,
                  right: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: ThemeColor.black.withOpacity(0.2),
                          // Shadow color
                          spreadRadius: 4,
                          blurRadius: 2,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: ThemeColor.primaryYellow,
                        shape: BoxShape.circle,
                        border: Border.all(color: ThemeColor.white, width: 2.0),
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
              ],
            ),
            Container(
              width: width,
              margin: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
              child: Text(
                Utils.selectPlanText,
                style: mandisaRegular(
                    color: ThemeColor.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 5.0),
                      width: width / 4.4,
                      height: 105.0,
                      decoration: BoxDecoration(
                        color: ThemeColor.white,
                        border: Border.all(
                          color: ThemeColor.mainColor,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.only(top: 4.0, bottom: 4.0),
                            width: width,
                            decoration: const BoxDecoration(
                              color: ThemeColor.mainColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Text(
                              Utils.basicText,
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: ThemeColor.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5.0,
                            ),
                            child: Text(
                              "₹ 599",
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: ThemeColor.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 2.0, bottom: 5.0),
                            child: Text(
                              "Month",
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: ThemeColor.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10.0),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 5.0, right: 5.0),
                            child: Divider(
                              height: 1.0,
                              color: ThemeColor.primaryShadowGrey,
                              thickness: 1.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5.0,
                            ),
                            child: Text(
                              "Only Car Washing",
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: ThemeColor.secondaryDarkGrey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 7.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 5.0),
                      width: width / 4.4,
                      height: 105.0,
                      decoration: BoxDecoration(
                        color: ThemeColor.white,
                        border: Border.all(
                          color: ThemeColor.mainColor,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.only(top: 4.0, bottom: 4.0),
                            width: width,
                            decoration: const BoxDecoration(
                              color: ThemeColor.mainColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Text(
                              Utils.premiumText,
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: ThemeColor.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5.0,
                            ),
                            child: Text(
                              "₹ 799",
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: ThemeColor.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 2.0, bottom: 5.0),
                            child: Text(
                              "Month",
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: ThemeColor.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10.0),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 5.0, right: 5.0),
                            child: Divider(
                              height: 1.0,
                              color: ThemeColor.primaryShadowGrey,
                              thickness: 1.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5.0,
                            ),
                            child: Text(
                              "Cars and Bikes both\nwashing will be\nprovided",
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: ThemeColor.secondaryDarkGrey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 7.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 5.0),
                      width: width / 4.4,
                      height: 105.0,
                      decoration: BoxDecoration(
                        color: ThemeColor.white,
                        border: Border.all(
                          color: ThemeColor.mainColor,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.only(top: 4.0, bottom: 4.0),
                            width: width,
                            decoration: const BoxDecoration(
                              color: ThemeColor.mainColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Text(
                              Utils.advancedText,
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: ThemeColor.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5.0,
                            ),
                            child: Text(
                              "₹ 2400",
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: ThemeColor.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 2.0, bottom: 5.0),
                            child: Text(
                              "Yearly",
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: ThemeColor.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10.0),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 5.0, right: 5.0),
                            child: Divider(
                              height: 1.0,
                              color: ThemeColor.primaryShadowGrey,
                              thickness: 1.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5.0,
                            ),
                            child: Text(
                              "Only Bike Washing",
                              textAlign: TextAlign.center,
                              style: mandisaRegular(
                                  color: ThemeColor.secondaryDarkGrey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 7.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: width,
              margin: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
              child: Text(
                Utils.ourServicesText,
                style: mandisaRegular(
                    color: ThemeColor.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: <Widget>[
                  for (var item in itemController.items)
                    OurServicesModelItem(
                      imagePath: item.imagePath,
                      text: item.text,
                    ),
                ],
              ),
            ),
            Container(
              width: width,
              margin: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
              child: Text(
                Utils.whoWeAreText,
                style: mandisaRegular(
                    color: ThemeColor.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            Container(
              width: width,
              margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
              child: Text(
                Utils.whoWeAreDesc,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: mandisaRegular(
                    color: ThemeColor.primaryShadowGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OurServicesModelItem extends StatelessWidget {
  final IconData imagePath;
  final String text;

  const OurServicesModelItem(
      {super.key, required this.imagePath, required this.text});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: ThemeColor.mainColor,
              boxShadow: [
                BoxShadow(
                  color: ThemeColor.mainColor.withOpacity(0.2), // Shadow color
                  spreadRadius: 2,
                  blurRadius: 0.5,
                  offset: const Offset(0, 2),
                ),
              ],
              border: Border.all(
                color: ThemeColor.mainColor,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: SizedBox(
              height: 20.0,
              width: 20.0,
              child: Icon(
                imagePath,
                color: ThemeColor.white,
                size: 20.0,
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          SizedBox(
            width: 40.0,
            child: Text(
              text,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: mandisaRegular(
                  color: ThemeColor.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 11.0),
            ),
          ),
        ],
      ),
    );
  }
}
