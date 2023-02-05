import 'package:final_project/controller/auth/verifycodesignup_controller.dart';
import 'package:final_project/core/class/handlingdataview.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCodeSignUpScreen extends StatelessWidget {
  const VerifyCodeSignUpScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text("44".tr,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        body: Column(
          children: [
            const Spacer(flex: 1),
            Expanded(
              flex: 1,
              child: GetBuilder<VerifyCodeSignUpControllerImp>(
                init: VerifyCodeSignUpControllerImp(),
                builder: (controller) => HandlingDataRequest(
                  statusRequest: controller.statusRequest,
                  widget: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                    child: ListView(
                      children: [
                        const SizedBox(height: 20),
                        Text("45".tr,
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                            textAlign: TextAlign.center),
                        const SizedBox(height: 20),
                        Text("${"46".tr}${controller.email}",
                            style: const TextStyle(fontSize: 19),
                            textAlign: TextAlign.center),
                        const SizedBox(height: 20),

                        OtpTextField(
                          fieldWidth: 50.0,
                          borderRadius: BorderRadius.circular(20.0),
                          numberOfFields: 5,
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorderColor: Colors.black,
                          focusedBorderColor: AppColor.primaryColor,
                          cursorColor: AppColor.primaryColor,

                          //set to true to show as box or false to show as dash
                          showFieldAsBox: true,
                          //runs when a code is typed in
                          onCodeChanged: (String code) {
                            //handle validation or checks here
                          },
                          //runs when every textfield is filled
                          onSubmit: (String verificationCode){
                            controller.goToSuccessSignUp(verificationCode);
                          }, // end onSubmit
                        ),

                        const SizedBox(height: 20),
                        InkWell(onTap: (){
                          controller.reSend();
                        }, child: Center(child: Text("47".tr, style: TextStyle(color: AppColor.primaryColor, fontSize: 20),)),)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(flex: 1)
          ],
        ));
  }
}
