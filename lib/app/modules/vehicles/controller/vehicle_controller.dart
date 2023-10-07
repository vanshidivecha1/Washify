import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/utils.dart';

class VehicleController extends GetxController {
  var isLoading = false.obs;
  var isTwoWheelerSelected = false.obs;
  var isFourWheelerSelected = false.obs;

  List<String> dropdownValues = ['Option 1', 'Option 2', 'Option 3'];
  Rx<List<String>> selectedOptionList = Rx<List<String>>([]);
  var selectedValue = ''.obs;

  var selectedCompany = "".obs;
  List twoWheelerCompanyList = [
    'Bajaj Bikes',
    'Hero Motocorp',
    'Mahindra Two Wheelers',
    'Ola Electric',
    'Royal Enfield',
    'TVS Motor',
  ];

  var selectedModel = "".obs;
  List modelList = [
    'Bajaj Pulsar RS200',
    'Bajaj Pulsar NS 200',
    'Bajaj Pulsar NS 160',
    'Bajaj Pulsar 220 F',
    'Bajaj Pulsar 150',
    'Bajaj Pulsar 150 Twin Disc',
    'Bajaj Pulsar 150 Neon',
    'Bajaj Pulsar 180F Neon',
    'Bajaj Avenger Cruise 220',
    'Bajaj Avenger Street 160',
    'Bajaj Platina 100',
    'Bajaj Platina 110',
    'Bajaj Platina 110 H Gear',
    'Bajaj Dominar 400',
    'Bajaj CT110',
    'Bajaj CT100',
    'Hero Splendor Plus',
    'Hero HF Deluxe',
    'Hero Passion XTEC',
    'Hero XPulse 200 4 V',
    'Hero Super Splendor',
    'Hero Glamour',
    'Hero Karizma XMR',
    'Hero Splendor Plus XTEC',
    'Hero Xtreme 160R',
    'Hero Passion Plus',
    'Hero Glamour XTEC',
    'Hero Xtreme 160R 4V',
    'Hero HF 100',
    'Hero Super Splendor XTEC',
    'Hero Xtreme 200S 4V',
    'Hero XPulse 200T 4V',
    'Mahindra Centuro',
    'Mahindra Gusto 110',
    'Mahindra Gusto 125',
    'Mahindra Mojo',
    'Ola S1 Pro',
    'Ola S1 Air',
    'Ola S1 X',
    'Royal Enfield Classic 350',
    'Royal Enfield Hunter 350',
    'Royal Enfield Bullet 350',
    'Royal Enfield Continental GT 650',
    'Royal Enfield Himalayan',
    'Royal Enfield Meteor 350',
    'Royal Enfield Interceptor 650',
    'Royal Enfield Super Meteor 650',
    'Royal Enfield Scram 411',
    'TVS Raider 125',
    'TVS Apache RTR 160',
    'TVS Apache RTR 310',
    'TVS Ntorq 125',
    'TVS Ronin',
    'TVS Apache RTR 160 4V',
    'TVS Jupiter',
    'TVS Apache RR310',
    'TVS Jupiter 125',
    'TVS Sport',
    'TVS Apache RTR 200 4V',
    'TVS iQube',
    'TVS Radeon',
    'TVS XL100 Heavy Duty',
    'TVS Star City Plus',
    'TVS Scooty Pep Plus',
    'TVS Apache RTR 180',
    'TVS XL100 Comfort',
    'TVS Scooty Zest 110',
    'TVS X',
  ];

