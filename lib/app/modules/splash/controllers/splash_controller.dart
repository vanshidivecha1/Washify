import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  final _isSplashVisible = true.obs;

  // Getter to access the isSplashVisible variable
  bool get isSplashVisible => _isSplashVisible.value;

  void hideSplashScreen() {
    _isSplashVisible.value = false;
    Get.offAllNamed(AppPages.LOGIN); // Replace with the appropriate route
  }

  Future<bool> onBackButtonPressed() async {
    if (_isSplashVisible.value) {
      // If splash screen is visible, exit the app
      return true;
    } else {
      // If not on the splash screen, allow the default back navigation
      return false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    // Add a timer to automatically hide the splash screen (e.g., 2 seconds)
    Future.delayed(const Duration(seconds: 2), hideSplashScreen);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    // Save the splash screen state when the controller is closed (i.e., when the app is closed)
    GetStorage().write('is_splash_visible', _isSplashVisible.value);
    super.onClose();
  }
}
