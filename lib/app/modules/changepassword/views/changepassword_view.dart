import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/color_themes.dart';
import '../../../utils/text_themes.dart';
import '../../../utils/utils.dart';
import '../controllers/changepassword_controller.dart';

final ChangePasswordController controller = Get.put(ChangePasswordController());

class ChangePasswordView extends GetView<ChangePasswordController> {
  const ChangePasswordView({Key? key}) : super(key: key);

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
                        Utils.changePasswordText,
                        textAlign: TextAlign.start,
                        style: mandisaRegular(
                            color: ThemeColor.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
                // Current Password Field
                Obx(
                  () {
                    return Padding(
                      padding:
                          const EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 10.0),
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: controller.currentPasswordController,
                        onSaved: (value) {
                          controller.currentPassword = value!;
                        },
                        validator: (value) =>
                            controller.validateCurrentPassword(value!),
                        obscureText: !controller.isCurrentPasswordVisible,
                        //onChanged: controller.validatePassword,
                        /*validator: MultiValidator([
                                RequiredValidator(
                                    errorText: controller.passwordError.value),
                                MinLengthValidator(8,
                                    errorText: controller.passwordError.value),
                              ]),*/
                        decoration: InputDecoration(
                          prefixIcon: Image.asset(Utils.passwordImage),
                          hintText: Utils.enterPasswordHint,
                          labelText: Utils.currentPasswordLabel,
                          suffixIcon: IconButton(
                            icon: Icon(
                              controller.isCurrentPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              controller.toggleCurrentPasswordVisibility();
                            },
                          ),
                          errorStyle: mandisaRegular(
                              color: ThemeColor.secondaryRed,
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.all(
                              Radius.circular(9.0),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                // New Password Field
                Obx(
                  () {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: controller.newPasswordController,
                        onSaved: (value) {
                          controller.newPassword = value!;
                        },
                        validator: (value) =>
                            controller.validateNewPassword(value!),
                        obscureText: !controller.isNewPasswordVisible,
                        //onChanged: controller.validatePassword,
                        /*validator: MultiValidator([
                                RequiredValidator(
                                    errorText: controller.passwordError.value),
                                MinLengthValidator(8,
                                    errorText: controller.passwordError.value),
                              ]),*/
                        decoration: InputDecoration(
                          prefixIcon: Image.asset(Utils.passwordImage),
                          hintText: Utils.enterPasswordHint,
                          labelText: Utils.newPasswordLabel,
                          suffixIcon: IconButton(
                            icon: Icon(
                              controller.isNewPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              controller.toggleNewPasswordVisibility();
                            },
                          ),
                          errorStyle: mandisaRegular(
                              color: ThemeColor.secondaryRed,
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.all(
                              Radius.circular(9.0),
                            ),
                          ),
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
                        controller: controller.confirmPasswordController,
                        onSaved: (value) {
                          controller.confirmPassword = value!;
                        },
                        validator: (value) =>
                            controller.validateConfirmPassword(value!),
                        obscureText: !controller.isConfirmPasswordVisible,
                        //onChanged: controller.validatePassword,
                        /*validator: MultiValidator([
                                RequiredValidator(
                                    errorText: controller.passwordError.value),
                                MinLengthValidator(8,
                                    errorText: controller.passwordError.value),
                              ]),*/
                        decoration: InputDecoration(
                          prefixIcon: Image.asset(Utils.passwordImage),
                          hintText: Utils.enterPasswordHint,
                          labelText: Utils.confirmPasswordLabel,
                          suffixIcon: IconButton(
                            icon: Icon(
                              controller.isConfirmPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              controller.toggleConfirmPasswordVisibility();
                            },
                          ),
                          errorStyle: mandisaRegular(
                              color: ThemeColor.secondaryRed,
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.all(
                              Radius.circular(9.0),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                // Login Button
                Obx(
                  () {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 80.0, 30.0, 5.0),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      Utils.loadingText,
                                      style: mandisaRegular(
                                          color: ThemeColor.white,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12.0),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                      width: 20.0,
                                      child: CircularProgressIndicator(
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
    );
  }
}
