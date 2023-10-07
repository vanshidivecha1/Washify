import 'package:get/get.dart';

class SlotAndTimeController extends GetxController {
  var isLoading = false.obs;

  var isTimeOneSelected = false.obs;
  var isTimeTwoSelected = false.obs;
  var isTimeThreeSelected = false.obs;
  var isTimeFourSelected = false.obs;
  var isTimeFiveSelected = false.obs;
  var isTimeSixSelected = false.obs;
  var isTimeSevenSelected = false.obs;
  var isTimeEightSelected = false.obs;

  void toggleTimeOne() {
    isTimeOneSelected.toggle();
    isTimeTwoSelected.value = false;
    isTimeThreeSelected.value = false;
    isTimeFourSelected.value = false;
    isTimeFiveSelected.value = false;
    isTimeSixSelected.value = false;
    isTimeSevenSelected.value = false;
    isTimeEightSelected.value = false;
  }

  void toggleTimeTwo() {
    isTimeTwoSelected.toggle();
    isTimeOneSelected.value = false;
    isTimeThreeSelected.value = false;
    isTimeFourSelected.value = false;
    isTimeFiveSelected.value = false;
    isTimeSixSelected.value = false;
    isTimeSevenSelected.value = false;
    isTimeEightSelected.value = false;
  }

  void toggleTimeThree() {
    isTimeThreeSelected.toggle();
    isTimeOneSelected.value = false;
    isTimeTwoSelected.value = false;
    isTimeFourSelected.value = false;
    isTimeFiveSelected.value = false;
    isTimeSixSelected.value = false;
    isTimeSevenSelected.value = false;
    isTimeEightSelected.value = false;
  }

  void toggleTimeFour() {
    isTimeFourSelected.toggle();
    isTimeOneSelected.value = false;
    isTimeThreeSelected.value = false;
    isTimeTwoSelected.value = false;
    isTimeFiveSelected.value = false;
    isTimeSixSelected.value = false;
    isTimeSevenSelected.value = false;
    isTimeEightSelected.value = false;
  }

  void toggleTimeFive() {
    isTimeFiveSelected.toggle();
    isTimeOneSelected.value = false;
    isTimeTwoSelected.value = false;
    isTimeThreeSelected.value = false;
    isTimeFourSelected.value = false;
    isTimeSixSelected.value = false;
    isTimeSevenSelected.value = false;
    isTimeEightSelected.value = false;
  }

  void toggleTimeSix() {
    isTimeSixSelected.toggle();
    isTimeOneSelected.value = false;
    isTimeTwoSelected.value = false;
    isTimeThreeSelected.value = false;
    isTimeFourSelected.value = false;
    isTimeFiveSelected.value = false;
    isTimeSevenSelected.value = false;
    isTimeEightSelected.value = false;
  }

  void toggleTimeSeven() {
    isTimeSevenSelected.toggle();
    isTimeOneSelected.value = false;
    isTimeTwoSelected.value = false;
    isTimeThreeSelected.value = false;
    isTimeFourSelected.value = false;
    isTimeFiveSelected.value = false;
    isTimeSixSelected.value = false;
    isTimeEightSelected.value = false;
  }

  void toggleTimeEight() {
    isTimeEightSelected.toggle();
    isTimeOneSelected.value = false;
    isTimeTwoSelected.value = false;
    isTimeThreeSelected.value = false;
    isTimeFourSelected.value = false;
    isTimeFiveSelected.value = false;
    isTimeSixSelected.value = false;
    isTimeSevenSelected.value = false;
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

  void checkSave() {
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
