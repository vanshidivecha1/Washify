import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/modules/forgetpassword/views/forget_password_view.dart';
import 'package:vehicle_washing_flutter/app/modules/myservices/bindings/myservices_binding.dart';
import 'package:vehicle_washing_flutter/app/modules/myservices/views/myservices_view.dart';
import 'package:vehicle_washing_flutter/app/modules/newpassword/bindings/newpassword_binding.dart';
import 'package:vehicle_washing_flutter/app/modules/newpassword/views/newpassword_view.dart';
import 'package:vehicle_washing_flutter/app/modules/signup/bindings/signup_binding.dart';
import 'package:vehicle_washing_flutter/app/modules/slotandtime/bindings/slotandtime_binding.dart';
import 'package:vehicle_washing_flutter/app/modules/slotandtime/views/slotandtime_view.dart';
import 'package:vehicle_washing_flutter/app/modules/termsandconditions/bindings/termsandcondition_binding.dart';
import 'package:vehicle_washing_flutter/app/modules/termsandconditions/views/termsandcondition_view.dart';
import 'package:vehicle_washing_flutter/app/modules/verification/bindings/verification_binding.dart';

import '../modules/address/bindings/address_binding.dart';
import '../modules/address/views/address_views.dart';
import '../modules/changepassword/bindings/changepassword_binding.dart';
import '../modules/changepassword/views/changepassword_view.dart';
import '../modules/forgetpassword/bindings/forget_password_binding.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/logout/bindings/logout_binding.dart';
import '../modules/logout/views/logout_view.dart';
import '../modules/pastservices/bindings/pastservices_binding.dart';
import '../modules/pastservices/views/pastservices_view.dart';
import '../modules/sidenavigator/bindings/sidenavigator_binding.dart';
import '../modules/sidenavigator/views/sidenavigator_view.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash/bindings/splash_bindings.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/vehicles/bindings/vehicle_binding.dart';
import '../modules/vehicles/views/vehicle_view.dart';
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
  static const CHANGE_PASSWORD = Routes.CHANGE_PASSWORD;
  static const LOGOUT = Routes.LOGOUT;
  static const ADDRESS = Routes.ADDRESS;
  static const MY_SERVICES = Routes.MY_SERVICES;
  static const PAST_SERVICES = _Paths.PAST_SERVICES;
  static const VEHICLES = _Paths.VEHICLES;
  static const SLOT_AND_TIME = _Paths.SLOT_AND_TIME;
  static const TERMS_AND_CONDITION = _Paths.TERMS_AND_CONDITION;

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
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.MY_SERVICES,
      page: () => const MyServicesView(),
      binding: MyServicesBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.PAST_SERVICES,
      page: () => const PastServicesView(),
      binding: PastServicesBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.ADDRESS,
      page: () => const AddressView(),
      binding: AddressBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.VEHICLES,
      page: () => const VehicleView(),
      binding: VehicleBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.SLOT_AND_TIME,
      page: () => const SlotAndTimeView(),
      binding: SlotAndTimeBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.TERMS_AND_CONDITION,
      page: () => const TermsAndConditionView(),
      binding: TermsAndConditionBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => const ChangePasswordView(),
      binding: ChangePasswordBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.LOGOUT,
      page: () => const LogoutView(),
      binding: LogoutBinding(),
      transition: Transition.rightToLeft,
    ),
  ];
}
