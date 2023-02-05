import 'package:final_project/controller/forgetpassword/resetpassword_controller.dart';
import 'package:final_project/core/class/handlingdataview.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/function/alertexit.dart';
import 'package:final_project/core/function/validator.dart';
import 'package:final_project/view/widget/auth/custom_button_auth.dart';
import 'package:final_project/view/widget/auth/custom_text_signup_or_signin.dart';
import 'package:final_project/view/widget/auth/custom_textform_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text("22".tr,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        body: Column(
          children: [
            const Spacer(flex: 1),
            Expanded(
              flex: 2,
              child: GetBuilder<ResetPasswordControllerImp>(
                init: ResetPasswordControllerImp(),
                builder: (controller) => HandlingDataRequest(
                  statusRequest: controller.statusRequest,
                  widget: WillPopScope(
                    onWillPop: alertExitApp,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                      child: Form(
                        key: controller.formState,
                        child: ListView(
                          children: [
                            Text("23".tr,
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                                textAlign: TextAlign.center),
                            const SizedBox(height: 20),
                            Text("24".tr,
                                textAlign: TextAlign.center),
                            const SizedBox(height: 20),

                            CustomTextFormAuth(
                              myController: controller.password,
                              validate: (value) {
                                controller.compare = value!;
                                return validator(value, 3, 30, "password", "");
                              },
                              hint: "25".tr,
                              icon: Icons.lock,
                              suffix: controller.suffixIconOne(),
                              obscureText: controller.isSecurePassword,
                            ),

                            const SizedBox(height: 20),

                            CustomTextFormAuth(
                              myController: controller.rePassword,
                              validate: (value) {
                                return validator(value!, 3, 30, "confirmPassword", controller.compare);
                              },
                              hint: "26".tr,
                              icon: Icons.lock,
                              suffix: controller.suffixIconTwo(),
                              obscureText: controller.isSecureConfirmPassword,
                            ),

                            const SizedBox(height: 20),
                            CustomButtonAuth(
                              text: "27".tr,
                              onPressed: () {
                                controller.resetPassword();
                              },
                            ),
                            const SizedBox(height: 20),

                            CustomTextSignUpOrSignIn(
                              textOne: "${"28".tr} ",
                              textTwo: "29".tr,
                              onTap: (){
                                controller.backToLogin();
                              },
                            ),

                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // const Spacer(flex: 1)
          ],
        ));
  }
}
