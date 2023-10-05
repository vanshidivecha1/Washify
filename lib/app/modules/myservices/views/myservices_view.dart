import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                    for (var i = 0; i < controller.servicesItems.length; i++)
                      ServicesItemModel(
                          title: controller.servicesItems[i].title,
                          companyName: controller.servicesItems[i].companyName,
                          servicedByPersonName:
                              controller.servicesItems[i].servicedByPersonName,
                          dateTime: controller.servicesItems[i].dateTime),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(10.0, 20.0, 5.0, 5.0),
                      child: Text(
                        Utils.viewPastServicesText,
                        textAlign: TextAlign.start,
                        style: mandisaRegular(
                            color: ThemeColor.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Click Here for Past Services.");
                      },
                      child: Container(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 5.0),
                        child: Text(
                          Utils.clickHereText,
                          textAlign: TextAlign.start,
                          style: mandisaRegular(
                              color: ThemeColor.mainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0),
                        ),
                      ),
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
  final String dateTime;

  //final List<ServiceItemImageModel> imageModels;

  //final ServiceItemImageDataModel imageModel;

  //final String image;

  const ServicesItemModel({
    super.key,
    required this.title,
    required this.companyName,
    required this.servicedByPersonName,
    required this.dateTime,
    //required this.imageModels,
    //required this.image,
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
          Text(
            title,
            textAlign: TextAlign.start,
            maxLines: 1,
            style: mandisaRegular(
                color: ThemeColor.black,
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
          ),
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
                          fontSize: 12.0),
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

/*class ServiceItemImageDataModel extends StatelessWidget {
  final String imagePath;

  const ServiceItemImageDataModel({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 5.0),
      child: SizedBox(
        height: 40.0,
        width: 60.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: GetBuilder<MyServicesController>(
            builder: (controller) => ListView.builder(
              itemCount: controller.imageUrlList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Image.network(controller.imageUrlList[index].imagePath),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}*/
