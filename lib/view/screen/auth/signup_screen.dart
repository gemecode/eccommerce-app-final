import 'package:final_project/controller/auth/signup_controller.dart';
import 'package:final_project/core/class/handlingdataview.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/function/alertexit.dart';
import 'package:final_project/core/function/validator.dart';
import 'package:final_project/view/widget/auth/custom_button_auth.dart';
import 'package:final_project/view/widget/auth/custom_text_signup_or_signin.dart';
import 'package:final_project/view/widget/auth/custom_textform_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);


  // final GlobalKey<FormState> _globalKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // double height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text("34".tr, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      ),

      body: Column(
        children: [
          const Spacer(flex: 1,),
          Expanded(
            flex: 5,
            child: GetBuilder<SignUpControllerImp>(
              init: SignUpControllerImp(),
              builder:(controller) => HandlingDataRequest(
                statusRequest: controller.statusRequest,
                widget: WillPopScope(
                  onWillPop: alertExitApp,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                    child: Form(
                      key: controller.formState,
                      child: ListView(
                        children: [
                          const SizedBox(height: 20),
                          Text("35".tr,
                              textAlign: TextAlign.center),
                          const SizedBox(height: 20),

                          CustomTextFormAuth(
                            myController: controller.username,
                            validate: (value) {
                              return validator(value!, 2, 25, "username", "");
                            },
                            hint: "36".tr,
                            icon: Icons.perm_identity,
                            suffix: null,
                            obscureText: false,
                          ),

                          const SizedBox(height: 20),

                          CustomTextFormAuth(
                            myController: controller.email,
                            validate: (value) {
                              return validator(value!, 5, 100, "email", "");
                            },
                            hint: "37".tr,
                            icon: Icons.email,
                            suffix: null,
                            obscureText: false,
                          ),

                          const SizedBox(height: 20),

                          CustomTextFormAuth(
                            isNumber: true,
                            myController: controller.phone,
                            validate: (value) {
                              return validator(value!, 9, 20, "phone", "");
                            },
                            hint: "38".tr,
                            icon: Icons.phone_android,
                            suffix: null,
                            obscureText: false,
                          ),

                          const SizedBox(height: 20),

                          CustomTextFormAuth(
                            myController: controller.password,
                            validate: (value) {
                              controller.compare = value!;
                              return validator(value, 3, 30, "password", "");
                            },
                            hint: "39".tr,
                            icon: Icons.lock,
                            suffix: controller.suffixIconOne(),
                            obscureText: controller.isSecurePassword,
                          ),

                          const SizedBox(height: 20),

                          CustomTextFormAuth(
                            myController: controller.confirmPassword,
                            validate: (value) {
                              return validator(value!, 3, 30, "confirmPassword", controller.compare);
                            },
                            hint: "40".tr,
                            icon: Icons.lock,
                            suffix: controller.suffixIconTwo(),
                            obscureText: controller.isSecureConfirmPassword,
                          ),

                          const SizedBox(height: 20),


                          CustomButtonAuth(
                            text: "41".tr,
                            onPressed: () {
                              controller.signUp();

                              // if (_globalKey.currentState!.validate()) {
                              //   //do something
                              //   controller.signUp();
                              // }
                            },
                          ),

                          const SizedBox(height: 20),

                          CustomTextSignUpOrSignIn(
                            textOne: "42".tr,
                            textTwo: "43".tr,
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
          )
        ],
      )
    );
  }
}
