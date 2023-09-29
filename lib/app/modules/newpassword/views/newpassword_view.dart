import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicle_washing_flutter/app/routes/app_pages.dart';

import '../../../utils/color_themes.dart';
import '../../../utils/text_themes.dart';
import '../../../utils/utils.dart';
import '../controllers/newpassword_controller.dart';

final NewPasswordController controller = Get.put(NewPasswordController());

class NewPasswordView extends GetView<NewPasswordController> {
  const NewPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: () async {
        Get.offNamed(AppPages.VERIFICATION);
        return true;
      },
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: width,
              height: height,
              child: Image.asset(
                Utils.backgroundImage,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 100,
              child: Align(
                alignment: Alignment.topCenter,
                child: Center(
                  child: Image.asset(
                    Utils.logoNameImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Center(
                  child: Container(
                    width: width,
                    height: height / 2.2,
                    decoration: const BoxDecoration(
                      color: ThemeColor.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Form(
                      key: controller.newPasswordFormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
                            child: Text(
                              Utils.newPasswordText,
                              textAlign: TextAlign.start,
                              style: mandisaRegular(
                                  color: ThemeColor.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26.0),
                            ),
                          ),
                          // Password Field
                          Obx(
                            () {
                              return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  controller: controller.passwordController,
                                  onSaved: (value) {
                                    controller.password = value!;
                                  },
                                  validator: (value) =>
                                      controller.validatePassword(value!),
                                  obscureText: !controller.isPasswordVisible,
                                  //onChanged: controller.validatePassword,
                                  /*validator: MultiValidator([
                                RequiredValidator(
                                    errorText: controller.passwordError.value),
                                MinLengthValidator(8,
                                    errorText: controller.passwordError.value),
                              ]),*/
                                  decoration: InputDecoration(
                                    prefixIcon:
                                        Image.asset(Utils.passwordImage),
                                    hintText: Utils.enterPasswordHint,
                                    labelText: Utils.enterPasswordLabel,
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        controller.isPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                      onPressed: () {
                                        controller.togglePasswordVisibility();
                                      },
                                    ),
                                    errorStyle: mandisaRegular(
                                        color: ThemeColor.secondaryRed,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14.0),
                                    border: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.red),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(9.0))),
                                  ),
                                ),
                              );
                            },
                          ),
                          // Confirm Password Field
                          Obx(
                            () {
                              return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  controller:
                                      controller.confirmPasswordController,
                                  onSaved: (value) {
                                    controller.confirmPassword = value!;
                                  },
                                  validator: (value) =>
                                      controller.validatePassword(value!),
                                  obscureText:
                                      !controller.isConfirmPasswordVisible,
                                  //onChanged: controller.validatePassword,
                                  /*validator: MultiValidator([
                                RequiredValidator(
                                    errorText: controller.passwordError.value),
                                MinLengthValidator(8,
                                    errorText: controller.passwordError.value),
                              ]),*/
                                  decoration: InputDecoration(
                                    prefixIcon:
                                        Image.asset(Utils.passwordImage),
                                    hintText: Utils.enterPasswordHint,
                                    labelText: Utils.enterPasswordLabel,
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        controller.isConfirmPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                      onPressed: () {
                                        controller
                                            .toggleConfirmPasswordVisibility();
                                      },
                                    ),
                                    errorStyle: mandisaRegular(
                                        color: ThemeColor.secondaryRed,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14.0),
                                    border: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.red),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(9.0))),
                                  ),
                                ),
                              );
                            },
                          ),
                          // Login Button
                          Obx(
                            () {
                              return Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    30.0, 30.0, 30.0, 5.0),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  child: ElevatedButton(
                                    /* onPressed: controller.isValid
                                    ? () => Get.toNamed(AppPages.HOME)
                                    : null,*/
                                    onPressed: () async {
                                      /*if (controller.loginInFormKey.currentState!
                                          .validate()) {
                                        controller.setLoading(true);
                                        await Future.delayed(
                                            const Duration(milliseconds: 1000));
                                        controller.checkLogin();
                                      }*/
                                      controller.checkLogin();
                                    },
                                    style: Utils.elevatedButtonStyle,
                                    child: controller.isLoading.isTrue
                                        ? Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                Utils.loadingText,
                                                style: mandisaRegular(
                                                    color: ThemeColor.white,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 12.0),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const SizedBox(
                                                height: 20.0,
                                                width: 20.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: Colors.white,
                                                  strokeWidth: 2.0,
                                                ),
                                              ),
                                            ],
                                          )
                                        : Text(
                                            Utils.saveText,
                                            style: mandisaRegular(
                                                color: ThemeColor.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.0),
                                          ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
