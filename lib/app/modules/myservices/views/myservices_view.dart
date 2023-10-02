import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/modules/logout/controllers/logout_controller.dart';

import '../../../utils/color_themes.dart';
import '../../../utils/text_themes.dart';
import '../../../utils/utils.dart';
import '../controller/myservices_controller.dart';

final MyServicesController controller = Get.put(MyServicesController());

class MyServicesView extends GetView<MyServicesController> {
  const MyServicesView({Key? key}) : super(key: key);

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
                        Utils.myServicesText,
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
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.only(
                              left: 20.0, top: 20.0, bottom: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: ThemeColor.mainColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: ThemeColor.mainColor
                                          .withOpacity(0.2), // Shadow color
                                      spreadRadius: 1,
                                      blurRadius: 0.2,
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
                                  child: Image.asset(
                                    Utils.addMoreServicesImage,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5.0),
                              SizedBox(
                                width: 40.0,
                                child: Text(
                                  Utils.addMoreText,
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
                        ),
                      ),
                      for (var item in controller.items)
                        ServicesModel(
                          imagePath: item.imagePath,
                          text: item.text,
                        ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    for (var item in controller.servicesItems)
                      ServicesItemModel(
                        imagePath: item.imagePath,
                        title: item.title,
                        companyName: item.companyName,
                        servicedByPersonName: item.servicedByPersonName,
                        dateTime: item.dateTime,
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

class ServicesModel extends StatelessWidget {
  final IconData imagePath;
  final String text;

  const ServicesModel({super.key, required this.imagePath, required this.text});

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
                  spreadRadius: 1,
                  blurRadius: 0.2,
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

class ServicesItemModel extends StatelessWidget {
  final String title;
  final String companyName;
  final String servicedByPersonName;
  final String imagePath;
  final String dateTime;

  const ServicesItemModel(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.companyName,
      required this.servicedByPersonName,
      required this.dateTime});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 40.0,
            child: Text(
              title,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: mandisaRegular(
                  color: ThemeColor.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 11.0),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: ThemeColor.mainColor,
              boxShadow: [
                BoxShadow(
                  color: ThemeColor.mainColor.withOpacity(0.2), // Shadow color
                  spreadRadius: 1,
                  blurRadius: 0.2,
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
              child: Image.asset(
                imagePath,
                color: ThemeColor.white,
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          SizedBox(
            width: 40.0,
            child: Text(
              title,
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
