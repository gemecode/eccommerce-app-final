import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/data/datasource/remote/forgetpassword/verifycodeforgetpassword.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  goToResetPassword(String verifycode);

  String? email;

  VerifyCodeForgetPasswordData verifyCodeForgetPasswordData = VerifyCodeForgetPasswordData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;

}

class VerifyCodeControllerImp extends VerifyCodeController {


  @override
  goToResetPassword(verifycode) async {

    print("valid");
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeForgetPasswordData.postData(email!, verifycode);
    print("=============================================== Controller $response ");
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] =="success"){
        Get.offAllNamed(AppRoute.resetPassword, arguments: {"email" : email});
      }else{
        Get.defaultDialog(title: "199".tr, middleText: "202".tr);
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }


}
