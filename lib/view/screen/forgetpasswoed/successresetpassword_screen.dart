import 'package:final_project/controller/forgetpassword/sucessresetpassword_controller.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/function/alertexit.dart';
import 'package:final_project/view/widget/auth/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text("30".tr, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      ),
      backgroundColor: AppColor.backgroundColor,
      body: GetBuilder<SuccessResetPasswordControllerImp>(
        init: SuccessResetPasswordControllerImp(),
        builder:(controller) => WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: Icon(Icons.check_circle_outline, size: 200, color: AppColor.primaryColor,),
                ),
                const SizedBox(height: 20,),
                Text("31".tr, style: Theme.of(context).textTheme.headlineLarge),
                const SizedBox(height: 20,),
                Text("32".tr, style: Theme.of(context).textTheme.headlineSmall),

                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: CustomButtonAuth(
                    text: "33".tr,
                    onPressed: () {
                      controller.backToPageLogin();
                    },
                  ),
                ),
                const SizedBox(height: 30,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
