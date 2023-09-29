import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/modules/forgetpassword/views/forget_password_view.dart';
import 'package:vehicle_washing_flutter/app/modules/newpassword/bindings/newpassword_binding.dart';
import 'package:vehicle_washing_flutter/app/modules/newpassword/views/newpassword_view.dart';
import 'package:vehicle_washing_flutter/app/modules/signup/bindings/signup_binding.dart';
import 'package:vehicle_washing_flutter/app/modules/verification/bindings/verification_binding.dart';

import '../modules/forgetpassword/bindings/forget_password_binding.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/sidenavigator/bindings/sidenavigator_binding.dart';
import '../modules/sidenavigator/views/sidenavigator_view.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash/bindings/splash_bindings.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/verification/views/verification_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const SPLASH = Routes.SPLASH;
  static const HOME = Routes.HOME;
  static const LOGIN = Routes.LOGIN;
  static const SIGNUP = Routes.SIGNUP;
  static const FORGET_PASSWORD = Routes.FORGET_PASSWORD;
  static const VERIFICATION = Routes.VERIFICATION;
  static const NEW_PASSWORD = Routes.NEW_PASSWORD;
  static const SIDE_NAVIGATOR = Routes.SIDE_NAVIGATOR;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORD,
      page: () => const ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION,
      page: () => const VerificationView(),
      binding: VerificationBinding(),
    ),
    GetPage(
      name: _Paths.NEW_PASSWORD,
      page: () => const NewPasswordView(),
      binding: NewPasswordBinding(),
    ),
    GetPage(
      name: _Paths.SIDE_NAVIGATOR,
      page: () => const SideNavigatorView(),
      binding: SideNavigatorBinding(),
    ),
  ];
}
