import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/color_themes.dart';
import '../../../utils/text_themes.dart';
import '../../../utils/utils.dart';
import '../controller/pastservices_controller.dart';

final PastServicesController controller = Get.put(PastServicesController());

class PastServicesView extends GetView<PastServicesController> {
  const PastServicesView({Key? key}) : super(key: key);

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
                      Utils.pastServicesText,
                      textAlign: TextAlign.start,
                      style: mandisaRegular(
                          color: ThemeColor.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: <Widget>[
                      for (var i = 0; i < controller.items.length; i++)
                        PastServicesModel(
                            companyName: controller.items[i].companyName,
                            servicedByPersonName:
                                controller.items[i].servicedByPersonName,
                            dateTime: controller.items[i].dateTime),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PastServicesModel extends StatelessWidget {
  final String companyName;
  final String servicedByPersonName;
  final String dateTime;

  const PastServicesModel({
    super.key,
    required this.companyName,
    required this.servicedByPersonName,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      margin: const EdgeInsets.only(
          left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: [
              Container(
                width: width,
                height: 135.0,
                padding: const EdgeInsets.all(10.0),
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
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      companyName,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: mandisaRegular(
                          color: ThemeColor.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0),
                    ),
                  ),
                  const Divider(
                    color: ThemeColor.servicesBorderColor,
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                        child: Text(
                          Utils.servicedByText,
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          style: mandisaRegular(
                              color: ThemeColor.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 10.0),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 10.0),
                        child: Text(
                          servicedByPersonName,
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: mandisaRegular(
                              color: ThemeColor.secondaryDarkGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 10.0),
                        ),
                      ),
                    ],
                  ),
                  /* Row(
                    children: [
                      SizedBox(
                        height: 40.0,
                        width: width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: imageModels.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      imageModels[index] as String,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),*/
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 5.0, 10.0, 5.0),
                      child: Text(
                        dateTime,
                        textAlign: TextAlign.end,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: mandisaRegular(
                            color: ThemeColor.secondaryDarkGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
