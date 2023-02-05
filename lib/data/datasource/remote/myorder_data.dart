import 'package:final_project/core/class/crud.dart';
import 'package:final_project/linkapi.dart';

class MyOrderData{
  Crud crud;
  MyOrderData(this.crud);
  getData(String usersid) async{
    var response = await crud.postData(AppLink.orderView, {"id" : usersid});
    return response.fold((l) => l, (r) => r);
  }
}
