import 'package:final_project/core/class/crud.dart';
import 'package:final_project/linkapi.dart';

class DoneData{
  Crud crud;
  DoneData(this.crud);
  postData(String order_id , String done) async{
    var response = await crud.postData(AppLink.done, {
      "order_id" : order_id,
      "done" : done,
    });
    return response.fold((l) => l, (r) => r);
  }
}