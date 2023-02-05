import 'package:final_project/controller/forgetpassword/forgetpassword_controller.dart';
import 'package:final_project/core/class/handlingdataview.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/function/validator.dart';
import 'package:final_project/view/widget/auth/custom_button_auth.dart';
import 'package:final_project/view/widget/auth/custom_textform_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);


  // final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text("14".tr,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        body: Column(
          children: [
            const Spacer(flex: 1),
            Expanded(
              flex: 2,
              child: GetBuilder<ForgetPasswordControllerImp>(
                init: ForgetPasswordControllerImp(),
                builder: (controller) => HandlingDataRequest(
                  statusRequest: controller.statusRequest,
                  widget: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                    child: Form(
                      key: controller.formState,
                      child: ListView(
                        children: [
                          const SizedBox(height: 20),
                          Text("15".tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                              textAlign: TextAlign.center),
                          const SizedBox(height: 20),
                          Text("16".tr,
                              textAlign: TextAlign.center),
                          const SizedBox(height: 20),
                          CustomTextFormAuth(
                            myController: controller.email,
                            validate: (value) {
                              return validator(value!, 2, 25, "email", "");
                            },
                            hint: "17".tr,
                            icon: Icons.email,
                            suffix: null,
                            obscureText: false,
                          ),
                          const SizedBox(height: 20),
                          CustomButtonAuth(
                            text: "18".tr,
                            onPressed: () {
                              controller.checkEmail();
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
            const Spacer(flex: 1)
          ],
        ));
  }
}
