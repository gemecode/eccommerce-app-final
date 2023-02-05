import 'package:final_project/core/class/crud.dart';
import 'package:final_project/linkapi.dart';

class CustomerData{
  Crud crud;
  CustomerData(this.crud);

  getData(String id) async{
    var response = await crud.postData(AppLink.showCustomer, {"id" : id});
    return response.fold((l) => l, (r) => r);
  }

}