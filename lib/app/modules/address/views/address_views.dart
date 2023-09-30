import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/modules/address/controllers/address_controller.dart';
import 'package:vehicle_washing_flutter/app/modules/address/model/address_model.dart';

import '../../../utils/color_themes.dart';
import '../../../utils/text_themes.dart';
import '../../../utils/utils.dart';

final AddressController controller = Get.put(AddressController());

class AddressView extends GetView<AddressController> {
  const AddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return true;
      },
      child: MaterialApp(
        home: SafeArea(
          top: true,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(70),
              child: Container(
                color: ThemeColor.bg,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      //onTap: () => Navigator.of(context).pushReplacementNamed(Utils.mainPage),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 20.0, 20.0, 5.0),
                        child: Image.asset(Utils.backImage),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10.0, 20.0, 20.0, 5.0),
                      child: Expanded(
                        child: Text(
                          Utils.addressText,
                          textAlign: TextAlign.start,
                          style: mandisaRegular(
                              color: ThemeColor.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                color: ThemeColor.bg,
                width: width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 10.0),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              Utils.plusImage,
                              color: ThemeColor.mainColor,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              Utils.addAddressText,
                              textAlign: TextAlign.start,
                              style: mandisaRegular(
                                  color: ThemeColor.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0),
                            ),
                          ],
                        ),
                      ),
                      onTap: () => {
                        print('Add Address Clicked'),
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddAddressScreen(),
                          ),
                        ),*/
                      },
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        color: ThemeColor.bg,
                        width: width,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (var i = 0; i < controller.items.length; i++)
                              //buildCard(context, item),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    10.0, 5.0, 10.0, 5.0),
                                child: Card(
                                  elevation: 1.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        10.0, 2.0, 10.0, 0.0),
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: i,
                                          groupValue:
                                              controller.selectedIndex.value,
                                          onChanged: (value) {
                                            controller.setSelectedIndex(value!);
                                            /*setState(() {
                                              selectedAddress = value!;
                                              print(
                                                  'Selected Address = $selectedAddress');
                                            });*/
                                          },
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 5.0,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0.0, 5.0, 10.0, 10.0),
                                                child: Text(
                                                  maxLines: 1,
                                                  Utils.addAddressText,
                                                  textAlign: TextAlign.start,
                                                  style: mandisaRegular(
                                                      color: ThemeColor.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16.0),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0.0, 0.0, 10.0, 10.0),
                                                child: Text(
                                                  maxLines: 1,
                                                  Utils.addAddressText,
                                                  textAlign: TextAlign.start,
                                                  style: mandisaRegular(
                                                      color: ThemeColor
                                                          .primaryDarkGrey,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14.0),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0.0, 0.0, 0.0, 10.0),
                                                child: Text(
                                                  Utils.addAddressText,
                                                  textAlign: TextAlign.start,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: mandisaRegular(
                                                      color: ThemeColor
                                                          .primaryDarkGrey,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14.0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                          ],
                          //items.map((item) => buildCard(context, item)).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

Widget buildCard(BuildContext context, AddressModel item) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
    child: Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 0.0),
        height: 100.0,
        child: ListTile(
          title: const Text('www.w3school.com'),
          leading: Radio(
            value: item.addressName,
            groupValue: item.addressName,
            onChanged: (value) {},
          ),
        ),
      ),
    ),
  );
}