  var selectedType = "".obs;
  List typeList = [
    'Motorcycles with without gear',
    'Motorcycles with gear',
  ];

/*  final Map<String, List<String>> companyModelsMap = {
    'Bajaj Bikes': [
      'Bajaj Pulsar RS200',
      'Bajaj Pulsar NS 200',
      'Bajaj Pulsar NS 160',
      'Bajaj Pulsar 220 F',
      'Bajaj Pulsar 150',
      'Bajaj Pulsar 150 Twin Disc',
      'Bajaj Pulsar 150 Neon',
      'Bajaj Pulsar 180F Neon',
      'Bajaj Avenger Cruise 220',
      'Bajaj Avenger Street 160',
      'Bajaj Platina 100',
      'Bajaj Platina 110',
      'Bajaj Platina 110 H Gear',
      'Bajaj Dominar 400',
      'Bajaj CT110',
      'Bajaj CT100',
    ],
    'Hero Motocorp': [
      'Hero Splendor Plus',
      'Hero HF Deluxe',
      'Hero Passion XTEC',
      'Hero XPulse 200 4 V',
      'Hero Super Splendor',
      'Hero Glamour',
      'Hero Karizma XMR',
      'Hero Splendor Plus XTEC',
      'Hero Xtreme 160R',
      'Hero Passion Plus',
      'Hero Glamour XTEC',
      'Hero Xtreme 160R 4V',
      'Hero HF 100',
      'Hero Super Splendor XTEC',
      'Hero Xtreme 200S 4V',
      'Hero XPulse 200T 4V',
    ],
    'Mahindra Two Wheelers': [
      'Mahindra Centuro',
      'Mahindra Gusto 110',
      'Mahindra Gusto 125',
      'Mahindra Mojo',
    ],
    'Ola Electric': [
      'Ola S1 Pro',
      'Ola S1 Air',
      'Ola S1 X',
    ],
    'Royal Enfield': [
      'Royal Enfield Classic 350',
      'Royal Enfield Hunter 350',
      'Royal Enfield Bullet 350',
      'Royal Enfield Continental GT 650',
      'Royal Enfield Himalayan',
      'Royal Enfield Meteor 350',
      'Royal Enfield Interceptor 650',
      'Royal Enfield Super Meteor 650',
      'Royal Enfield Scram 411',
    ],
    'TVS Motor': [
      'TVS Raider 125',
      'TVS Apache RTR 160',
      'TVS Apache RTR 310',
      'TVS Ntorq 125',
      'TVS Ronin',
      'TVS Apache RTR 160 4V',
      'TVS Jupiter',
      'TVS Apache RR310',
      'TVS Jupiter 125',
      'TVS Sport',
      'TVS Apache RTR 200 4V',
      'TVS iQube',
      'TVS Radeon',
      'TVS XL100 Heavy Duty',
      'TVS Star City Plus',
      'TVS Scooty Pep Plus',
      'TVS Apache RTR 180',
      'TVS XL100 Comfort',
      'TVS Scooty Zest 110',
      'TVS X',
    ],
  };

  List<String> get companies => companyModelsMap.keys.toList();

  List<String> get models {
    print('--------------------- ${companyModelsMap[selectedCompany.value]} ');
    return selectedCompany.isNotEmpty
        ? companyModelsMap[selectedCompany.value] ?? []
        : [];
  }*/

  late TextEditingController registrationNumberController;
  var registrationNumber = '';

  final GlobalKey<FormState> registerNumberKey = GlobalKey<FormState>();

  String? validateRegistrationNumber(String value) {
    if (value.isEmpty) {
      return Utils.enterRegistrationNumber;
    }
    return null;
  }

  void toggleTwoWheeler() {
    isTwoWheelerSelected.toggle();
    isFourWheelerSelected.value = false;
  }

  void toggleFourWheeler() {
    isFourWheelerSelected.toggle();
    isTwoWheelerSelected.value = false;
  }

  void setLoading(bool value) {
    isLoading.value = value;
  }

  @override
  void onInit() {
    super.onInit();
    registrationNumberController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    // nameController.dispose();
    // emailController.dispose();
    // passwordController.dispose();
  }

  void checkSave() {
    setLoading(false);
    Get.back();

    final isValid = registerNumberKey.currentState!.validate();
    //Get.until((route) => Get.currentRoute == AppPages.LOGIN);
    /*checkUser(emailController.text, passwordController.text).then((auth) {
      if (auth) {
        Get.snackbar('Login', 'Login successfully',
            backgroundColor: ThemeColor.white);
        Future.delayed(const Duration(milliseconds: 2000), () {
          Get.offAllNamed(AppPages.HOME);
        });
      } else {
        Get.snackbar('Login', 'Invalid email or password',
            backgroundColor: ThemeColor.secondaryRed);
      }
      passwordController.clear();
    });*/
  }
}
