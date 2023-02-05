import 'package:final_project/core/class/crud.dart';
import 'package:final_project/linkapi.dart';

class MyFavoriteData{
  Crud crud;
  MyFavoriteData(this.crud);

  getData(String id) async{
    var response = await crud.postData(AppLink.favoriteView, {"id" : id});
    return response.fold((l) => l, (r) => r);
  }

  deleteData(int id) async{
    var response = await crud.postData(AppLink.deleteFromFavorite, {"id" : id.toString()});
    return response.fold((l) => l, (r) => r);
  }

}