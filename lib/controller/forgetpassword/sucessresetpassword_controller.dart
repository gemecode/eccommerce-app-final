import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {
  backToPageLogin();

}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {




  @override
  backToPageLogin() {
    Get.offAllNamed(AppRoute.login);
  }


}
