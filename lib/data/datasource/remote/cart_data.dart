import 'package:final_project/core/class/crud.dart';
import 'package:final_project/linkapi.dart';

class CartData{
  Crud crud;
  CartData(this.crud);

  addCart (String usersid, String itemsid) async{
    var response = await crud.postData(AppLink.cartAdd, {"usersid" : usersid, "itemsid" : itemsid});
    return response.fold((l) => l, (r) => r);
  }

  removeCart (String usersid, String itemsid) async{
    var response = await crud.postData(AppLink.cartRemove, {"usersid" : usersid, "itemsid" : itemsid});
    return response.fold((l) => l, (r) => r);
  }

}