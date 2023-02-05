import 'package:final_project/core/class/crud.dart';
import 'package:final_project/linkapi.dart';

class VerifyCodeForgetPasswordData{
  Crud crud;
  VerifyCodeForgetPasswordData(this.crud);
  postData(String email , String verifycode) async{
    var response = await crud.postData(AppLink.verifyCodeForgetPassword, {
      "email" : email,
      "verifycode" : verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}