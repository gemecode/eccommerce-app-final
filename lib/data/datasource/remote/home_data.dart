import 'package:final_project/core/class/crud.dart';
import 'package:final_project/linkapi.dart';

class HomeData{
  Crud crud;
  HomeData(this.crud);
  getData() async{
    var response = await crud.postData(AppLink.homePage, {});
    return response.fold((l) => l, (r) => r);
  }
}