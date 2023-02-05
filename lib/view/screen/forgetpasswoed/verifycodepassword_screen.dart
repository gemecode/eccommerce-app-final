import 'package:final_project/controller/forgetpassword/verifycode_controller.dart';
import 'package:final_project/core/class/handlingdataview.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text("19".tr,
              style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        body: Column(
          children: [
            const Spacer(flex: 1),
            Expanded(
              flex: 1,
              child: GetBuilder<VerifyCodeControllerImp>(
                init: VerifyCodeControllerImp(),
                builder: (controller) => HandlingDataRequest(
                  statusRequest: controller.statusRequest,
                  widget: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                    child: ListView(
                      children: [
                        const SizedBox(height: 20),
                        Text("20".tr,
                            style:  const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                            textAlign: TextAlign.center),
                        const SizedBox(height: 20),
                        Text("${"21".tr} \n${controller.email}",
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
                            controller.goToResetPassword(verificationCode);
                          }, // end onSubmit
                        ),

                        const SizedBox(height: 20),
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
