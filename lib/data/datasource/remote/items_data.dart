import 'package:final_project/core/class/crud.dart';
import 'package:final_project/linkapi.dart';

class ItemsData{
  Crud crud;
  ItemsData(this.crud);
  getData(String id, String usersid) async{
    var response = await crud.postData(AppLink.itemsPage, {"id" : id.toString(), "usersid" : usersid});
    return response.fold((l) => l, (r) => r);
  }
}