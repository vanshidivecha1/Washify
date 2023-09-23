import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/color_themes.dart';
import '../../../utils/text_themes.dart';
import '../../../utils/utils.dart';
import '../controllers/login_controller.dart';

final LoginController controller = Get.put(LoginController());

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    late bool isLoading = false;

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
            top: 150,
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
                  height: height / 2.0,
                  decoration: const BoxDecoration(
                    color: ThemeColor.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Form(
                    key: controller.loginInFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            Utils.loginText,
                            textAlign: TextAlign.start,
                            style: mandisaRegular(
                                color: ThemeColor.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 26.0),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 30.0),
                          child: Text(
                            Utils.welcomeMsgText,
                            textAlign: TextAlign.start,
                            style: mandisaRegular(
                                color: ThemeColor.primaryGrey,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0),
                          ),
                        ),
                        // Email Field
                        Padding(
                            padding:
                                const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                            child: TextFormField(
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
                                        borderSide:
                                            BorderSide(color: Colors.red),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(9.0)))))),
                        // Password Field
                        Obx(
                          () {
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
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
                                  prefixIcon: Image.asset(Utils.passwordImage),
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
                                      borderSide: BorderSide(color: Colors.red),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(9.0))),
                                ),
                              ),
                            );
                          },
                        ),
                        // Forget password
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () => {},
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(
                                  0.0, 0.0, 10.0, 0.0),
                              child: Text(Utils.forgetPasswordText),
                            ),
                          ),
                        ),
                        // Login Button
                        Obx(
                          () {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  28.0, 20.0, 28.0, 5.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 40,
                                child: ElevatedButton(
                                  /* onPressed: controller.isValid
                                  ? () => Get.toNamed(AppPages.HOME)
                                  : null,*/
                                  onPressed: () async {
                                    //controller.checkLogin();
                                    if (controller.loginInFormKey.currentState!
                                        .validate()) {
                                      // Show a loading state (progress indicator)
                                      controller.setLoading(true);
                                      print(
                                          '------------------------ ${controller.isLoading}');
                                      // Simulate a delay (you can replace this with an actual API call)
                                      await Future.delayed(
                                          const Duration(seconds: 2));

                                      // After the delay, navigate to the new screen
                                      //Get.toNamed('/new_screen'); // Replace '/new_screen' with your actual route.
                                      controller.checkLogin();
                                    }
                                  },
                                  /*if (_formKey.currentState!.validate()) {
                                          setState(() {
                                            isLoading = true;
                                          });
                                          Utils.showToast(
                                              context, Utils.loggedSuccess);
                                          Timer(const Duration(seconds: 1),
                                              () => Utils.hideToast(context));

                                          Future.delayed(const Duration(seconds: 3),
                                              () {
                                            setState(() {
                                              isLoading = false;
                                            });
                                          });
                                          ApiClient.loginUser(
                                              emailController.text.toString(),
                                              passwordController.text.toString(),
                                              context);
                                        }
                                      },*/
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
                                          Utils.loginText,
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
                                child: Text(Utils.dontHaveAnAccountText),
                              ),
                              GestureDetector(
                                onTap: () => {},
                                child: Container(
                                  margin: const EdgeInsets.fromLTRB(
                                      0.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    Utils.signUpText,
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
