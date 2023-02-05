import 'package:final_project/core/class/crud.dart';
import 'package:final_project/linkapi.dart';

class ProductData{
  Crud crud;
  ProductData(this.crud);
  getData(String usersid) async{
    var response = await crud.postData(AppLink.productPage, {"usersid" : usersid});
    return response.fold((l) => l, (r) => r);
  }
}
