import 'package:final_project/controller/auth/login_controller.dart';
import 'package:final_project/core/class/handlingdataview.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/function/alertexit.dart';
import 'package:final_project/core/function/validator.dart';
import 'package:final_project/view/widget/auth/custom_admin_user_signing.dart';
import 'package:final_project/view/widget/auth/custom_button_auth.dart';
import 'package:final_project/view/widget/auth/custom_logo_auth.dart';
import 'package:final_project/view/widget/auth/custom_text_signup_or_signin.dart';
import 'package:final_project/view/widget/auth/custom_textform_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // LoginControllerImp control = Get.put(LoginControllerImp());
    return Scaffold(
      // backgroundColor: AppColor.backgroundColor,
      backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: AppColor.backgroundColor,
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text("4".tr, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        // title: Text("4".tr, style: Theme.of(context).textTheme.displayLarge),
      ),

      body: GetBuilder<LoginControllerImp>(
          init: LoginControllerImp(),
          builder: (controller) =>
              HandlingDataRequest(statusRequest: controller.statusRequest,
            widget: WillPopScope(
              onWillPop: alertExitApp,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 100),
                child: Form(
                  key: controller.formState,
                  child: ListView(
                    children: [
                      // const SizedBox(height: 10.0,),
                      const CustomLogoAuth(),
                      const SizedBox(height: 100.0,),
                      Text("5".tr,
                          style: const TextStyle(fontSize: 14),
                          textAlign: TextAlign.center),
                      const SizedBox(height: 30.0),
                      CustomTextFormAuth(
                        myController: controller.email,
                        validate: (value) {
                          return validator(value!, 5, 100, "email","");
                        },
                        hint: "6".tr,
                        icon: Icons.email,
                        suffix: null,
                        obscureText: false,
                      ),
                      const SizedBox(height: 20.0),
                      CustomTextFormAuth(
                        myController: controller.password,
                        validate: (value) {
                          return validator(value!, 3, 30, "password", "");
                        },
                        hint: "7".tr,
                        icon: Icons.lock,
                        suffix: controller.suffixIcon(),
                        obscureText: controller.isSecurePassword,
                      ),
                      const SizedBox(height: 20.0),

                      InkWell(
                        onTap: (){
                          controller.goToForgetPassword();
                        },
                        child: Text(
                          "8".tr,
                          style: const TextStyle(fontSize: 16),
                          textAlign: TextAlign.end,
                        ),
                      ),

                      const SizedBox(height: 20.0),
                      CustomButtonAuth(
                          text: "9".tr,
                          onPressed: () {
                            controller.login();
                          }
                      ),
                      const SizedBox(height: 20.0),
                      CustomTextSignUpOrSignIn(
                        textOne: "10".tr,
                        textTwo: "11".tr,
                        onTap: (){
                          controller.goToSignUp();
                        },
                      ),
                      CustomAdminUserSigning(
                        changeAdminUserColorBool: controller.isAdmin,
                        onTapAdminIsTrue: (){
                          controller.changeIsAdmin(true);
                        },
                        onTapAdminIsFalse: (){
                          controller.changeIsAdmin(false);
                        },
                        textAdmin: "12".tr,
                        textUser: "13".tr,
                      ),
                      const SizedBox(height: 20.0),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ),
    );
  }
}
