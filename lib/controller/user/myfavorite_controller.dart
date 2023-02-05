// ignore_for_file: unrelated_type_equality_checks
import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/core/serves/services.dart';
import 'package:final_project/data/datasource/remote/myfavorite_data.dart';
import 'package:final_project/data/model/myfavorite_model.dart';
import 'package:get/get.dart';

class MyFavoriteController extends GetxController{


  MyFavoriteData favoriteData = MyFavoriteData(Get.find());
  MyServices myServices = Get.find();
  List <MyFavoriteModel>data = [];
  late StatusRequest statusRequest;




  // key => id items
  // value => 1 or 0




  @override
  void onInit() {
    getData();
    super.onInit();
  }

  getData() async{
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.getData(
        myServices.sharedPreferences.getInt("id")!.toString());
    print("============================== Controller $response ");
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] =="success"){
        List responseData = response['data'];
        data.addAll(responseData.map((e) => MyFavoriteModel.fromJson(e)));
        print("============== data = $data");
      }else{
        statusRequest = StatusRequest.failure;
      }
    }

    update();

  }


  deleteFromFavorite(int favoriteid) {
    // data.clear();
    // statusRequest = StatusRequest.loading;
    var response = favoriteData.deleteData(favoriteid);
    data.removeWhere((element) => element.favoriteId == favoriteid);
    update();
  }






}