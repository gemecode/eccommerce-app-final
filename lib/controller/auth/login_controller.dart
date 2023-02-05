import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/core/serves/services.dart';
import 'package:final_project/data/datasource/remote/auth/login_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
  goToAdminHome();
  goToHomePage();
  Widget suffixIcon();
  changeIsAdmin(bool value);
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;

  MyServices myServices = Get.find();

  final GlobalKey<FormState> formState = GlobalKey<FormState>();

  LoginData loginData = LoginData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;



  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

@override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  login() async {
    if(formState.currentState!.validate()){
      print("valid");
      statusRequest = StatusRequest.loading;
      update();

      if(isAdmin==false){
        var response = await loginData.postData(email.text, password.text);
        print("=================================== Controller $response ");
        statusRequest = handlingData(response);
        if(StatusRequest.success == statusRequest){
          if(response['status'] =="success"){
            // data.addAll(response['data']);
            if (response['data']['users_approve'] == 1){
              myServices.sharedPreferences.setInt("id", response['data']['users_id']);
              myServices.sharedPreferences.setString("username", response['data']['users_name']);
              myServices.sharedPreferences.setString("email", response['data']['users_email']);
              myServices.sharedPreferences.setString("phone", response['data']['users_phone']);
              myServices.sharedPreferences.setString("step", "2");
              goToHomePage();
            }else{
              Get.toNamed(AppRoute.verifyCodeSignUp, arguments: {"email" : email.text});
            }
          }else{
            Get.defaultDialog(title: "199".tr, middleText: "200".tr);
            statusRequest = StatusRequest.failure;
          }
        }
        update();
      }

      else if(isAdmin==true){
        goToAdminHome();
        update();
      }

    }else{
      print("not valid");
      null;
    }


  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  goToAdminHome() {
    String adminEmail = "admin@adm.com";
    String adminPassword = "admin";
    if(email.text == adminEmail && password.text == adminPassword){
      Get.toNamed(AppRoute.adminScreen);
      email.text="";
      password.text="";
      statusRequest = StatusRequest.failure;
    }else{
      Get.defaultDialog(title: "199".tr, middleText: "212".tr);
      statusRequest = StatusRequest.failure;
    }
  }

  @override
  goToHomePage() {
    Get.toNamed(AppRoute.homePage);
  }



  bool isSecurePassword = true;
  @override
  Widget suffixIcon() {
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


  bool isAdmin = false;
  @override
  changeIsAdmin(bool value) {
    isAdmin = value;
    update();
  }


}
