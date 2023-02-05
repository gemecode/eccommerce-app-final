import 'package:final_project/controller/auth/login_controller.dart';
import 'package:final_project/controller/auth/signup_controller.dart';
import 'package:final_project/view/screen/auth/signup_screen.dart';
import 'package:get/get.dart';

SignUpControllerImp control = Get.put(SignUpControllerImp());

validator(String val, int min, int max, String type, String compare){


  if(type == "username"){
    if(!GetUtils.isUsername(val)){
      return "230".tr;
    }
  }

  if(type == "email"){
    if(!GetUtils.isEmail(val)){
      return "231".tr;
    }
  }


  if(type == "phone"){
    if(!GetUtils.isPhoneNumber(val)){
      return "232".tr;
    }
  }






  if(type == "password"){
    if(val.isEmpty){
      return "233".tr;
    }

    if(val.length < min){
      return "${"234".tr}$min";
    }

    if(val.length > max){
      return "${"235".tr}$max";

    }

  }


  if(type == "confirmPassword"){

    if(val.isEmpty){
      return "236".tr;
    }

    if(val.length < min){
      return "${"237".tr}$min";
    }

    if(val.length > max){
      return "${"238".tr}$max";

    }

    if(val != compare){
      return "239".tr;
    }

  }






  //     (value){
  //   if(value!.isEmpty){
  //     return 'Confirm password is too short';
  //   }else if(controller.password.text != controller.confirmPassword.text){
  //     return 'not same password';
  //   }
  //   return null;
  // },

}