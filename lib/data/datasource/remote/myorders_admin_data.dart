import 'package:final_project/core/class/crud.dart';
import 'package:final_project/linkapi.dart';

class AdminViewOrderData{
  Crud crud;
  AdminViewOrderData(this.crud);
  getData() async{
    var response = await crud.postData(AppLink.adminViewOrder, {});
    return response.fold((l) => l, (r) => r);
  }
}