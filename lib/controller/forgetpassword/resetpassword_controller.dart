import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/data/datasource/remote/forgetpassword/resetpassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
  backToLogin();

  Widget suffixIconOne();
  Widget suffixIconTwo();
}

class ResetPasswordControllerImp extends ResetPasswordController {

  late TextEditingController password;
  late TextEditingController rePassword;
  late String compare;
  final GlobalKey<FormState> formState = GlobalKey<FormState>();


  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  String? email;



  @override
  void onInit() {
    email = Get.arguments["email"];
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }


  @override
  resetPassword() async {
    if(formState.currentState!.validate()){
      print("valid");
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.postData(email!, password.text);
      print("========================== Controller $response ");
      statusRequest = handlingData(response);
      if(StatusRequest.success == statusRequest){
        if(response['status'] =="success"){
          goToSuccessResetPassword();
        }else{
          Get.defaultDialog(title: "199".tr, middleText: "204".tr);
          statusRequest = StatusRequest.failure;
        }
      }
      update();

    }else{
      print("not valid");
      null;
    }
  }


  @override
  goToSuccessResetPassword() {
    Get.offAllNamed(AppRoute.successResetPassword);
  }

  @override
  backToLogin() {
    Get.offAllNamed(AppRoute.login);
  }


  bool isSecurePassword = true;
  @override
  Widget suffixIconOne() {
    return IconButton(
      onPressed: () {
        isSecurePassword = !isSecurePassword;
        update();
      },
      icon: isSecurePassword
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
      color: AppColor.primaryColor,
    );
  }

  bool isSecureConfirmPassword = true;
  @override
  Widget suffixIconTwo() {
    return IconButton(
      onPressed: () {
        isSecureConfirmPassword = !isSecureConfirmPassword;
        update();
      },
      icon: isSecureConfirmPassword
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
      color: AppColor.primaryColor,
    );
  }







}
