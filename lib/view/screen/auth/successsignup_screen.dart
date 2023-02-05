import 'package:final_project/controller/auth/successsignup_controller.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/function/alertexit.dart';
import 'package:final_project/view/widget/auth/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text("48".tr, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      ),
      backgroundColor: AppColor.backgroundColor,
      body: GetBuilder<SuccessSignUpControllerImp>(
        init: SuccessSignUpControllerImp(),
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
                Text("49".tr, style: Theme.of(context).textTheme.headlineLarge),
                const SizedBox(height: 20,),
                Text("50".tr, style: Theme.of(context).textTheme.headlineSmall),

                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: CustomButtonAuth(
                    text: "51".tr,
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
