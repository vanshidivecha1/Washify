import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/color_themes.dart';
import '../../../utils/text_themes.dart';
import '../../../utils/utils.dart';
import '../controllers/forget_password_controller.dart';

final ForgetPasswordController controller = Get.put(ForgetPasswordController());

class ForgetPasswordView extends GetView<ForgetPasswordController> {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
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
                    key: controller.signUpFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                          child: Text(
                            Utils.forgetPasswordTitle,
                            textAlign: TextAlign.start,
                            style: mandisaRegular(
                                color: ThemeColor.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 26.0),
                          ),
                        ),
                        // Email Field
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            controller: controller.emailController,
                            onSaved: (value) {
                              controller.email = value!;
                            },
                            validator: (value) =>
                                controller.validateEmail(value!),
                            //onChanged: controller.validateEmail,
                            /* validator: MultiValidator([
                                  RequiredValidator(
                                      errorText: controller.emailError.value),
                                  EmailValidator(
                                      errorText: controller.emailError.value),
                                ]),*/
                            decoration: InputDecoration(
                                prefixIcon: Image.asset(Utils.emailImage),
                                hintText: Utils.enterEmailHint,
                                labelText: Utils.enterEmailLabel,
                                errorStyle: mandisaRegular(
                                    color: ThemeColor.secondaryRed,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.0),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(9.0)))),
                          ),
                        ),
                        // Login Button
                        Obx(
                          () {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  30.0, 60.0, 30.0, 5.0),
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
                                          Utils.sendText,
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
                        // Don't have an account
                        Align(
                          alignment: Alignment.center,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: Text(Utils.backToText),
                              ),
                              GestureDetector(
                                onTap: () => {
                                  //Get.toNamed(AppPages.LOGIN),
                                },
                                child: Container(
                                  margin: const EdgeInsets.fromLTRB(
                                      0.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    Utils.loginText,
                                    style: mandisaRegular(
                                      color: ThemeColor.mainColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                    ),
                                  ),
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
            ),
          ),
        ],
      ),
    );
  }
}
