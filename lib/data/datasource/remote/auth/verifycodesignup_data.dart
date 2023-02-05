import 'package:final_project/core/class/crud.dart';
import 'package:final_project/linkapi.dart';

class VerifyCodeSignUpData{
  Crud crud;
  VerifyCodeSignUpData(this.crud);

  postData(String email , String verifycode) async{
    var response = await crud.postData(AppLink.verifyCodeSignup, {
      "email" : email,
      "verifycode" : verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
  resendData(String email) async {
    var response = await crud.postData(AppLink.resend, {
      "email" : email,
    });
    return response.fold((l) => l, (r) => r);
  }
}