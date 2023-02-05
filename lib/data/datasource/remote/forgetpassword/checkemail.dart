import 'package:final_project/core/class/crud.dart';
import 'package:final_project/linkapi.dart';

class CheckEmailData{
  Crud crud;
  CheckEmailData(this.crud);
  postData(String email) async{
    var response = await crud.postData(AppLink.checkEmail, {
      "email" : email,
    });
    return response.fold((l) => l, (r) => r);
  }
}