import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  backToPageLogin();

}

class SuccessSignUpControllerImp extends SuccessSignUpController {




  @override
  backToPageLogin() {
    Get.offAllNamed(AppRoute.login);
  }




}
