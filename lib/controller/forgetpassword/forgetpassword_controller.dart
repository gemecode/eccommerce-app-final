import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/data/datasource/remote/forgetpassword/checkemail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  goToVerifyCode();

}

class ForgetPasswordControllerImp extends ForgetPasswordController {

  final GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;

  CheckEmailData checkEmailData = CheckEmailData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;


  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }


  @override
  checkEmail() async {
    if(formState.currentState!.validate()){

      print("valid");
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkEmailData.postData(email.text);
      print("========================== Controller $response ");
      statusRequest = handlingData(response);
      if(StatusRequest.success == statusRequest){
        if(response['status'] =="success"){
          goToVerifyCode();
        }else{
          Get.defaultDialog(title: "199".tr, middleText: "203".tr);
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
  goToVerifyCode() {
    Get.toNamed(AppRoute.verifyCode, arguments: {"email" : email.text});
  }





}
