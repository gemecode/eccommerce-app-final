import 'package:final_project/core/class/crud.dart';
import 'package:final_project/linkapi.dart';

class AddOrderData{
  Crud crud;
  AddOrderData(this.crud);
  postData(String userId , String itemId , String itemsName , String itemsNamAar, String itemsPrice, String itemsCount, String itemsDiscount) async{
    var response = await crud.postData(AppLink.orderAdd, {
      "usersid" : userId,
      "itemsid" : itemId,
      "itemsname" : itemsName,
      "itemsnamear" : itemsNamAar,
      "itemsprice" : itemsPrice,
      "itemscount" : itemsCount,
      "itemsDiscount" : itemsDiscount,
    });
    return response.fold((l) => l, (r) => r);
  }
}