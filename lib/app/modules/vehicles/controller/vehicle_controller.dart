import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/modules/vehicles/model/company_item_model.dart';
import 'package:vehicle_washing_flutter/app/modules/vehicles/model/company_item_model.dart';
import 'package:vehicle_washing_flutter/app/modules/vehicles/model/company_item_model.dart';
import 'package:vehicle_washing_flutter/app/modules/vehicles/model/company_item_model.dart';

class VehicleController extends GetxController {
  var isLoading = false.obs;
  var isTwoWheelerSelected = false.obs;
  var isFourWheelerSelected = false.obs;

  List<String> dropdownValues = ['Option 1', 'Option 2', 'Option 3'];
  Rx<List<String>> selectedOptionList = Rx<List<String>>([]);
  var selectedValue = ''.obs;

  List<CompanyItemModel> companyDataList = [
    CompanyItemModel("Option 1"),
    CompanyItemModel("Option 2"),
    CompanyItemModel("Option 3"),
  ];

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

  void checkLogOut() {
    setLoading(false);
    Get.back();
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
