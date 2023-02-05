import 'package:final_project/core/class/crud.dart';
import 'package:final_project/linkapi.dart';

class SearchData{
  Crud crud;
  SearchData(this.crud);
  getData(String language, String word) async{
    var response = await crud.postData(AppLink.search, {"language" : language , "word" : word});
    return response.fold((l) => l, (r) => r);
  }
}


class ProductData{
  Crud crud;
  ProductData(this.crud);
  getData(String usersid) async{
    var response = await crud.postData(AppLink.productPage, {"usersid" : usersid});
    return response.fold((l) => l, (r) => r);
  }
}
