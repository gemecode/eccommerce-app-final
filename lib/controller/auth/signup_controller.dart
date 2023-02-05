import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/data/datasource/remote/auth/signup_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  backToLogin();
  Widget suffixIconOne();
  Widget suffixIconTwo();

}

class SignUpControllerImp extends SignUpController {

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  late TextEditingController confirmPassword;
  late String compare;
  final GlobalKey<FormState> formState = GlobalKey<FormState>();

  StatusRequest statusRequest = StatusRequest.none;
  SignupData signupData = SignupData(Get.find());
  List data = [];


  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    confirmPassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    confirmPassword.dispose();
    super.dispose();
  }



  @override
  signUp() async {
    if(formState.currentState!.validate()){
      print("valid");
      statusRequest = StatusRequest.loading;
      update();
      print("##################################################################################");
      var response = await signupData.postData(
          username.text, password.text, email.text, phone.text);
      print("======================================================== Controller $response ");
      statusRequest = handlingData(response);
      if(StatusRequest.success == statusRequest){
        if(response['status'] =="success"){
          // data.addAll(response['data']);
          Get.toNamed(AppRoute.verifyCodeSignUp, arguments: {"email" : email.text});
        }else{
          Get.defaultDialog(title: "199".tr, middleText: "201".tr);
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
  backToLogin() {
    Get.offNamed(AppRoute.login);
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
