import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/constant/routes.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/data/datasource/remote/auth/verifycodesignup_data.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  goToSuccessSignUp(String verifyCodeSignup);

}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {

  VerifyCodeSignUpData verifyCodeSignUpData = VerifyCodeSignUpData(Get.find());

  StatusRequest statusRequest = StatusRequest.none;

  // late String verifyCode;
  String? email;

  @override
  goToSuccessSignUp(verifyCodeSignup) async {
    print("valid");
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeSignUpData.postData(email!, verifyCodeSignup);
    print("=============================================== Controller $response ");
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] =="success"){
        Get.offAllNamed(AppRoute.successSignUpPassword);
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

  reSend(){
    verifyCodeSignUpData.resendData(email!);
  }

}
