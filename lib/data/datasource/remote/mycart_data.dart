import 'package:final_project/core/class/crud.dart';
import 'package:final_project/linkapi.dart';

class MyCartData{
  Crud crud;
  MyCartData(this.crud);

  getData(String id) async{
    var response = await crud.postData(AppLink.cartView, {"id" : id});
    return response.fold((l) => l, (r) => r);
  }

  deleteData(int id) async{
    var response = await crud.postData(AppLink.deleteFromCart, {"id" : id.toString()});
    return response.fold((l) => l, (r) => r);
  }

}