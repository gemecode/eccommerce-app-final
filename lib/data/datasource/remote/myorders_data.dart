import 'package:final_project/core/class/crud.dart';
import 'package:final_project/linkapi.dart';

class MyOrdersData{
  Crud crud;
  MyOrdersData(this.crud);
  getData(String usersid) async{
    var response = await crud.postData(AppLink.myOrder, {"id" : usersid});
    return response.fold((l) => l, (r) => r);
  }
}
