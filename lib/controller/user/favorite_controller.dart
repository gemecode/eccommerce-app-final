import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/constant/colors.dart';
import 'package:final_project/core/function/handlingdatacontroller.dart';
import 'package:final_project/core/serves/services.dart';
import 'package:final_project/data/datasource/remote/favorite_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController{


  FavoriteData favoriteData = FavoriteData(Get.find());
  MyServices myServices = Get.find();
  List data = [];
  late StatusRequest statusRequest;



  Map isFavorite = {};

  // key => id items
  // value => 1 or 0

  setFavorite(id , val){
    isFavorite[id] = val ;
    update() ;
  }


  addFavorite(String itemsid) async{
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.addFavorite(
        myServices.sharedPreferences.getInt("id")!.toString(), itemsid);
    print("============================== Controller $response ");
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] =="success"){
        Get.rawSnackbar(title: "205".tr, messageText: Text("206".tr,style: const TextStyle(color: AppColor.primaryColor)));
        // data.addAll(response['data']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }

  }


  removeFavorite(String itemsid) async{
    data.clear();
    statusRequest = StatusRequest.loading;
    var response = await favoriteData.removeFavorite(
        myServices.sharedPreferences.getInt("id")!.toString(), itemsid);
    print("============================== Controller $response ");
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest){
      if(response['status'] =="success"){
        Get.rawSnackbar(title: "205".tr, messageText: Text("207".tr, style: const TextStyle(color: AppColor.primaryColor)));
        // data.addAll(response['data']);
      }else{
        statusRequest = StatusRequest.failure;
      }
    }

  }
}